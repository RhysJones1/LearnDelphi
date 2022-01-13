unit Arrays1;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    GroupBox1: TGroupBox;
    StrArrayBtn: TButton;
    ConstStrArrayBtn: TButton;
    OneLineBtn: TButton;
    AllLinesBtn: TButton;
    procedure StrArrayBtnClick(Sender: TObject);
    procedure ConstStrArrayBtnClick(Sender: TObject);
    procedure OneLineBtnClick(Sender: TObject);
    procedure AllLinesBtnClick(Sender: TObject);
  private
    function LowCase(c: char): char;
    { Private declarations }
  public
    { Public declarations }
    function ChangeCase( s : string ) : string;
  end;

CONST
   MY_CAPTION = 'Pascal is Great!';
   MY_OTHER_CAPTION = 'But I''d rather a case of Champagne!';

var
  Form1: TForm1;

implementation

{$R *.DFM}

function TForm1.LowCase( c : char ) : char;
{ Object Pascal has no LowCase() function to match its UpCase() function.
  This is my version. It takes a char as an argument and, if it is an
  uppercase character, it adds 32 to its ASCII value to change it to a
  lowercase character }  
begin
  if (c >= 'A') and (c <= 'Z') then
     c := Chr(Ord(c) + 32);
  LowCase := c;
end;

function TForm1.ChangeCase( s : string ) : string;
var
   i : integer;
begin
   for i := 1 to Length( s ) do
      if (s[i] >= 'a') and ( s[i] <= 'z') then
         s[i] := UpCase( s[i] )
      else s[i] := LowCase( s[i] );
   ChangeCase := s;
end;


procedure TForm1.StrArrayBtnClick(Sender: TObject);
var
   sarray : array[1..4] of string;
   i : integer;
begin
   sarray[1] := 'One';
   sarray[2] := 'Two';
   sarray[3] := 'Three';
   sarray[4] := 'Four';
   for i := 1 to 4 do
       Memo2.Lines.Add(sarray[i]);
   Caption := MY_CAPTION;
end;

procedure TForm1.ConstStrArrayBtnClick(Sender: TObject);
const
  InitArray : Array[1..4] of string = ('Un', 'Deux', 'Trois', 'Quatre');
var
   i : integer;
begin
   for i := Low(InitArray) to High(InitArray) do
       Memo2.Lines.Add( InitArray[i] );
   Caption := MY_OTHER_CAPTION;
end;



procedure TForm1.OneLineBtnClick(Sender: TObject);
var
   s : string;
begin
   s := Memo1.Lines[0];  { note we can use array-style indexing }
   s := ChangeCase( s );
   Memo2.Lines.Add( s );
end;

procedure TForm1.AllLinesBtnClick(Sender: TObject);
var
   i : integer;
begin
   for i := 0 to Memo1.Lines.Count - 1 do
       Memo2.Lines.Add( ChangeCase( Memo1.Lines[i] ) );
end;

end.
