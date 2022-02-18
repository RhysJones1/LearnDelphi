program Unit_16_5;

uses
  Vcl.Forms,
  NestedForLoops in 'NestedForLoops.pas' {frmNestedForLoops};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmNestedForLoops, frmNestedForLoops);
  Application.Run;
end.
