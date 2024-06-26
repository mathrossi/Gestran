unit Gestran.Model.Entity.Factory;

interface

uses
  Gestran.Model.Entity.Interfaces, Gestran.Model.Connection.Interfaces;

type
  TModelEntityFactory = class(TInterfacedObject, iModelEntityFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelEntityFactory;
      function QuerySQL(aTipoConnection : iModelConnectionFactory; aConnection : iModelConnection) : iModelEntity;
  end;

implementation

uses
  Gestran.Model.Entity;

{ TModelEntityFactory }

constructor TModelEntityFactory.Create;
begin

end;

destructor TModelEntityFactory.Destroy;
begin
  inherited;
end;

class function TModelEntityFactory.New: iModelEntityFactory;
begin
  Result := Self.Create;
end;

function TModelEntityFactory.QuerySQL(aTipoConnection: iModelConnectionFactory;
  aConnection: iModelConnection): iModelEntity;
begin
  Result := TModelEntity.New(aTipoConnection, aConnection);
end;

end.
