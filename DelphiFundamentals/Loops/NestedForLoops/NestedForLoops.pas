unit NestedForLoops;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmNestedForLoops = class(TForm)
    btnNumbers: TButton;
    btnAlphabet: TButton;
    lblResult: TLabel;
    procedure btnNumbersClick(Sender: TObject);
    procedure btnAlphabetClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNestedForLoops: TfrmNestedForLoops;

implementation

{$R *.dfm}


procedure TfrmNestedForLoops.btnAlphabetClick(Sender: TObject);
var
   intColumns, intRows : Integer;
   chrLetter : Char;
begin
   lblResult.Caption := '';
   chrLetter := 'A';

   for intRows := 1 to 5 do
   begin
      for intColumns := 1 to 5 do
      begin
         lblResult.Caption := lblResult.Caption + chrLetter + #9;
         Inc(chrLetter);
      end;
      lblResult.Caption := lblResult.Caption + #13;
   end;

end;

procedure TfrmNestedForLoops.btnNumbersClick(Sender: TObject);
var
   intColumns, intRows, intNumber : Integer;
begin
   lblResult.Caption := '';
   intNumber := 0;

   for intRows := 1 to 5 do
   begin
      for intColumns := 1 to 5 do
      begin
         Inc(intNumber);
         lblResult.Caption := lblResult.Caption + intToStr(intNumber) + #9;
      end;
      lblResult.Caption := lblResult.Caption + #13
   end;
end;

end.
