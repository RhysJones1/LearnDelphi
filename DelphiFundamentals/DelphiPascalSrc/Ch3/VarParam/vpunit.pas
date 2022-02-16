unit Vpunit;

{ Experiment with Variable and Value parameters }
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
    procedure Meddle( var num1, num2, num3 : integer;
                           num4, num5, num6 : integer );
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

{ add 1 to each parameter }
procedure TForm1.Meddle( var num1, num2, num3 : integer;
                             num4, num5, num6 : integer );
begin
    num1 := num1 + 1;
    num2 := num2 + 1;
    num3 := num3 + 1;
    num4 := num4 + 1;
    num5 := num5 + 1;
    num6 := num6 + 1;
end;


procedure TForm1.Button1Click(Sender: TObject);
var
  n1,n2,n3,n4,n5,n6 : integer;
begin
  n1 := 1;
  n2 := 2;
  n3 := 3;
  n4 := 4;
  n5 := 5;
  n6 := 6;
{ Display variable values. I'll explain the Format function later in the course }
  Memo1.Lines.Add(Format('n1=%d, n2=%d, n3=%d, n4=%d, n5=%d, n6=%d',[n1,n2,n3,n4,n5,n6] ));
{ --- call the meddle procedure which changes the values of the arguments ---}
  Meddle( n1, n2, n3, n4, n5, n6 );
{ Now verify which arguments have actually been changed  }
  Memo1.Lines.Add(Format('n1=%d, n2=%d, n3=%d, n4=%d, n5=%d, n6=%d',[n1,n2,n3,n4,n5,n6] ));
end;

end.
