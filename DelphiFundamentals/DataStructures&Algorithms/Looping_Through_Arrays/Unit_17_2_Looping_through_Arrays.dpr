program Unit_17_2_Looping_through_Arrays;

uses
  Vcl.Forms,
  Exploring_Arrays in 'Exploring_Arrays.pas' {frmIntroToArrays};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmIntroToArrays, frmIntroToArrays);
  Application.Run;
end.
