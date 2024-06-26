unit Gestran.Model.Connection.Factory;

interface

uses
  Gestran.Model.Connection.Interfaces;

type
  TModelConnectionFactory = class(TInterfacedObject, iModelConnectionFactory)
    private
      FTypeConnection : TTypeConnection;
      FConnection : iModelConnection;
      procedure TesteConnection;
    public
      constructor Create(aDataBase, aServer, aUserName, aPassword : String);
      destructor Destroy; override;
      class function New(aDataBase, aServer, aUserName, aPassword : String) : iModelConnectionFactory;
      function Connected : Boolean;
      function Query : iModelQuery;
      function TypeConnection : TTypeConnection;
      function Connection : iModelConnection;
  end;

implementation

uses
  Gestran.Model.Connection.Firedac.Query, Gestran.Model.Connection.Firedac.Connection,
  System.SysUtils;

{ TModelConnectionFactory }

function TModelConnectionFactory.Connection: iModelConnection;
begin
  Result := FConnection;
end;

function TModelConnectionFactory.Connected: Boolean;
begin
  Result := FConnection.Connected;
end;

constructor TModelConnectionFactory.Create(aDataBase, aServer, aUserName, aPassword : String);
begin
  FTypeConnection := tpFiredac;
  FConnection := TModelConnectionFiredacConnection.New(aDataBase, aServer, aUserName, aPassword);
end;

destructor TModelConnectionFactory.Destroy;
begin

  inherited;
end;

class function TModelConnectionFactory.New(aDataBase, aServer, aUserName, aPassword : String) : iModelConnectionFactory;
begin
  Result := Self.Create(aDataBase, aServer, aUserName, aPassword);
end;

function TModelConnectionFactory.Query: iModelQuery;
begin
  //TesteConnection;
  case FTypeConnection of
    tpFiredac: Result := TModelConnectionFiredacQuery.New(FConnection);
  end;
end;

procedure TModelConnectionFactory.TesteConnection;
var
  vConnection : iModelConnection;
begin
//  try
//    case FTypeConnection of
//      tpFiredac: vConnection := TModelConnectionFiredacConnection.New;
//      tpRestDW: vConnection := TModelRestDWConnection.New;
//    end;
//  except
//    case TypeConnection of
//      tpFiredac: TypeConnection := tpRestDW;
//      tpRestDW: TypeConnection := tpFiredac;
//    end;
//  end;
end;

function TModelConnectionFactory.TypeConnection: TTypeConnection;
begin
  Result := FTypeConnection;
end;

end.
