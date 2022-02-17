program ExploringIntegers_p;

uses
  Vcl.Forms,
  IntegerVariables_u in 'IntegerVariables_u.pas' {frmExploringIntegers};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExploringIntegers, frmExploringIntegers);
  Application.Run;
end.
