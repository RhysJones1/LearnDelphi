  {* The purpose of this program is to explore characters
  by creating an ASCII Calculator *}

unit ASCIICharacters_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TfrmASCIICharacters = class(TForm)
    pnlOutputs: TPanel;
    sbrKeyInfo: TStatusBar;
    lblCharacter: TLabel;
    lblASCIIValue: TLabel;
    redInput: TRichEdit;
    lblASCIICodeHeader: TLabel;
    sedASCIICode: TSpinEdit;
    pnlOutput: TPanel;
    lblCharacter1: TLabel;
    lblASCIIValue1: TLabel;
    btnShowMore: TButton;
    lblASCIIHeader: TLabel;

    // Procedure declarations
    procedure redInputKeyPress(Sender: TObject; var Key: Char);
    procedure btnShowMoreClick(Sender: TObject);
    procedure sedASCIICodeChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmASCIICharacters: TfrmASCIICharacters;

implementation

{$R *.dfm}
var
   bteASCIICode : Byte;
   chrCharacter : Char;

   // Procedure to convert Characters to ASCII
procedure TfrmASCIICharacters.redInputKeyPress(Sender: TObject; var Key: Char);
var
   chrKeyPressed : Char;
begin
    //Input
    chrKeyPressed := Key;

    //Processing
    bteASCIICode := Ord(Key);


    //Output
    lblCharacter.Caption := chrKeyPressed;
    lblASCIIValue.Caption := 'ASCII: ' + IntToStr(bteASCIICode);
    sbrKeyInfo.Panels[0].Text := 'You pressed the ' + #34 + chrKeyPressed + #34
                                                                      + ' key';
end;

  // Procedure to convert ASCII to Characters
procedure TfrmASCIICharacters.sedASCIICodeChange(Sender: TObject);
begin
   //Input
   bteASCIICode := sedASCIICode.Value;

   //Processing
   chrCharacter := Chr(bteASCIICode);

   //Output
   lblCharacter1.Caption := chrCharacter;
   lblASCIIValue1.Caption := 'ASCII: ' + IntToStr(bteASCIICode);
end;

  // Procedure which displays an additional message showing more information
  // on the ASCII Number
procedure TfrmASCIICharacters.btnShowMoreClick(Sender: TObject);

begin
  ShowMessage('More information about: ' + #34 + chrCharacter + #34 //Line 1
               + #13 //Line 2 (blank)
               + #13 + 'ASCII: ' + IntToStr(bteASCIICode) //Line 3
               + #13 + 'Shortcut: ALT+' + IntToStr(bteASCIICode));

end;

end.
