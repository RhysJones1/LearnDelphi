unit InterCityDistances;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmInterCityDistances = class(TForm)
    lblNewYork: TLabel;
    lblLondon: TLabel;
    lblSydney: TLabel;
    lblTokyo: TLabel;
    pnlCities: TPanel;
    pnlDistance: TPanel;
    sedDeparture: TSpinEdit;
    sedDestination: TSpinEdit;
    lblFrom: TLabel;
    lblTo: TLabel;
    btnShowDistance: TButton;
    btnShowDistances: TButton;
    lstDistanceTable: TListBox;
    procedure btnShowDistanceClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnShowDistancesClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInterCityDistances: TfrmInterCityDistances;

implementation

{$R *.dfm}
var
   arrDistances : Array[1..4, 1..4] of Integer;


procedure TfrmInterCityDistances.btnShowDistanceClick(Sender: TObject);
var
   bteFrom, bteTo : Byte;

begin
   bteFrom := sedDeparture.Value;
   bteTo := sedDestination.Value;

   pnlDistance.Caption := 'Distance: ' + IntToStr(arrDistances[bteFrom, bteTo]);

end;

procedure TfrmInterCityDistances.btnShowDistancesClick(Sender: TObject);
var
   arrCityNames : Array[1..4] of String;
   bteRow, bteColumn : Byte;
begin
   arrCityNames[1] := 'NYC';
   arrCityNames[2] := 'LON';
   arrCityNames[3] := 'SYD';
   arrCityNames[4] := 'TOK';

   for bteRow := 1 to 4 do
   begin
     for bteColumn := 1 to 4 do
     begin
         lstDistanceTable.Items.Add(arrCityNames[bteRow] + ' to ' + arrCityNames[bteColumn]
                                    + ' = ' + IntToStr(arrDistances[bteRow, bteColumn])
                                    + ' kilometers');
     end;
   end;
end;

procedure TfrmInterCityDistances.FormCreate(Sender: TObject);
begin
   arrDistances[1, 1] := 0;
   arrDistances[1, 2] := 5570;
   arrDistances[1, 3] := 16200;
   arrDistances[1, 4] := 10880;
   arrDistances[2, 1] := 5570;
   arrDistances[2, 2] := 0;
   arrDistances[2, 3] := 17020;
   arrDistances[2, 4] := 9600;
   arrDistances[3, 1] := 16200;
   arrDistances[3, 2] := 17020;
   arrDistances[3, 3] := 0;
   arrDistances[3, 4] := 7821;
   arrDistances[4, 1] := 10880;
   arrDistances[4, 2] := 9600;
   arrDistances[4, 3] := 7821;
   arrDistances[4, 4] := 0;

end;

end.
