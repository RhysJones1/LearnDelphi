program ExploringFormUnit_p;

uses
  Vcl.Forms,
  frmExploringFormUnit_u in 'frmExploringFormUnit_u.pas' {frmExploringFormUnit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExploringFormUnit, frmExploringFormUnit);
  Application.Run;
end.
