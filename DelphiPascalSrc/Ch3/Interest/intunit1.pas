unit Intunit1;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    BalanceLabel: TLabel;
    BalanceScrollBar: TScrollBar;
    Label2: TLabel;
    CalcLabel: TLabel;
    GoldButton: TButton;
    SilverButton: TButton;
    StandardButton: TButton;
    Label3: TLabel;
    procedure BalanceScrollBarChange(Sender: TObject);
    procedure GoldButtonClick(Sender: TObject);
    procedure SilverButtonClick(Sender: TObject);
    procedure StandardButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

function CurrentBalance : integer;
begin
   CurrentBalance := StrToInt(Form1.BalanceLabel.Caption);
end;


{!! This procedure calculates the interest that would be paid (or charged)
    based on the amount of money in the account. It does this by adding
    the Bonus value to the Standard interest rate. It then uses this to
    calculate the interest as a percentage }
procedure CalcInterest( bonus : integer );
var
   standardRate,
   balance,
   intRate : integer;
   intEarned : double;
   msg : string;
begin
   standardRate := 5;
   intRate :=  standardRate + bonus;
   balance := CurrentBalance;
   intEarned := (balance * intRate) / 100;
   if intEarned < 0 then
      msg := 'Interest deducted from this account is: '
   else
      msg :=  'Interest earned on this account is: ';
   Form1.CalcLabel.Caption := msg + FloatToStrF(intEarned, ffCurrency, 2, 2);
end;

{!! Each of these 3 buttons calls the CalcInterest() procedure, passing to it
    an integer value representing the Bonus interest that applies to this
    variety of bank account }
procedure TForm1.GoldButtonClick(Sender: TObject);
begin
   CalcInterest( 2 );
end;

procedure TForm1.SilverButtonClick(Sender: TObject);
begin
  CalcInterest( 1 );
end;

procedure TForm1.StandardButtonClick(Sender: TObject);
begin
  CalcInterest( 0 );
end;

{ The code below is used to determine the value that has been set using
  the scroll bar }
procedure TForm1.BalanceScrollBarChange(Sender: TObject);
begin
  BalanceLabel.Caption := IntToStr(BalanceScrollBar.Position);
end;


end.
