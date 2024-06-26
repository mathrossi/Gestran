unit Gestran.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Gestran.Controller.Interfaces, System.Generics.Collections,
  Gestran.Model.Entity.Interfaces;

type
  TPrincipalForm = class(TForm)
    pnlFiltros: TPanel;
    pnlVendas: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    FController: iController;
    Filters : TDictionary<String , String>;
    FQuery : iModelEntity;
  public
    { Public declarations }
  end;

var
  PrincipalForm: TPrincipalForm;

implementation

uses
  Gestran.Controller;

{$R *.dfm}

procedure TPrincipalForm.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  FController.Connect('Gestran', 'CERTISAFE-SP-01\SQLEXPRESS', 'CERTISAFE-SP-01\Matheus', '');

  Filters := TDictionary<string, string>.Create;

  FQuery := FController.Entitys
            .QuerySQL(FController.TypeConnection, FController.Connection);
end;

end.
