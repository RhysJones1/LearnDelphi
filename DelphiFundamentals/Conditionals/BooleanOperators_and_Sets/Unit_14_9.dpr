program Unit_14_9;

uses
  Vcl.Forms,
  ExploringSets in 'ExploringSets.pas' {frmExploringSets};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExploringSets, frmExploringSets);
  Application.Run;
end.
