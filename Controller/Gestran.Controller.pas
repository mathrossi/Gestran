unit Gestran.Controller;

interface

uses
  Gestran.Controller.Interfaces, Gestran.Model.Entity.Interfaces,
  Gestran.Model.Connection.Interfaces;

type
  TController = class(TInterfacedObject, iController)
    private
      FEntitys : iModelEntityFactory;
      FConnection : iModelConnectionFactory;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function Entitys : iModelEntityFactory;
      function Connect : iModelConnectionFactory;
      function Connected : Boolean;
      function Connection : iModelConnection;
      function TypeConnection : iModelConnectionFactory;
      //function GetDAO : iModelDAOFactory;
  end;

implementation

uses
  Gestran.Model.Entity.Factory, Gestran.Model.Connection.Factory;

{ TController }

function TController.Connect: iModelConnectionFactory;
begin
  FConnection := TModelConnectionFactory.New;
  Result := FConnection;
end;

function TController.Connection: iModelConnection;
begin
  Result := FConnection.Connection;
end;

function TController.Connected: Boolean;
begin
  Result := FConnection.Connected;
end;

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin
  inherited;
end;

function TController.Entitys: iModelEntityFactory;
begin
  Result := TModelEntityFactory.New;
end;

class function TController.New: iController;
begin
  Result := Self.Create;
end;

function TController.TypeConnection: iModelConnectionFactory;
begin
  Result := FConnection;
end;

end.
