{The following program contains procedures using the VCL forms and importing text files}

unit Procedures;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;


type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    // Procedure Template: procedure <procedure name> (parameters);
    // Step 1: Declare your procedures
    procedure DisplayHeading; // Displays the default header in the memo
    procedure DisplayHeading2(sTitle : string ); // Displays a customer header in memo
    procedure LoadTextFile( sTextFileName : string ); // Imports a text file and displays in the memo
    // Tip: To take you to the location to write your code, hit CTRL + Shift + C
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
DisplayHeading ;
end;

procedure TForm1.Button2Click(Sender: TObject);
var sHeading : string;
begin
sHeading := Inputbox('Heading', 'Enter your heading:', '');
DisplayHeading2(sHeading);
end;

procedure TForm1.Button3Click(Sender: TObject); // Bug to work on: When user enters empty file path or hits cancel I/O Error message shown. Tried an If statement but did not work
var sFilePath : string;
begin
sFilepath:= Inputbox('File Path', 'Please enter your file path:', '');
DisplayHeading2('Data from Textfile');
LoadTextFile(sFilepath);
      //Trying to resolve 'I/O Error 6'
if sFilepath = '' then
  showmessage('Please enter a filepath');

end;

// Step 2: Write your procedure code
// Procedure 1: Display generic heading in memo
procedure TForm1.DisplayHeading;
begin
Memo1.Clear;
Memo1.Lines.Add('Details of Program');
Memo1.Lines.Add('=============') ;
end;

// Procedure 2: Display customer heading in memo
procedure TForm1.DisplayHeading2(sTitle: string);
begin
memo1.Clear;
memo1.Lines.Add(sTitle);
memo1.Lines.Add('==========');
end;

// Procedure 3: Import a text file and display within memo
procedure TForm1.LoadTextFile(sTextFileName: string);
var F : TextFile;
  sLine : string;
begin
AssignFile(F, sTextFileName ) ;
Reset(F);
while not EOF(F) do
  begin
    readln(F, sLine);
    Memo1.Lines.Add(sLine);

  end;
CloseFile(F);


end;

end.
