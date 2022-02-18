program Unit_14_7;

uses
  Vcl.Forms,
  RugbyChampionships in 'RugbyChampionships.pas' {frmRugbyChamps};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRugbyChamps, frmRugbyChamps);
  Application.Run;
end.
