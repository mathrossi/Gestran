unit Gestran.Model.Connection.Firedac.Connection;

interface

uses
  Gestran.Model.Connection.Interfaces, Data.DB, Firedac.Stan.Intf, Firedac.Stan.Consts,
  Firedac.Phys.ODBCBase, Firedac.Phys.MSSQL, Firedac.UI.Intf, Firedac.VCLUI.Wait, Firedac.Comp.UI,
  Firedac.Stan.Option, Firedac.Stan.Error, Firedac.Phys.Intf, Firedac.Stan.Def, Firedac.Stan.Pool,
  Firedac.Stan.Async, Firedac.Phys, Firedac.Stan.Param, Firedac.DApt, Firedac.Comp.DataSet,
  Firedac.Comp.Client;

type
  TModelConnectionFiredacConnection = class(TInterfacedObject, iModelConnection)
  private
    FConnection: TFDConnection;
    FMSSQLDriverLink: TFDPhysMSSQLDriverLink;
    FDManager: TFDManager;
    procedure ConfigDB;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelConnection;
    function Connection: TObject;
    function Connected: Boolean;
    function Commit: iModelConnection;
    function CommitRetaining: iModelConnection;
    function Rollback: iModelConnection;
    function StartTransaction: iModelConnection;
    function Connect(aValue: Boolean): iModelConnection;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs, IniFiles, System.Classes, Vcl.Forms;

{ TModelConnectionFiredacConnection }

constructor TModelConnectionFiredacConnection.Create;
begin
  ConfigDB;
  FMSSQLDriverLink := TFDPhysMSSQLDriverLink.Create(nil);
  FConnection := TFDConnection.Create(nil);
  FConnection.ConnectionDefName := 'Gestran';
  FConnection.TxOptions.AutoStart := True;
  FConnection.TxOptions.Isolation := xiReadCommitted;
  FConnection.TxOptions.AutoCommit := True;
  FConnection.UpdateOptions.RefreshMode := rmAll;
  FConnection.FetchOptions.Mode := fmAll;
  FConnection.ResourceOptions.SilentMode := True;
  FConnection.LoginPrompt := False;
  try
    FConnection.Connected := true;
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

destructor TModelConnectionFiredacConnection.Destroy;
begin
  FreeAndNil(FConnection);
  inherited;
end;

class function TModelConnectionFiredacConnection.New : iModelConnection;
begin
  Result := Self.Create;
end;

function TModelConnectionFiredacConnection.Rollback: iModelConnection;
begin
  Result := Self;
  FConnection.Rollback;
end;

function TModelConnectionFiredacConnection.StartTransaction: iModelConnection;
begin
  Result := Self;
  FConnection.StartTransaction;
end;

function TModelConnectionFiredacConnection.Commit: iModelConnection;
begin
  Result := Self;
  FConnection.Commit;
end;

function TModelConnectionFiredacConnection.CommitRetaining: iModelConnection;
begin
  Result := Self;
  FConnection.CommitRetaining;;
end;

procedure TModelConnectionFiredacConnection.ConfigDB;
var
  Params: TStrings;
  ParamsEmpresa: TStrings;
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  FDManager := TFDManager.Create(nil);
  try
    Params := TStringList.Create;
    Params.AddPair('DriverID', 'MSSQL');
    Params.AddPair('Server', IniFile.ReadString('Config', 'Server', ''));
    Params.AddPair('OSAuthent', 'Yes');
    Params.AddPair('Encrypt', 'No');
    Params.AddPair('LoginPrompt', 'No');
    Params.AddPair('ApplicationName', 'Gestran');
    Params.AddPair('Database', IniFile.ReadString('Config', 'DataBaseName', ''));
    Params.AddPair('User_Name', IniFile.ReadString('Config', 'UserName', ''));
    Params.AddPair('Port', IniFile.ReadString('Config', 'Port', '1433'));
    FDManager.AddConnectionDef('Gestran', 'MSSQL', Params);
    FDManager.Active := true;
  finally
    IniFile.Free;
  end;
end;

function TModelConnectionFiredacConnection.Connect(aValue: Boolean): iModelConnection;
begin
  Result := Self;
  FConnection.Connected := aValue;
end;

function TModelConnectionFiredacConnection.Connected: Boolean;
begin
  Result := FConnection.Connected;
end;

function TModelConnectionFiredacConnection.Connection: TObject;
begin
  Result := FConnection;
end;

end.
