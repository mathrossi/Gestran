unit Gestran.Model.Connection.Firedac.Query;

interface

uses
  Gestran.Model.Connection.Interfaces, Firedac.Stan.Intf, Firedac.Stan.Option,
  Firedac.Stan.Param, Firedac.Stan.Error, Firedac.DatS, Firedac.Phys.Intf,
  Firedac.DApt.Intf, Firedac.Stan.Async, Firedac.DApt, Data.DB,
  Firedac.Comp.DataSet, Firedac.Comp.Client;

type
  TModelConnectionFiredacQuery = class(TInterfacedObject, iModelQuery)
  private
    FQuery: TFDQuery;
    FConnection: iModelConnection;
    FFieldCalculated: TField;
  public
    constructor Create(aValue: iModelConnection);
    destructor Destroy; override;
    class function New(aValue: iModelConnection): iModelQuery;
    function Query: TFDQuery;
    function Open(aTable, aSQL: string): iModelQuery;
    function ExecSQL(aSQL: String): iModelQuery;
    function RecordCount: Integer;
    function ApplyUpdates: Integer;
    function CommitUpdates: iModelQuery;
    function Close : iModelQuery;
    function CloneQuery : TFDQuery;
  end;

implementation

uses
  System.SysUtils;

{ TModelConnectionFiredacQuery }

function TModelConnectionFiredacQuery.ApplyUpdates: Integer;
begin
  Result := FQuery.ApplyUpdates;
end;

function TModelConnectionFiredacQuery.CloneQuery: TFDQuery;
begin
  Result := FQuery;
end;

function TModelConnectionFiredacQuery.Close: iModelQuery;
begin
  FQuery.SQL.Clear;
  FQuery.Close;
end;

function TModelConnectionFiredacQuery.CommitUpdates: iModelQuery;
begin
  Result := Self;
  FQuery.CommitUpdates;
  FQuery.Transaction.Commit;
end;

constructor TModelConnectionFiredacQuery.Create(aValue: iModelConnection);
begin
  FConnection := aValue;
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := TFDConnection(FConnection.Connection);
  FQuery.CachedUpdates := False;
  FQuery.UpdateOptions.CountUpdatedRecords := False;
end;

destructor TModelConnectionFiredacQuery.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

function TModelConnectionFiredacQuery.ExecSQL(aSQL: String): iModelQuery;
begin
  Result := Self;
  FQuery.SQL.Clear;
  FQuery.SQL.Add(aSQL);
  FQuery.ExecSQL;
  FConnection.Commit;
end;

class function TModelConnectionFiredacQuery.New(aValue: iModelConnection): iModelQuery;
begin
  Result := Self.Create(aValue);
end;

function TModelConnectionFiredacQuery.Open(aTable, aSQL: string): iModelQuery;
begin
  Result := Self;
  FConnection.StartTransaction;
  FQuery.Open(aSQL);
end;

function TModelConnectionFiredacQuery.Query: TFDQuery;
begin
  Result := FQuery;
end;

function TModelConnectionFiredacQuery.RecordCount: Integer;
begin
  Result := FQuery.RecordCount;
end;

end.
