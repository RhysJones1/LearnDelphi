program ExploringFloatingPointNumbers_p;

uses
  Vcl.Forms,
  FloatingPointVariables_u in 'FloatingPointVariables_u.pas' {frmExploringIntegers};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExploringIntegers, frmExploringIntegers);
  Application.Run;
end.
