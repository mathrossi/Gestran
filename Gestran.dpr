program Gestran;

{$R *.dres}

uses
  Vcl.Forms,
  Gestran.View.Principal in 'View\Gestran.View.Principal.pas' {PrincipalForm},
  Gestran.Controller.Interfaces in 'Controller\Gestran.Controller.Interfaces.pas',
  Gestran.Controller in 'Controller\Gestran.Controller.pas',
  Gestran.Controller.Utils in 'Controller\Gestran.Controller.Utils.pas',
  Gestran.Model.Connection.Factory in 'Model\Connection\Gestran.Model.Connection.Factory.pas',
  Gestran.Model.Connection.Firedac.Connection in 'Model\Connection\Gestran.Model.Connection.Firedac.Connection.pas',
  Gestran.Model.Connection.Firedac.Query in 'Model\Connection\Gestran.Model.Connection.Firedac.Query.pas',
  Gestran.Model.Connection.Interfaces in 'Model\Connection\Gestran.Model.Connection.Interfaces.pas',
  Gestran.DAO.Interfaces in 'Model\DAO\Gestran.DAO.Interfaces.pas',
  Gestran.DAO in 'Model\DAO\Gestran.DAO.pas',
  Gestran.Model.Entity.Factory in 'Model\Entity\Gestran.Model.Entity.Factory.pas',
  Gestran.Model.Entity.Interfaces in 'Model\Entity\Gestran.Model.Entity.Interfaces.pas',
  Gestran.Model.Entity in 'Model\Entity\Gestran.Model.Entity.pas',
  Gestran.DAO.Factory in 'Model\DAO\Gestran.DAO.Factory.pas',
  DM.Report in 'DM\DM.Report.pas' {DMReport: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipalForm, PrincipalForm);
  Application.CreateForm(TDMReport, DMReport);
  Application.Run;
end.
