unit Age1;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ScrollBar1: TScrollBar;
    Label1: TLabel;
    AgeLabel: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
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
{========= START OF TUTORIAL CODE ========}
{ Declare variables }
var
   age : Integer;
   teenager : Boolean;
begin
{ Initialise variables with some value }
   age := ScrollBar1.Position;
   teenager := false;
{ Test the value of the Age variable   }
{ and set the Teenager variable to     }
{ True if Age is between 13 and 19     }
   if (age > 12) and (age < 20) then
      teenager := true;
{ Now test the value of the Teenager   }
{ variable. Display one message if it  }
{ is true, another if it is false      }
   if teenager then{ if Teenager = True}
      ShowMessage('You are a teenager.')
   else            {if Teenager = False}
      ShowMessage('You are no teenager!');
{========= END OF TUTORIAL CODE ==========}
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
   AgeLabel.Caption := IntToStr(ScrollBar1.Position);
end;

end.
