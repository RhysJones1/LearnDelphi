unit Asc2unit;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function NonPrintingChar( asciivalue : integer ) : string;
  end;

var
  Form1: TForm1;


implementation

{$R *.DFM}

function TForm1.NonPrintingChar( asciivalue : integer ) : string;
const
   numarray : array[1..7] of integer = (0,8,9,10,13,27,32);
   strarray : array[1..7] of string = ('NULL','BACKSPACE','TAB','LINEFEED',
                          'CARRIAGE RETURN','ESCAPE','SPACE');
var
   i : integer;
   s : string;
begin
   s := '';
   i := 0;
   repeat
     i := i + 1;
     if numarray[i] = asciivalue then
        s := strarray[i];
   until (i = High(numarray)) or (s <> '');
   NonPrintingChar := s;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
   i : integer;
   charname : string;
begin
   for i := 0 to 255 do
   begin
      charname := NonPrintingChar( i );
      if charname = '' then
        charname := Chr(i);
      ListBox1.Items.Add( Format('%d = ''%s''', [i, charname]));
   end;
end;

end.
