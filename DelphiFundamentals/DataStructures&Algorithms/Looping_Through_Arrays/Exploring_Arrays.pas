unit Exploring_Arrays;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TfrmIntroToArrays = class(TForm)
    sedMonthNumber: TSpinEdit;
    lblPrompt: TLabel;
    pnlMonthName: TPanel;
    lstAllMonths: TListBox;
    lstHuntingMonths: TListBox;
    btnAllMonths: TButton;
    btnHuntingSeason: TButton;
    procedure sedMonthNumberChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAllMonthsClick(Sender: TObject);
    procedure btnHuntingSeasonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIntroToArrays: TfrmIntroToArrays;

implementation

{$R *.dfm}

const
   arrMonths : Array[1..12] of String = ('January', 'February', 'March', 'April',
                                         'May', 'June', 'July', 'August', 'September',
                                         'October', 'November', 'December');



procedure TfrmIntroToArrays.btnAllMonthsClick(Sender: TObject);
var
   intMonthNumber : Integer;
begin
   lstAllMonths.Clear;

   for intMonthNumber := 1 to 12 do
   begin
     lstAllMonths.Items.Add(arrMonths[intMonthNumber]);
   end;
end;

procedure TfrmIntroToArrays.btnHuntingSeasonClick(Sender: TObject);
var
   strHuntingMonth : String;
begin
   lstHuntingMonths.Clear;

   for strHuntingMonth in arrMonths do
   begin
      if not strHuntingMonth.Contains('r') then
      begin
        lstHuntingMonths.Items.Add(strHuntingMonth);
      end;

   end;
end;

procedure TfrmIntroToArrays.FormCreate(Sender: TObject);
begin
   sedMonthNumber.Value := 1;
end;

procedure TfrmIntroToArrays.sedMonthNumberChange(Sender: TObject);
var
   intMonthNumber : Integer;
begin

   intMonthNumber := sedMonthNumber.Value;

   pnlMonthName.Caption := arrMonths[intMonthNumber];
end;

end.
