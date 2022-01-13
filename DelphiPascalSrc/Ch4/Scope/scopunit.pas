unit Scopunit;
{ Test the scope or 'visibility' of variables declared
  in different parts of the program code. To understand
  this, you may want to print out this code and refer to
  it when trying the effect of click each button }

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowStrings2;
  end;

var
  Form1: TForm1;
    { Global variables. These are visible everywhere }
  globalStr,
  aStr,
  anotherStr : string;

implementation

{$R *.DFM}

procedure ShowStrings;
begin
  Form1.Memo1.Lines.Add('---------ShowStrings---------------');
  Form1.Memo1.Lines.Add(
        Format('globalStr=%s, aStr=%s, anotherStr=%s, localStr=NOT FOUND',
                          [globalStr,aStr,anotherStr{,localStr} ] ) );
end;

procedure TForm1.ShowStrings2;
begin
  Memo1.Lines.Add('---------ShowStrings---------------');
  Memo1.Lines.Add(
        Format('globalStr=%s, aStr=%s, anotherStr=%s, localStr=NOT FOUND',
                          [globalStr,aStr,anotherStr{,localStr} ] ) );
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  { local variables }
  aStr, { notice this has the same name as one of the global variables }
  localStr : string;
begin
  aStr := 'Hello from Button1';
  localStr := 'Goodbye from Button1';
  anotherStr := 'Button1 is great';
  Memo1.Lines.Add('----------Button1Click--------------');
  Memo1.Lines.Add(
        Format('globalStr=%s, aStr=%s, anotherStr=%s, localStr=%s',
                          [globalStr,aStr,anotherStr,localStr] ) );
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  { local variables }
  aStr,
  localStr : string;  { this has the same name as a variable in Button1Click }
begin
  aStr := 'Hi from Button2';
  localStr := 'Cheerio from Button2';
  anotherStr := 'Button2 is fab';
  Memo1.Lines.Add('----------Button2Click--------------');
  Memo1.Lines.Add(
        Format('globalStr=%s, aStr=%s, anotherStr=%s, localStr=%s',
                          [globalStr,aStr,anotherStr,localStr] ) );
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Add('----------Button3Click--------------');
  Memo1.Lines.Add(
        Format('globalStr=%s, aStr=%s, anotherStr=%s, localStr=NOT FOUND',
                          [globalStr,aStr,anotherStr{,localStr} ] ) );
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ShowStrings;
end;

procedure TForm1.Button5Click(Sender: TObject);
{ Gives new values to global and form-level variables }
begin
  globalStr := '!!!---All change for globalStr---!!!';
  aStr :=  '!!!---All change for aStr---!!!';
  anotherStr := '!!!---All change for anotherStr!!!';
  Memo1.Lines.Add('----------Button5Click--------------');
  Memo1.Lines.Add(
        Format('globalStr=%s, aStr=%s, anotherStr=%s, localStr=NOT FOUND',
                          [globalStr,aStr,anotherStr{,localStr} ] ) );
end;


procedure TForm1.FormCreate(Sender: TObject);
{ Gives values to global and form-level variables when the application starts }
begin
  globalStr := 'Good morning from globalStr';
  aStr :=  'Good afternoon from aStr';
  anotherStr := 'Good evening from anotherStr';
end;


end.
