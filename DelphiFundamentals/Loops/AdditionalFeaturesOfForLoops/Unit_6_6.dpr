program Unit_6_6;

uses
  Vcl.Forms,
  ForLoops in 'ForLoops.pas' {frmForLoops};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmForLoops, frmForLoops);
  Application.Run;
end.
