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
  with pnlWeather do
  begin
    strSignal := cboMode.Text + ' ' + cboColour.Text;
    tmrFlashing.Enabled := false;
   if (strSignal = 'Steady Blue') then
   begin
    Caption := strSignal + ' - Clear View';
    Font.Color := clBlue;
    Color := clWhite;
   end
   else
   if (strSignal = 'Flashing Blue') then
   begin
     Caption := strSignal + ' - Clouds Due';
     Font.Color := clWhite;
     Color := clBlue;
     tmrFlashing.Enabled := true;
   end
   else
   if (strSignal = 'Steady Red') then
   begin
     Caption := strSignal + ' - Rain Ahead';
     Font.Color := clRed;
     Color := clWhite;
   end
   else
   if (strSignal = 'Flashing Red') then
   begin
     Caption := strSignal + ' - Snow Instead';
     Font.Color := clWhite;
     Color := clRed;
     tmrFlashing.Enabled := true;
   end
   else
   begin
     Caption := 'Broken Light';
     Color := clYellow;
     Font.Color := clBlack;
     Enabled := true;
   end;
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
