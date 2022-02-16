  (***********************************************************
   The purpose of this program is to explore String Variables.
   A VCL form has been created to display the output and a
   number of popular String methods will be used.

   A number of String functions have been used such as:
   Length, Concat, IntToStr, UpperCase, LowerCase, Trim,
   Copy, Insert, Pos, Copy, Delete, and StringReplace
   **********************************************************)
unit StringVariables_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TfrmStringVariables = class(TForm)
    edtPhrase: TEdit;
    btnDisplayPangram: TButton;
    btnUpperCase: TButton;
    btnLowerCase: TButton;
    btnInsert: TButton;
    btnTrim: TButton;
    pnlLength: TPanel;
    btnStringReplace: TButton;
    btnCopy: TButton;
    pnlMessage: TPanel;
    pnlLengthHeader: TPanel;
    pnlMessageHeader: TPanel;
    btnDelete: TButton;
    MainMenu1: TMainMenu;
    mnuFile: TMenuItem;
    mnuEdit: TMenuItem;
    mnuFormat: TMenuItem;
    mnuDisplayPangram: TMenuItem;
    mnuCopy: TMenuItem;
    N1: TMenuItem;
    mnuInsert: TMenuItem;
    mnuReplace: TMenuItem;
    mnuDelete: TMenuItem;
    mnuUpperCase: TMenuItem;
    mnuLowerCase: TMenuItem;
    N2: TMenuItem;
    mnuTrim: TMenuItem;

    // Declare Button Procedures
    procedure btnDisplayPangramClick(Sender: TObject);
    procedure btnUpperCaseClick(Sender: TObject);
    procedure btnLowerCaseClick(Sender: TObject);
    procedure btnTrimClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnStringReplaceClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStringVariables: TfrmStringVariables;

  {* These are common variables that are used across all procedures
   The var scope has been widened for these to avoid repetition *}
  strPhrase : String;
  bteLetterCount : Byte;

  {* When referencing other forms, it's not advised to add the references
  in the uses section above as it can issues such as circular errors. It's
  advised to add these within implementation adding 'uses' and then the form
   reference as shown below *}
implementation

uses
   PangramsList_u;

{$R *.dfm}

  (****************************************************
   This procedure displays the default Pangram. We
   also introduce the Length and Concat String Methods
  *****************************************************)

procedure TfrmStringVariables.btnDisplayPangramClick(Sender: TObject);
const
  SPEED_OF_LIGHT = 299792458;

begin
  frmPangramsList.ShowModal; // The compiler won't continue until the user selects a pangram
  strPhrase := frmPangramsList.strSelectedPangram;
  edtPhrase.Text := strPhrase;
  strPhrase := edtPhrase.Text;
  bteLetterCount := Length(strPhrase);
  pnlLength.Caption := Concat('The phrase has ', IntToStr(bteLetterCount)
                                                           , ' letters');
  pnlMessage.Caption := Concat('Default phrase loaded in the speed of light ('
                                , IntToStr(SPEED_OF_LIGHT), ' m/s)');
end;

(****************************************************
   This procedure changes the display to all uppercase
   using the UpperCase String method.
  *****************************************************)
procedure TfrmStringVariables.btnUpperCaseClick(Sender: TObject);
begin
   strPhrase := edtPhrase.Text;
   edtPhrase.Text := UpperCase(strPhrase);
   bteLetterCount := Length(strPhrase);
   pnlLength.Caption := Concat('The phrase has ', IntToStr(bteLetterCount),
                                                               ' letters');
   pnlMessage.Caption := 'You formatted the text to UPPERCASE letters';
end;

  (****************************************************
   This procedure changes the display to all lowercase
   using the LowerCase String method.
  *****************************************************)
procedure TfrmStringVariables.btnLowerCaseClick(Sender: TObject);
begin
   strPhrase := edtPhrase.Text;
   edtPhrase.Text := LowerCase(strPhrase);
   //strPhrase := edtPhrase.Text;
   bteLetterCount := Length(strPhrase);
   pnlLength.Caption := Concat('The phrase has ', IntToStr(bteLetterCount)
                               , ' letters');
   pnlMessage.Caption := 'You formatted the text to LOWERCASE letters';
end;

(********************************************
   This procedure Trims the display using the
   Trime String method.
  *********************************************)
