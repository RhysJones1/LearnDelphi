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
    // procedure <procedure name> (parameters);
    // Step 1: Declare your procedures
    procedure DisplayHeading;
    procedure DisplayHeading2(sTitle : string );
    procedure LoadTextFile( sTextFileName : string ) ;

    //CTRL + Shift + C
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
// Step 2 write the code.
procedure TForm1.Button2Click(Sender: TObject);
var sHeading : string;
begin
sHeading := Inputbox('Heading', 'Enter your heading:', '');
DisplayHeading2(sHeading);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
DisplayHeading2('Data from Textfile');

LoadTextFile('Data.txt');
end;

procedure TForm1.DisplayHeading;
begin
Memo1.Clear;
Memo1.Lines.Add('Details of Program');
Memo1.Lines.Add('=============') ;
end;

procedure TForm1.DisplayHeading2(sTitle: string);
begin
memo1.Clear;
memo1.Lines.Add(sTitle);
memo1.Lines.Add('==========');
end;

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
