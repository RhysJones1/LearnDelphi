unit Textio;
{ Sample program to illustrate text file IO.                          }
{ It opens one file for reading, another for writing and copies the   }
{ contents, one char at a time, between the files.                    }
{ Just to add to the fun, it also 'encrypts' the text en route.       }
{ The encryption is *very* simple. So don't bother trying to sell     }
{ this program to the CIA!                                            }

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    EncryptBtn: TButton;
    DecryptBtn: TButton;
    procedure EncryptBtnClick(Sender: TObject);
    procedure DecryptBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
   MAGICNUM = 17; { this is an arbitrary 'encryption factor' }

var
  Form1: TForm1;
const
  INFILENAME = 'TextIO.pas';
  OUTFILENAME = 'Encrypt.txt';
  DECRYPTFILENAME = 'Decrypt.txt';

implementation

{$R *.DFM}

procedure TForm1.DecryptBtnClick(Sender: TObject);
var
   infile,
   outfile     : TextFile;
 //  ch          : char;
   ch          : AnsiChar;
begin
  if not FileExists( OUTFILENAME ) then     { Check that input file exists }
      ShowMessage('File: ' + OUTFILENAME + ' not found!')
  else
  begin
    AssignFile(infile, OUTFILENAME);
    Reset(infile);
    AssignFile(outfile, DECRYPTFILENAME);
    Rewrite(outfile);
    while not Eof(infile) do
    begin
      Read(infile,ch);
   //   Write(outfile, Chr(Ord(ch)-MAGICNUM));
      Write(outfile, AnsiChar(Ord(ch)-MAGICNUM));
    end;
    CloseFile(outfile);
    CloseFile(infile);
  end;
end;

procedure TForm1.EncryptBtnClick(Sender: TObject);
var
   infile,
   outfile     : TextFile;
 //  ch          : char;
   ch          : AnsiChar;
begin
  if not FileExists( INFILENAME ) then     { Check that input file exists }
      ShowMessage('File: ' + INFILENAME + ' not found!')
  else
  begin
    AssignFile(infile, INFILENAME);
    Reset(infile);
    AssignFile(outfile, OUTFILENAME);
    Rewrite(outfile);
    while not Eof(infile) do
    begin
      Read(infile, ch);
 //     Write(outfile, Chr(Ord(ch)+MAGICNUM));
      Write(outfile, AnsiChar(Ord(ch)+MAGICNUM));
    end;
    CloseFile(outfile);
    CloseFile(infile);
  end;
end;



end.
