  (********************************************
   The following program explores strings further
   and demonstrates how to retrieve a character
   from a string. The I/O is processed using
   a VCL Form
   *******************************************)

unit CharFromString_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TfrmCharFromString = class(TForm)
    sedCharPosition: TSpinEdit;
    lblCharPosition: TLabel;
    edtInput: TEdit;
    pnlOutput: TPanel;
    lblTypeAWord: TLabel;
    procedure sedCharPositionChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCharFromString: TfrmCharFromString;

implementation

{$R *.dfm}

    {* Procedure to retrieve the character from a string *}

procedure TfrmCharFromString.sedCharPositionChange(Sender: TObject);
var
  strSentence : String;
  btePosition : Byte;
  chrLetter : Char;
begin
  // Input
  strSentence := edtInput.Text;
  btePosition := sedCharPosition.Value;

  // Processing
  chrLetter := strSentence[btePosition];

  // Output
  pnlOutput.Caption := 'You retrieved the letter ' + #39 + chrLetter + #39;

end;

end.
