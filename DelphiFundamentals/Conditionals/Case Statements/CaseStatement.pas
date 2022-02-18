unit CaseStatement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmCaseStatement = class(TForm)
    edtCharacter: TEdit;
    pnlDescription: TPanel;
    btnShowDescription: TButton;
    procedure edtCharacterChange(Sender: TObject);
    procedure btnShowDescriptionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaseStatement: TfrmCaseStatement;

implementation

{$R *.dfm}



procedure TfrmCaseStatement.btnShowDescriptionClick(Sender: TObject);
var
   chrCharacter : Char;
   strDescription : String;
   bteNum : Byte;
begin
   chrCharacter := UpCase(edtCharacter.Text[1]);
   {
   if chrCharacter IN ['A'..'z'] then
   begin
     //Code for alphabetical characters
     if chrCharacter IN ['A', 'E', 'I', 'O', 'U'] then
     begin
       strDescription := 'Vowel';
     end
     else
     begin
       strDescription := 'Consonant';
     end;
   end
   else if chrCharacter IN ['0'..'9'] then
   begin
     bteNum := StrToInt(edtCharacter.Text);
     if bteNum mod 2 = 0 then
     begin
       strDescription := 'Even number';
     end
     else
     begin
       strDescription := 'Odd number'
     end;
   end
   else
   begin
     //Code for anything else
     strDescription := 'Not an alpha-numeric character';
   end;
   }

   //Replace above If-statement with a Case-statement
   case chrCharacter of
      'A'..'z' : begin
                   case chrCharacter of
                      'A', 'E', 'I', 'O', 'U' : strDescription := 'Vowel';
                   else
                      strDescription := 'Consonant';
                   end;
                 end;
      '0'..'9' : begin
                   bteNum := StrToInt(edtCharacter.Text);
                   if bteNum mod 2 = 0 then
                      strDescription := 'Even number'
                   else
                      strDescription := 'Odd number';
                 end;
   else strDescription := 'Not an alphanumeric character';

   end;

   pnlDescription.Caption := strDescription;
end;

procedure TfrmCaseStatement.edtCharacterChange(Sender: TObject);
var
   blnNotBlankText : Boolean;
begin
   blnNotBlankText := Not(edtCharacter.Text = '');
   btnShowDescription.Enabled := blnNotBlankText;
end;

end.
