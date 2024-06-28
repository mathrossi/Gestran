unit DM.Report;

interface

uses
  frxCross, Data.DB, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF, frxRich, frxDesgn, frxTableObject,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Classes, frxDCtrl,
  FireDAC.Stan.Async, FireDAC.DApt, Gestran.Model.Entity.Interfaces,
  Gestran.Controller.Interfaces, System.Generics.Collections;

type
  TDMReport = class(TDataModule)
    frxReport: TfrxReport;
    frxReportTableObject: TfrxReportTableObject;
    frxDesigner: TfrxDesigner;
    frxRichObject: TfrxRichObject;
    frxPDFExport: TfrxPDFExport;
    frxCrossObject: TfrxCrossObject;
    frxDialogControls1: TfrxDialogControls;
    frxDBVendas: TfrxDBDataset;
    frxDBVendedores: TfrxDBDataset;
    FDQVendas: TFDQuery;
    FDQVendedores: TFDQuery;
    DSVendedores: TDataSource;
    FDMVendasTotal: TFDMemTable;
    frxDBVendasTotal: TfrxDBDataset;
    FDQVendasTotal: TFDQuery;
  private
    FController: iController;
    FQVendedoresComissao: iModelEntity;
    FTotalDesconto: Double;
    FTotalVendas: Double;
    FTotalComissao: Double;
    procedure ConsultarVendasTotal(aDataInicial, aDataFinal: String);
    procedure PopularVendasTotal;
    procedure CriarDataSetVendasTotal;
  public
    property Controller: iController read FController write FController;
    procedure Imprimir(aFiltrosAplicados, aDataInicial, aDataFinal: String; aQVendas: iModelEntity; aQVendasResumo: iModelEntity);
  end;

var
  DMReport: TDMReport;

implementation

uses
  Winapi.Windows, System.SysUtils;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMReport }

procedure TDMReport.ConsultarVendasTotal(aDataInicial, aDataFinal: String);
begin
  if not Assigned(FQVendedoresComissao) then
    FQVendedoresComissao := FController.Entitys.QuerySQL(FController.TypeConnection, FController.Connection)
  else
    FQVendedoresComissao.Close;

  var condicao: String := 'IdVenda > 0';
  if StrToDateDef(aDataInicial, StrToDate('30/12/1899')) <> StrToDate('30/12/1899') then
    condicao := condicao + ' and Data >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(aDataInicial)));
  if StrToDateDef(aDataFinal, StrToDate('30/12/1899')) <> StrToDate('30/12/1899') then
    condicao := condicao + ' and Data <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(aDataFinal)));

  var filters := TDictionary<String, String>.Create;
  try
    CriarDataSetVendasTotal;
    filters.Clear;
    filters.Add('condicao', condicao);
    filters.Add('groupBy', 'Vendedor');
    var select: String := 'Vendedor, sum(ValorDesconto) as ValorDescontos, sum(ValorTotal) as ValorVendas,';
    for var I := 1 to 3 do
    begin
      if I = 1 then
      begin
        filters.Add('colSelect', select + ' sum((ValorTotal * 0.10) * 1.2) as ValorComissao, ''Comissão de 10% + 20% de bonificação'' PercentComissao');
        filters.Add('orderBy', 'ValorVendas desc OFFSET 0 ROWS FETCH NEXT 1 rows only');
      end;
      if I = 2 then
      begin
        filters.Add('colSelect', select + ' sum(ValorTotal * 0.10) as ValorComissao, ''Comissão de 10%'' PercentComissao');
        filters.Add('orderBy', 'ValorVendas desc OFFSET 1 ROWS FETCH NEXT 1 rows only');
      end;
      if I = 3 then
      begin
        filters.Add('colSelect', select + ' sum(ValorTotal * 0.05) as ValorComissao, ''Comissão de 5%'' PercentComissao');
        filters.Add('orderBy', 'ValorVendas desc OFFSET 2 ROWS FETCH NEXT 1 rows only');
      end;
      FDQVendasTotal := FQVendedoresComissao.Open('dbo.Vendas', filters).CloneQuery;
      PopularVendasTotal;
      FQVendedoresComissao.Close;
      filters.Remove('colSelect');
      filters.Remove('orderBy');
    end;
  finally
    FreeAndNil(filters);
  end;
