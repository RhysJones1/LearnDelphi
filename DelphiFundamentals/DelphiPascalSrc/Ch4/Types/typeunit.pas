unit Typeunit;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ResultLbl: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Showall( s:string; c:char; d:double; i:integer; s2:string );
    function BoolStr : string;
  end;

var
  Form1: TForm1;
  globalBoolean : boolean;

implementation

{$R *.DFM}

procedure TForm1.Showall( s:string; c:char; d:double; i:integer; s2:string );
var
  resultStr : string;
begin
  resultStr :=  'String: ' + s +
               ', Char: ' + c +
               ', Double: ' +
               FloatToStr( d ) +
               ', Integer: ' +
               IntToStr( i ) +
               ', Boolean: ' +
               s2;
  ResultLbl.Caption := resultStr;
end;

function TForm1.BoolStr : string;
begin
  if (globalBoolean = true) then
     BoolStr := 'true'
  else
     BoolStr := 'false';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  myDouble : double;
  myInteger : integer;
  myChar : char;
  myString : string;
begin
  myString := 'Hello world ';
  myChar := 'X';
  myDouble := 1.25;
  myInteger := 10;
  ShowAll( myString, myChar, myDouble, myInteger, BoolStr );
 // alternative using BoolToStr
 // ShowAll( myString, myChar, myDouble, myInteger, BoolToStr(globalBoolean, true) );
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  globalBoolean := not globalBoolean;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i : integer;
  d : double;
  c : char;
begin
  d := 100.0;
  i := 100;
  c := '$';
  ShowAll('10 * 100 ', c, 10.0 * d , 10 * i , BoolStr);
end;

procedure TForm1.FormCreate(Sender: TObject);
{ set value of GlobalBoolean to True when program starts }
begin
   globalBoolean := true;
end;

end.
