program Unit_14_5;

uses
  Vcl.Forms,
  AgeCategories in 'AgeCategories.pas' {frmAgeCategories};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAgeCategories, frmAgeCategories);
  Application.Run;
end.
