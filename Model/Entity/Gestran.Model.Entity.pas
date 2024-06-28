unit Gestran.Model.Entity;

interface

uses
  Gestran.Model.Entity.Interfaces, Data.DB, Gestran.Model.Connection.Interfaces,
  Gestran.DAO.Interfaces, System.Classes, System.Generics.Collections,
  FireDAC.Comp.Client;

type
  TModelEntity = class(TInterfacedObject, iModelEntity)
  private
    FQuery: iModelQuery;
    FDAO: iDAO;
  public
    constructor Create(aTipoConnection: iModelConnectionFactory; aConnection: iModelConnection);
    destructor Destroy; override;
    class function New(aTipoConnection: iModelConnectionFactory; aConnection: iModelConnection): iModelEntity;
    function DataSet(aValue: TDataSource): iModelEntity;
    function Open(aTable: String; aFiltros: TDictionary<String, String>): iModelEntity;
    function ExecSQL(aTable: String; aTypeCRUD: TTypeCRUD; aFiltros: TDictionary<String, String>): iModelEntity;
    function RecordCount: Integer;
    function ApplyUpdates: Integer;
    function CommitUpdates: iModelEntity;
    function Close: iModelQuery;
    function CloneQuery: TFDQuery;
  end;

implementation

uses
  Gestran.Model.Connection.Factory, Gestran.DAO, Gestran.Model.Connection.Firedac.Query;

{ TModelEntity }

function TModelEntity.Open(aTable: String; aFiltros: TDictionary<String, String>): iModelEntity;
begin
  Result := Self;
  FDAO.Open(FQuery, aTable, aFiltros);
end;

function TModelEntity.RecordCount: Integer;
begin
  Result := FQuery.RecordCount;
end;

function TModelEntity.ApplyUpdates: Integer;
begin
  Result := FQuery.ApplyUpdates;
end;

function TModelEntity.CloneQuery: TFDQuery;
begin
  Result := FQuery.Query;
end;

function TModelEntity.Close: iModelQuery;
begin
  FQuery.Close;
end;

function TModelEntity.CommitUpdates: iModelEntity;
begin
  Result := Self;
  FQuery.CommitUpdates;
end;

constructor TModelEntity.Create(aTipoConnection: iModelConnectionFactory; aConnection: iModelConnection);
begin
  case aTipoConnection.TypeConnection of
    tpFiredac:
      FQuery := TModelConnectionFiredacQuery.New(aConnection);
  end;

  FDAO := TDAO<iModelQuery>.New;
end;

function TModelEntity.DataSet(aValue: TDataSource): iModelEntity;
begin
  Result := Self;
  aValue.DataSet := TDataSet(FQuery.Query);
end;

destructor TModelEntity.Destroy;
begin

  inherited;
end;

function TModelEntity.ExecSQL(aTable: String; aTypeCRUD: TTypeCRUD; aFiltros: TDictionary<String, String>)
  : iModelEntity;
begin
  Result := Self;
  FDAO.ExecSQL(FQuery, aTable, aTypeCRUD, aFiltros);
end;

class function TModelEntity.New(aTipoConnection: iModelConnectionFactory; aConnection: iModelConnection): iModelEntity;
begin
  Result := Self.Create(aTipoConnection, aConnection);
end;

end.
