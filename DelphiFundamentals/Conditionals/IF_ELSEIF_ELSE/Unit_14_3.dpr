program Unit_14_3;

uses
  Vcl.Forms,
  WeatherReporter in 'WeatherReporter.pas' {frmWeatherReporter};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmWeatherReporter, frmWeatherReporter);
  Application.Run;
end.
