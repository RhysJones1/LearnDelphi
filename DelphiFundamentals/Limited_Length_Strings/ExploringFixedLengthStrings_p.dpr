program ExploringFixedLengthStrings_p;

uses
  Vcl.Forms,
  FixedLengthStrings_u in 'FixedLengthStrings_u.pas' {frmFixedLengthStrings};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmFixedLengthStrings, frmFixedLengthStrings);
  Application.Run;
end.