procedure TfrmStringVariables.btnTrimClick(Sender: TObject);
begin
     strPhrase := edtPhrase.Text;
     edtPhrase.Text := Trim(strPhrase);
     strPhrase := edtPhrase.Text;
     bteLetterCount := Length(strPhrase);
     pnlLength.Caption := Concat('The phrase has ', IntToStr(bteLetterCount),
                                                                 ' letters');
     pnlMessage.Caption := 'You removed/trimmed trailing and leading spaces';
end;

  (****************************************************
   This procedure copies a chosen word within the text
   display using the Copy String method. We also use
   Pos to generate the necessary paramters for the
   Copy method to work and use Input Box to recieve
   input from the user
  *****************************************************)
procedure TfrmStringVariables.btnCopyClick(Sender: TObject);
var
  strSelectedWord, strCopied : String;
  bteCopyStartPos, bteCopyLength : Byte;

begin
  strPhrase := edtPhrase.Text;
  bteLetterCount := Length(strPhrase);

  strSelectedWord := InputBox('Copy', 'Which word do you want to copy?', 'dog');

  // Copy needs positional paramters to work. The Pos method provides these
  bteCopyStartPos := Pos(strSelectedWord, strPhrase);
  bteCopyLength := Length(strSelectedWord);

  // Copy method takes the chosen phrase, starting index and length
  strCopied := Copy(strPhrase, bteCopyStartPos, bteCopyLength);
  pnlMessage.Caption := 'You copied ' + Concat('"', strCopied, '"');
end;

  (****************************************************
   This procedure inserts a word in the desired postion
  *****************************************************)
procedure TfrmStringVariables.btnInsertClick(Sender: TObject);
var
  strStringToInsert : String;
  btePositionToInsert : Byte;
begin
   strPhrase := edtPhrase.Text;
   btePositionToInsert := Pos('fox', strPhrase);
   strStringToInsert := InputBox('Insert', 'Insert a new word/phrase', '');

   // This procedure takes the out from Pos and InputBox to operate
   Insert(strStringToInsert + ' ', strPhrase, btePositionToInsert);

   edtPhrase.Text := strPhrase;
   bteLetterCount := Length(strPhrase);

   pnlLength.Caption := Concat('The phrase has ', IntToStr(bteLetterCount),
                               ' letters');
   pnlMessage.Caption := Concat('You inserted "', strStringToInsert, '"',
                                ' in position ', IntToStr(btePositionToInsert));
end;

 procedure TfrmStringVariables.btnStringReplaceClick(Sender: TObject);
 var
  strStringToAdd, strStringToReplace, strNewPhrase : String;
  btePositionToReplace : Byte;


  (****************************************************
   This procedure replaces a selected word/phrase with
   another word/phrase
  *****************************************************)
  begin
  strPhrase := edtPhrase.Text;
  strStringToReplace := InputBox('Remove', 'Which word/phrase do you want to replace?', '');
  strStringToAdd :=  InputBox('Add', 'Which word/phrase do you want to add?', '');

  strNewPhrase := StringReplace(strPhrase, strStringToReplace, strStringToAdd,
                  [rfReplaceAll, rfIgnoreCase]);

  strPhrase := strNewPhrase;
  edtPhrase.Text := strPhrase;

  bteLetterCount := Length(strPhrase);

  pnlLength.Caption := Concat('The phrase has ', IntToStr(bteLetterCount),
                       ' letters');
  pnlMessage.Caption := Concat('You replaced "', strStringToReplace,
                         '" with "', strStringToAdd, '"');

end;

   (****************************************************
   This procedure deletes a selected word/phrase.
   *****************************************************)
procedure TfrmStringVariables.btnDeleteClick(Sender: TObject);
var
  strDelete : String;
  bteDeleteLength, btePositionToDelete : Byte;

begin
  strPhrase := edtPhrase.Text;
  strDelete := InputBox('Delete', 'Which word do you want to delete?', '');

  btePositionToDelete := Pos(strDelete, strPhrase);
  bteDeleteLength := Length(strDelete);
  Delete(strPhrase, btePositionToDelete, bteDeleteLength);

  edtPhrase.Text := strPhrase;
  bteLetterCount := Length(strPhrase);

  pnlLength.Caption := Concat('The phrase has ', IntToStr(bteLetterCount),
                               ' letters');
  pnlMessage.Caption := Concat('You deleted "', strDelete, '"');

end;


end.






