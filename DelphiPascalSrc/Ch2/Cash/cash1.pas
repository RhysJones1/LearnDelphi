unit Cash1;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    FromPCashBtn: TButton;
    ToPCashBtn: TButton;
    FromEntsBtn: TButton;
    ToEntsBtn: TButton;
    FromPetrolBtn: TButton;
    ToPetrolBtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FromPCashBtnClick(Sender: TObject);
    procedure ToPCashBtnClick(Sender: TObject);
    procedure ToEntsBtnClick(Sender: TObject);
    procedure FromEntsBtnClick(Sender: TObject);
    procedure ToFuelBtnClick(Sender: TObject);
    procedure FromFuelBtnClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowValues;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}


{ These variables are declared above the procedures and are therefore
  visible to each of them. You can also declare variables inside
  an individual procedure in which case they will be invisible to
  all other procedures. The visibility or 'scope' of variables will be
  explained later in the course }
var
  pettyCash,
  entertainmentsBudget,
  fuelMoney,
  wallet	 : integer;

procedure TForm1.ShowValues;
{ This procedure displays the values of variables in a Memo
  on the form. You don't need to be concerned with the details of
  this for the time being.

  Note that I have had to convert the integer variables to a String
  representation using the IntToStr() function. This is because
  a Memo can only display Strings. It cannot display integers. The
  problems of data type conversion will be dealt with later in the
  series }
begin
   Memo1.Clear;
   Memo1.Lines.Add('PettyCash = ' + IntToStr(pettyCash));
   Memo1.Lines.Add('EntertainmentsBudget = ' + IntToStr(entertainmentsBudget));
   Memo1.Lines.Add('FuelMoney = ' + IntToStr(fuelMoney));
   Memo1.Lines.Add('Wallet = ' + IntToStr(wallet));

end;
procedure TForm1.FormCreate(Sender: TObject);
begin
   pettyCash 	          := 10;
   entertainmentsBudget := 10;
   fuelMoney	          := 10;
   wallet               := 0;
end;

procedure TForm1.FromPCashBtnClick(Sender: TObject);
begin
   pettyCash := pettyCash - 1;
   wallet := wallet + 1;
   ShowValues;
end;

procedure TForm1.ToPCashBtnClick(Sender: TObject);
begin
   pettyCash := pettyCash + 1;
   wallet := wallet - 1;
   ShowValues;
end;

procedure TForm1.ToEntsBtnClick(Sender: TObject);
begin
   entertainmentsBudget := entertainmentsBudget + 1;
   wallet := wallet - 1;
   ShowValues;
end;

procedure TForm1.FromEntsBtnClick(Sender: TObject);
begin
   entertainmentsBudget := entertainmentsBudget - 1;
   wallet := wallet + 1;
   ShowValues;
end;

procedure TForm1.ToFuelBtnClick(Sender: TObject);
begin
   fuelMoney := fuelMoney - 1;
   wallet := wallet + 1;
   ShowValues;
end;

procedure TForm1.FromFuelBtnClick(Sender: TObject);
begin
   fuelMoney := fuelMoney + 1;
   wallet := wallet - 1;
   ShowValues;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  ShowValues;
end;

end.
