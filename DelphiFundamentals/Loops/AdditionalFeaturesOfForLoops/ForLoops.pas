unit ForLoops;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TfrmForLoops = class(TForm)
    pnlVowels: TPanel;
    btnVowels: TButton;
    edtPangram: TEdit;
    pnlVowelCount: TPanel;
    pnlEvenNumbers: TPanel;
    btnEvenNumbers: TButton;
    pnlStop: TPanel;
    btnStop: TButton;
    sedStop: TSpinEdit;
    procedure btnVowelsClick(Sender: TObject);
    procedure btnEvenNumbersClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmForLoops: TfrmForLoops;

implementation

{$R *.dfm}

procedure TfrmForLoops.btnEvenNumbersClick(Sender: TObject);
var
   intEvenNumbers : Integer;
begin
   intEvenNumbers := 0;

   for intEvenNumbers := 1 to 10 do
   begin
     if intEvenNumbers mod 2 > 0 then Continue;

     pnlEvenNumbers.Caption := pnlEvenNumbers.Caption + IntToStr(intEvenNumbers) + ' ';
   end;

end;

procedure TfrmForLoops.btnStopClick(Sender: TObject);
var
   intLoopCount, intStop : Integer;
begin
   intLoopCount := 0;
   intStop := sedStop.Value;

   for intLoopCount := 1 to 1000 do
   begin
     if intLoopCount = intStop then Break;

     pnlStop.Caption := 'Looped ' + IntToStr(intLoopCount) + ' times.'
   end;

end;

procedure TfrmForLoops.btnVowelsClick(Sender: TObject);
var
   strPangram : String;
   chrVowel : Char;
   intVowelCount : Integer;

begin
   strPangram := edtPangram.Text;
   intVowelCount := 0;
   pnlVowels.Caption := '';

   for chrVowel in strPangram do
   begin
     if chrVowel in ['a', 'e', 'i', 'o', 'u'] then
     begin
       Inc(intVowelCount);
       pnlVowels.Caption := pnlVowels.Caption + chrVowel;
     end;
   end;

   pnlVowelCount.Caption := IntToStr(intVowelCount) + ' Vowels found';

end;

end.
