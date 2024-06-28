unit Gestran.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Gestran.Controller.Interfaces, System.Generics.Collections,
  Gestran.Model.Entity.Interfaces, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TPrincipalForm = class(TForm)
    pnlFiltros: TPanel;
    pnlVendas: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    mskDataInicial: TMaskEdit;
    mskDataFinal: TMaskEdit;
    Label120: TLabel;
    DSVendas: TDataSource;
    DBGrid1: TDBGrid;
    DSVendedores: TDataSource;
    cbVendedores: TComboBox;
    spSair: TSpeedButton;
    spImprimirPDF: TSpeedButton;
    spBuscar: TSpeedButton;
    pnlVendasResumo: TPanel;
    DSVendasResumo: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure dtpDataInicialCloseUp(Sender: TObject);
    procedure dtpDataFinalCloseUp(Sender: TObject);
    procedure spSairClick(Sender: TObject);
    procedure spBuscarClick(Sender: TObject);
    procedure spImprimirPDFClick(Sender: TObject);
  private
    FController: iController;
    Filters : TDictionary<String , String>;
    FQVendas : iModelEntity;
    FQVendasResumo : iModelEntity;
    FQVendedores : iModelEntity;
    procedure ConsultarVendas;
    procedure ConsultarVendedor;
    procedure FormatarCampos;
  public
    property Controller: iController read FController;
  end;

var
  PrincipalForm: TPrincipalForm;

implementation

uses
  Gestran.Controller, DM.Report;

{$R *.dfm}

procedure TPrincipalForm.ConsultarVendas;
var
  condicao: String;
begin
  if not Assigned(FQVendas) then
    FQVendas := FController.Entitys.QuerySQL(FController.TypeConnection, FController.Connection)
  else
    FQVendas.Close;

  if not Assigned(FQVendasResumo) then
    FQVendasResumo := FController.Entitys.QuerySQL(FController.TypeConnection, FController.Connection)
  else
    FQVendasResumo.Close;

  condicao := 'IdVenda > 0';
  if StrToDateDef(mskDataInicial.Text, StrToDate('30/12/1899')) <> StrToDate('30/12/1899') then
    condicao := condicao + ' and Data >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(mskDataInicial.Text)));
  if StrToDateDef(mskDataFinal.Text, StrToDate('30/12/1899')) <> StrToDate('30/12/1899') then
    condicao := condicao + ' and Data <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(mskDataFinal.Text)));

  if (cbVendedores.Text <> EmptyStr) and (cbVendedores.Text <> 'Todos') then
    condicao := condicao + ' and Vendedor = ' + QuotedStr(cbVendedores.Text);

  Filters.Clear;
  Filters.Add('colSelect', '*');
  Filters.Add('condicao', condicao);
  Filters.Add('groupBy', '');
  Filters.Add('orderBy', 'Data');
  FQVendas.DataSet(DSVendas).Open('dbo.Vendas', Filters);

  Filters.Clear;
  Filters.Add('colSelect', 'Vendedor, sum(ValorDesconto) as ValorTotalDescontos,'+
              ' sum(ValorTotal) as ValorTotalVendas');
  Filters.Add('condicao', condicao);
  Filters.Add('groupBy', 'Vendedor');
  Filters.Add('orderBy', 'ValorTotalVendas');
  FQVendasResumo.DataSet(DSVendasResumo).Open('dbo.Vendas', Filters);

  FormatarCampos;
end;

procedure TPrincipalForm.ConsultarVendedor;
begin
  if not Assigned(FQVendedores) then
    FQVendedores := FController.Entitys.QuerySQL(FController.TypeConnection, FController.Connection);

  Filters.Clear;
  Filters.Add('colSelect', 'Vendedor');
  Filters.Add('groupBy', 'Vendedor');
  Filters.Add('orderBy', 'Vendedor');

  FQVendedores.DataSet(DSVendedores).Open('dbo.Vendas', Filters);

  cbVendedores.AddItem('Todos', nil);
  DSVendedores.DataSet.First;
  while not DSVendedores.DataSet.Eof do
  begin
    cbVendedores.AddItem(DSVendedores.DataSet.FieldByName('Vendedor').AsString, nil);
    DSVendedores.DataSet.Next;
  end;
  cbVendedores.ItemIndex := 0;
end;

procedure TPrincipalForm.dtpDataFinalCloseUp(Sender: TObject);
begin
  mskDataFinal.Text := DateToStr(dtpDataFinal.Date);
  mskDataFinal.SetFocus;
end;

procedure TPrincipalForm.dtpDataInicialCloseUp(Sender: TObject);
begin
  mskDataInicial.Text := DateToStr(dtpDataInicial.Date);
  mskDataInicial.SetFocus;
end;

procedure TPrincipalForm.FormatarCampos;
begin
  TFloatField(DSVendas.DataSet.FieldByName('ValorSubTotal')).currency := True;
  TFloatField(DSVendas.DataSet.FieldByName('ValorDesconto')).currency := True;
  TFloatField(DSVendas.DataSet.FieldByName('ValorTotal')).currency := True;

  TFloatField(DSVendasResumo.DataSet.FieldByName('ValorTotalVendas')).currency := True;
  TFloatField(DSVendasResumo.DataSet.FieldByName('ValorTotalDescontos')).currency := True;

  DBGrid1.Columns[0].Title.Caption := 'Id Venda';
  DBGrid1.Columns[3].Title.Caption := 'Valor Sub-Total';
  DBGrid1.Columns[4].Title.Caption := 'Valor Desconto';
  DBGrid1.Columns[5].Title.Caption := 'Valor Total';
  DBGrid1.Columns[3].Width := 100;
  DBGrid1.Columns[4].Width := 100;
  DBGrid1.Columns[5].Width := 100;

  DBGrid2.Columns[1].Title.Caption := 'Valor Total Descontos';
  DBGrid2.Columns[2].Title.Caption := 'Valor Total Vendas';
  DBGrid2.Columns[1].Width := 150;
  DBGrid2.Columns[2].Width := 150;
end;

procedure TPrincipalForm.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  FController.Connect;
  Filters := TDictionary<string, string>.Create;
  dtpDataInicial.Date := Date;
  dtpDataFinal.Date := Date;
  mskDataInicial.Text := DateToStr(Date);
  mskDataFinal.Text := DateToStr(Date);
  ConsultarVendedor;
  ConsultarVendas;
end;

procedure TPrincipalForm.spBuscarClick(Sender: TObject);
begin
  ConsultarVendas;
end;

procedure TPrincipalForm.spImprimirPDFClick(Sender: TObject);
begin
  DMReport.Controller := FController;
  var filtrosAplicados: String;
  if mskDataInicial.Text <> EmptyStr then
    filtrosAplicados := filtrosAplicados + '  Data inicial: ' + mskDataInicial.Text;
  if mskDataFinal.Text <> EmptyStr then
    filtrosAplicados := filtrosAplicados + '  Data final: ' + mskDataFinal.Text;
  if cbVendedores.Text <> EmptyStr then
    filtrosAplicados := filtrosAplicados + '  Vendedor: ' + cbVendedores.Text;

  DMReport.Imprimir(filtrosAplicados, mskDataInicial.Text, mskDataFinal.Text, FQVendas, FQVendasResumo);
end;

procedure TPrincipalForm.spSairClick(Sender: TObject);
begin
  Close;
end;

end.
