// Application to explore conditionals within the application we have used
// all of the most common conditionals that are used within applications

unit WeatherReporter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmWeatherReporter = class(TForm)
    cboMode: TComboBox;
    cboColour: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    btnPredict: TButton;
    pnlWeather: TPanel;
    tmrFlashing: TTimer;
    procedure btnPredictClick(Sender: TObject);
    procedure tmrFlashingTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWeatherReporter: TfrmWeatherReporter;

implementation

{$R *.dfm}

procedure TfrmWeatherReporter.btnPredictClick(Sender: TObject);
var
   strSignal : String;
begin
   strSignal := cboMode.Text + ' ' + cboColour.Text;
   tmrFlashing.Enabled := false;
   if (strSignal = 'Steady Blue') then
   begin
      pnlWeather.Caption := strSignal + ' - Clear View';
      pnlWeather.Font.Color := clBlue;
      pnlWeather.Color := clWhite;
   end
   else
   if (strSignal = 'Flashing Blue') then
   begin
     pnlWeather.Caption := strSignal + ' - Clouds Due';
     pnlWeather.Font.Color := clWhite;
     pnlWeather.Color := clBlue;
     tmrFlashing.Enabled := true;
   end
   else
   if (strSignal = 'Steady Red') then
   begin
     pnlWeather.Caption := strSignal + ' - Rain Ahead';
     pnlWeather.Font.Color := clRed;
     pnlWeather.Color := clWhite;
   end
   else
   if (strSignal = 'Flashing Red') then
   begin
     pnlWeather.Caption := strSignal + ' - Snow Instead';
     pnlWeather.Font.Color := clWhite;
     pnlWeather.Color := clRed;
     tmrFlashing.Enabled := true;
   end
   else
   begin
     pnlWeather.Caption := 'Broken Light';
     pnlWeather.Color := clYellow;
     pnlWeather.Font.Color := clBlack;
     tmrFlashing.Enabled := true;
   end;


end;

procedure TfrmWeatherReporter.tmrFlashingTimer(Sender: TObject);
var
  clBackColour, clFontColour : TColor;
begin
  with pnlWeather do
  begin
     clBackColour := Color;
     clFontColour := Font.Color;

     Color := clFontColour;
     Font.Color := clBackColour;
  end;

end;

end.
