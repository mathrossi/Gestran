unit Gestran.Model.Connection.Interfaces;

interface

uses
  Data.DB;

type
  TTypeConnection = (tpFiredac, tpRestDW);

  iModelConnection = interface
    ['{3BD2B14B-E3EA-4E75-8110-FA6EB9800D5A}']
    function Connection : TObject;
    function Connected : Boolean;
    function Commit : iModelConnection;
    function Connect(aValue: boolean) : iModelConnection;
    function CommitRetaining : iModelConnection;
    function Rollback : iModelConnection;
    function StartTransaction : iModelConnection;
  end;

  iModelQuery = interface
    ['{8DD288AE-FF43-4C0E-858E-44132CD9D4D6}']
    function Query : TObject;
    function Open(aTable, aSQL : String) : iModelQuery;
    function ExecSQL(aSQL : String) : iModelQuery;
    function RecordCount : Integer;
    function ApplyUpdates : integer;
    function CommitUpdates : iModelQuery;
  end;

  iModelConnectionFactory = interface
    ['{95D24189-75AC-4ECA-AA27-85770C69BB0F}']
    function Connected : Boolean;
    function Query : iModelQuery;
    function TypeConnection : TTypeConnection;
    function Connection : iModelConnection;
  end;

implementation

end.
