unit Ops1;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}


procedure TForm1.Button1Click(Sender: TObject);
var
   i, i2 : integer;
   d, d2 : double; 
begin
   Memo1.Lines.Add('--- Integer Maths ---' );
   i := 10;
     Memo1.Lines.Add('i := 10. Result is: ' + IntToStr(i) );
   i := i + 10;
     Memo1.Lines.Add('i := i + 10. Result is: ' + IntToStr(i) );
   i := i - 5;
     Memo1.Lines.Add('i := i - 5. Result is: ' + IntToStr(i) );
   i := i * 2;
     Memo1.Lines.Add('i := i * 2. Result is: ' + IntToStr(i) );
   i2 := i div 7;
     Memo1.Lines.Add('i2 := i div 7. Result is: ' + IntToStr(i2) );
   i2 := i mod 7;
     Memo1.Lines.Add('i2 := i mod 7. Result is: ' + IntToStr(i2) );

   Memo1.Lines.Add('--- Double (floating point) Maths ---' );
   d := 10.5;
     Memo1.Lines.Add('d := 10.5  Result is: ' + FloatToStr(d) );
   d := d + 10.0;
     Memo1.Lines.Add('d := d + 10.0. Result is: ' + FloatToStr(d) );
   d := d - 5.2;
     Memo1.Lines.Add('d := d - 5.2. Result is: ' + FloatToStr(d) );
   d := d * 2;
     Memo1.Lines.Add('d := d * 2. Result is: ' + FloatToStr(d) );
   d2 := d / 7;
     Memo1.Lines.Add('d2 := d / 7. Result is: ' + FloatToStr(d2) );
end;

end.
