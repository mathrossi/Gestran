unit Gestran.Controller.Interfaces;

interface

uses
  Gestran.Model.Entity.Interfaces, Gestran.Model.Connection.Interfaces;

type

  iController = interface
    ['{D77ECDEC-673B-4F53-B74B-90A34600D5DA}']
    function Entitys : iModelEntityFactory;
    function Connect(aDataBase, aServer, aUserName, aPassword : String) :
    iModelConnectionFactory;
    function Connected : Boolean;
    function Connection : iModelConnection;
    function TypeConnection : iModelConnectionFactory;
  end;

implementation

end.
