unit Funct;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Button3: TButton;
    Edit2: TEdit;
  // Step 1: Declare the function
  function Max3(a, b, c: integer): integer; // click control over the function name which gives a shortcut
  function GetMonth(sIDNumber : string): string;
  function IsPrime (iNumber : integer) : boolean;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);


  //Ctrl + Shift + C will automatically set up your function down below
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
var iNum1, iNum2, iNum3, iAnswer: integer;
begin

  iNum1 := 11;
  iNum2 := 15;
  iNum3 := 10;

  iAnswer := Max3(iNum1, iNum2, iNum3);

  ShowMessage('The biggest number is ' + IntToStr(iAnswer));
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var sID, sMonth : string;
begin
SID := Edit1.Text;
sMonth := GetMonth( sID );
showmessage('You were born in the month of ' + sMonth);
end;

procedure TForm1.Button3Click(Sender: TObject);
var iNum : integer;
begin
iNum := 7;

if IsPrime ( iNum ) = true then
  begin
    showmessage ('That is a PRIME number!');
  end
  else
    begin
      showmessage('That is NOT a prime number!');
    end;
end;

function TForm1.GetMonth(sIDNumber: string): string;
var sMonth: string; //this will extract the 3rd/4th char in the ID Num
begin
// ID Num:= 01112056398344
sMonth:= Copy(sIDNumber, 3, 2); //here we are copying the 3 and 4th

if sMonth = '01' then
  begin
    result := 'Jan';
  end
  else if sMonth = '02' then
    begin
      result := 'Feb';
    end
  else if sMonth = '03' then
    begin
      result := 'Mar';
    end
  else if sMonth = '04' then
    begin
      result := 'Apr';
    end
  else if sMonth = '05' then
    begin
      result := 'May';
    end
  else if sMonth = '06' then
    begin
      result := 'Jun';
    end
  else if sMonth = '07' then
    begin
      result := 'Jul';
    end
  else if sMonth = '08' then
    begin
      result := 'Aug';
    end
  else if sMonth = '09' then
    begin
      result := 'Sep';
    end
  else if sMonth = '10' then
    begin
      result := 'Oct';
    end
  else if sMonth = '11' then
    begin
      result := 'Nov';
    end
  else if sMonth = '12' then
    begin
      result := 'Dec';
    end
  else
    begin
      result := 'ERR';
    end
end;

function TForm1.IsPrime(iNumber: integer): boolean;
var i, iCount: integer ;
begin
iCount := 0;
for I := 1 to iNumber do
  begin
    if iNumber MOD i = 0 then
      begin
        inc(iCount);
      end;
  end;

  if iCount = 2 then
  begin
    result := true;
  end
  else
    begin
      result := false;
    end;
end;

function TForm1.Max3(a, b, c: integer): integer;
// You do not need to declare result as a variable
begin
// Step 2: write the code
if (a > b) AND (a > c) then
  begin
    // send your answer in the result variable
    result := a;
  end

  else if (b > a) AND (b > c) then
    begin
      result := b;
    end
  else
    begin
      result := c;
    end;
end;

end.
