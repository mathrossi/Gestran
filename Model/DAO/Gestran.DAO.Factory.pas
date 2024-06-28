unit Gestran.DAO.Factory;

interface

uses
  Gestran.DAO.Interfaces;

type
  TDAOFactory = class(TInterfacedObject, iDAOFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDAOFactory;
      function GetDAO : iDAO;
  end;

implementation

uses
  Gestran.DAO, Gestran.Model.Connection.Interfaces;

{ TDAOFactory }

constructor TDAOFactory.Create;
begin

end;

destructor TDAOFactory.Destroy;
begin
  inherited;
end;

class function TDAOFactory.New: iDAOFactory;
begin
  Result := Self.Create;
end;

function TDAOFactory.GetDAO: iDAO;
begin
  Result := TDAO<iModelQuery>.New;
end;

end.
