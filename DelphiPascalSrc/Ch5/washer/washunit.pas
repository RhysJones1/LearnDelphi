unit Washunit;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Viewport: TShape;
    SimpleWashBtn: TButton;
    Panel3: TPanel;
    DisplayPanel: TPanel;
    WashandspinBtn: TButton;
    SuperwashBtn: TButton;
    CycleLbl: TLabel;
    ProgressLbl: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    procedure SimpleWashBtnClick(Sender: TObject);
    procedure WashandspinBtnClick(Sender: TObject);
    procedure SuperwashBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ChugChug( chugspeed : integer );
    procedure Wash( speed, progress, maximum : integer );
    procedure WashCycle( speed, maximum : integer );
    procedure Spin( speed, progress, maximum : integer );
    procedure SpinCycle( speed, maximum : integer );
    function Clean( clothes : integer ) : boolean;
    function Dry( clothes : integer ) : boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}
procedure Delay(num: integer);
{ Note: GetTickCount is a special Windows function. It retrieves the number of
milliseconds that have elapsed since Windows was started. Here we use it to
set a starting time, tc. We then keep subtracting the starting time from the
current time returned by GetTickCount
  (GetTickCount-tc)
When that is greater than equal to the parameter, Num, then we know that Num
milliseconds have elapsed since the Repeat loop started:
  until ((GetTickCount-tc) >= Num);
So the Repeat loop condition evaluates to True and the loop stops running.

Note the contents of the loop are required to let Windows deal with events:
  Application.ProcessMessages;
Without this the Repeat-loop itself would hog all the processor time and
so other events (such as, in this case, the animated Washingmachine viewport)
would not be dealt with. This is a rather specialised piece of code
and You don't need to understand it in depth.
}

var
   tc :longint;
begin
     tc :=GetTickCount;
     repeat
           Application.ProcessMessages;
     until ((GetTickCount-tc) >= num);
end;

function TForm1.Clean( clothes : integer ) : boolean;
{ a const is like a variable that doesn't vary! }
Const
   REALLYCLEAN = 2;
begin
   if (clothes <  REALLYCLEAN) then
      Clean := false
   else
      Clean := true;
end;

function TForm1.Dry( clothes : integer ) : boolean;
Const
   REALLYDRY = 4;
begin
   if (clothes < REALLYDRY) then
      Dry := false
   else
      Dry := true;
end;

procedure TForm1.ChugChug( chugspeed : integer );
begin
   Viewport.Top := Viewport.Top + 2;
   Delay(chugspeed);
   Viewport.Top := Viewport.Top - 2;
   Delay(chugspeed);
end;


procedure TForm1.Spin( speed, progress, maximum : integer );
begin
   ProgressLbl.Caption := Format( 'Spin %d of %d', [progress, maximum] );
   ChugChug(speed);
end;

procedure TForm1.SpinCycle( speed, maximum : integer );
var
   i : integer;
begin
   CycleLbl.Caption := 'Spin Cycle...';
   for i := 1 to maximum do
       Spin(speed, i, maximum);
   CycleLbl.Caption := 'Spin Cycle Complete';
end;

procedure TForm1.Wash( speed, progress, maximum : integer );
begin
   ProgressLbl.Caption := Format( 'Wash %d of %d', [progress, maximum] );
   ChugChug(speed);
end;

procedure TForm1.WashCycle( speed, maximum : integer );
var
   i : integer;
begin
   CycleLbl.Caption := 'Wash Cycle...';
   for i := 1 to maximum do
       Wash(speed, i, maximum);
   CycleLbl.Caption := 'Wash Cycle Complete';
end;

procedure TForm1.SimpleWashBtnClick(Sender: TObject);
begin
   DisplayPanel.Caption := 'Wash program (no spin)';
   WashCycle(100, 10);
   DisplayPanel.Caption := 'Please select a program';
end;

procedure TForm1.WashandspinBtnClick(Sender: TObject);
begin
   DisplayPanel.Caption := 'Wash and Spin program';
   WashCycle(100, 10 );
   SpinCycle(100, 10 );
   DisplayPanel.Caption := 'Please select a program';
end;

procedure TForm1.SuperwashBtnClick(Sender: TObject);
var
   i : integer;
   clothes : integer;
begin
   clothes := 0;
   repeat
         clothes := clothes + 1; {!! make sure to set a valid end condition }
         DisplayPanel.Caption := 'Wash #:' + IntToStr(clothes);
         WashCycle( 100, 10 );
   until Clean( clothes );

   CycleLbl.Caption := 'Preparing SuperSpin cycle...';
   Delay(3000);

   clothes := 0;
   while not (Dry(clothes)) do
   begin
         clothes := clothes + 1;
         DisplayPanel.Caption := 'Spin #:' + IntToStr(clothes);
         Delay(1000);
         SpinCycle( 40, 20 );
   end;
   Delay(3000);
   DisplayPanel.Caption := 'Please select a program';
end;

end.
