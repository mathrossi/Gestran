unit Gestran.Model.Connection.Firedac.Query;

interface

uses
  Gestran.Model.Connection.Interfaces, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TModelConnectionFiredacQuery = class(TInterfacedObject, iModelQuery)
    private
      FQuery : TFDQuery;
      FConnection : iModelConnection;
      FFieldCalculated : TField;
    public
      constructor Create(aValue : iModelConnection);
      destructor Destroy; override;
      class function New(aValue : iModelConnection) : iModelQuery;
      function Query : TObject;
      function Open(aTable, aSQL : string) : iModelQuery;
      function ExecSQL(aSQL : String) : iModelQuery;
      function RecordCount : Integer;
      function ApplyUpdates : integer;
      function CommitUpdates : iModelQuery;
  end;

implementation

uses
  System.SysUtils;

{ TModelConnectionFiredacQuery }

function TModelConnectionFiredacQuery.ApplyUpdates: integer;
begin
  Result := FQuery.ApplyUpdates;
end;

function TModelConnectionFiredacQuery.CommitUpdates: iModelQuery;
begin
  Result := Self;
  FQuery.CommitUpdates;
end;

constructor TModelConnectionFiredacQuery.Create(aValue : iModelConnection);
begin
  FConnection := aValue;
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := TFDConnection(FConnection.Connection);
  FQuery.CachedUpdates := False;
  FQuery.UpdateOptions.CountUpdatedRecords := False;
  FQuery.UpdateOptions.RefreshMode := rmAll;
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

class function TModelConnectionFiredacQuery.New(aValue : iModelConnection) : iModelQuery;
begin
  Result := Self.Create(aValue);
end;

function TModelConnectionFiredacQuery.Open(aTable, aSQL : string) : iModelQuery;
begin
  Result := Self;
  FConnection.StartTransaction;
  FQuery.Open(aSQL);
end;

function TModelConnectionFiredacQuery.Query: TObject;
begin
  Result := FQuery;
end;

function TModelConnectionFiredacQuery.RecordCount : Integer;
begin
  Result := FQuery.RecordCount;
end;

end.
