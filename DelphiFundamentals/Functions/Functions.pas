unit Functions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
  // Step 1: Declare the function
  function Max3(a, b, c: integer): integer;
    procedure Button1Click(Sender: TObject);
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
