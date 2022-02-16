unit Test1;
{ illustrates two ways of loading a text file:                                 }
{  1) using standard Pascal procedures and Readln                              }
{  2) using built-in Delphi/Free Pascal methods and LoadFromFile                           }
{                                                                              }
{ LoadFromFile is simpler to use and faster to load                            }
{ Readln (or Read), however, gives the programmer more control                 }
 
interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    FileReadlnBtn: TButton;
    LoadFromFileBtn: TButton;
    SaveToFileBtn: TButton;
    procedure FileReadlnBtnClick(Sender: TObject);
    procedure LoadFromFileBtnClick(Sender: TObject);
    procedure SaveToFileBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FileReadlnBtnClick(Sender: TObject);
{ Traditional Pascal text file reading }
var
   inputFile : TextFile;
   line      : string;
begin
  Memo1.Lines.Clear;
  if not FileExists( 'Test1.pas' ) then     { Check that input file exists }
     ShowMessage('File: Test1.pas not found!')
  else
  begin
   AssignFile(inputFile, 'Test1.pas');
   Reset(inputFile);
   while not Eof(inputFile) do
   begin
     Readln(inputFile, line);
     Memo1.Lines.Add(line);
   end;
   CloseFile(inputFile);
  end
end;

procedure TForm1.LoadFromFileBtnClick(Sender: TObject);
{  LoadFromFile file reading method }
begin
   Memo1.Lines.Clear;
   if not FileExists( 'Test1.pas' ) then     { Check that input file exists }
      ShowMessage('File: Test1.pas not found!')
   else
    Memo1.Lines.LoadFromFile('Test1.pas');
end;

procedure TForm1.SaveToFileBtnClick(Sender: TObject);
begin
  Memo1.Lines.SaveToFile('NewFile.txt');
end;

end.