end;

procedure TDMReport.CriarDataSetVendasTotal;
begin
  FDMVendasTotal.Close;
  FDMVendasTotal.FieldDefs.Clear;
  FDMVendasTotal.FieldDefs.Add('Vendedor', ftString, 50);
  FDMVendasTotal.FieldDefs.Add('ValorDescontos', ftString, 50);
  FDMVendasTotal.FieldDefs.Add('ValorVendas', ftString, 50);
  FDMVendasTotal.FieldDefs.Add('ValorComissao', ftString, 50);
  FDMVendasTotal.FieldDefs.Add('PercentComissao', ftString, 50);
  FDMVendasTotal.CreateDataSet;
  FDMVendasTotal.Open;
end;

procedure TDMReport.Imprimir(aFiltrosAplicados, aDataInicial, aDataFinal: String; aQVendas: iModelEntity; aQVendasResumo: iModelEntity);
begin
  FTotalDesconto := 0;
  FTotalVendas := 0;
  FTotalComissao := 0;

  FDQVendas.Connection := FController.Connection.Connection as TFDConnection;
  FDQVendedores.Connection := FController.Connection.Connection as TFDConnection;

  FDQVendas.Open(aQVendas.CloneQuery.SQL.Text);
  FDQVendedores.Open(aQVendasResumo.CloneQuery.SQL.Text);

  ConsultarVendasTotal(aDataInicial, aDataFinal);

  frxReport.LoadFromStream(TResourceStream.Create(HInstance, 'ReportVendas', RT_RCDATA));
  TfrxPictureView(frxReport.FindComponent('ImgLogo')).Picture
    .LoadFromFile(GetCurrentDir + PathDelim + 'Images' + PathDelim + 'LogoGestran.png');

  TfrxMemoView(frxReport.FindComponent('ValorTotalDescontos')).Memo.Add( FloatToStrF(FTotalDesconto, ffCurrency, 15,2) );
  TfrxMemoView(frxReport.FindComponent('ValorTotalVendas')).Memo.Add( FloatToStrF(FTotalVendas, ffCurrency, 15,2) );
  TfrxMemoView(frxReport.FindComponent('ValorTotalComissoes')).Memo.Add( FloatToStrF(FTotalComissao, ffCurrency, 15,2) );
  TfrxMemoView(frxReport.FindComponent('Filtros')).Memo.Add(aFiltrosAplicados);

  frxPDFExport.FileName := GetCurrentDir + PathDelim + 'Reports' + PathDelim + 'Vendas.pdf';
  frxReport.PrepareReport();
  frxPDFExport.ShowDialog := False;
  frxReport.Export(frxPDFExport);
//  frxReport.ShowReport();
end;

procedure TDMReport.PopularVendasTotal;
begin
  FDMVendasTotal.Append;
  FDMVendasTotal.FieldByName('Vendedor').AsString := FDQVendasTotal.FieldByName('Vendedor').AsString;
  FDMVendasTotal.FieldByName('ValorDescontos').AsString := FloatToStrF(FDQVendasTotal.FieldByName('ValorDescontos').AsFloat, ffCurrency, 15,2);
  FDMVendasTotal.FieldByName('ValorVendas').AsString := FloatToStrF(FDQVendasTotal.FieldByName('ValorVendas').AsFloat, ffCurrency, 15,2);
  FDMVendasTotal.FieldByName('ValorComissao').AsString := FloatToStrF(FDQVendasTotal.FieldByName('ValorComissao').AsFloat, ffCurrency, 15,2);
  FDMVendasTotal.FieldByName('PercentComissao').AsString := FDQVendasTotal.FieldByName('PercentComissao').AsString;
  FDMVendasTotal.Post;

  if FDQVendedores.Locate('Vendedor', FDQVendasTotal.FieldByName('Vendedor').AsString, []) then
  begin
    FTotalDesconto := FTotalDesconto + FDQVendasTotal.FieldByName('ValorDescontos').AsFloat;
    FTotalVendas := FTotalVendas + FDQVendasTotal.FieldByName('ValorVendas').AsFloat;
    FTotalComissao := FTotalComissao + FDQVendasTotal.FieldByName('ValorComissao').AsFloat;
  end;
end;

end.
