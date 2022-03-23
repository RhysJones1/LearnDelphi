program PADA_PropertyAlert;

uses
  Vcl.Forms,
  UFrmMain in 'C:\Users\HQ209RJ\OneDrive - HM Land Registry\Desktop\PADA Property Alert\forms and controllers\UFrmMain.pas' {FrmMain},
  Vcl.Themes,
  Vcl.Styles,
  UDBConPADAPropAlert in 'C:\Users\HQ209RJ\OneDrive - HM Land Registry\Desktop\PADA Property Alert\database objects\UDBConPADAPropAlert.pas' {DBConPADAPropAlert: TDataModule},
  UDBPADAPropAlert in 'C:\Users\HQ209RJ\OneDrive - HM Land Registry\Desktop\PADA Property Alert\database objects\UDBPADAPropAlert.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDBConPADAPropAlert, DBConPADAPropAlert);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
