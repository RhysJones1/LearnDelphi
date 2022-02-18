program Unit_17_4_Exploring_2D_Arrays;

uses
  Vcl.Forms,
  InterCityDistances in 'InterCityDistances.pas' {frmInterCityDistances};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmInterCityDistances, frmInterCityDistances);
  Application.Run;
end.
