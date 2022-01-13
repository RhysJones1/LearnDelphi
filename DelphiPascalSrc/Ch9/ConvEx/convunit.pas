unit Convunit;
(* A simple of example of exception handling *)

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Exception1: TButton;
    Exception2: TButton;
    Exception4: TButton;
    Exception3: TButton;
    procedure Exception1Click(Sender: TObject);
    procedure Exception2Click(Sender: TObject);
    procedure Exception4Click(Sender: TObject);
    procedure Exception3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

{ Each of these 3 methods try to convert 'a' to an integer. The conversion
  cannot be done so an exception will occur. }

procedure TForm1.Exception1Click(Sender: TObject);
{ 1st version. Protects the conversion in a try..except block. There
  is no information on the exception so a simple message is displayed }
begin
  try
   StrToInt( 'a' );
  except
   ShowMessage( 'There''s been a problem!' );
  end;
end;

procedure TForm1.Exception2Click(Sender: TObject);
{ 2nd Version. This time the exception handling block has code
  for two specific types of exception, EConvertError and EZeroDivide
  plus code to handle an all-purpose Exception. }
begin
 try
   StrToInt( 'a' );
 except
  on EConvertError do
    ShowMessage( 'There''s been a conversion error' );
  on EZeroDivide do
    ShowMessage( 'There''s been a zero divide error' );
  on Exception do
   ShowMessage( 'There''s been an Exception!' );
 end;
end;

procedure TForm1.Exception3Click(Sender: TObject);
{ 3rd version. This contains exactly the same exception-handling code as in the
  2nd version. Only the type of exception has changed. }
var
  n1, n2 : double;
begin
 n1 := 1.0;
 n2 := 0.0;
 try
   n1 := n1 / n2;
 except
  on EConvertError do
    ShowMessage( 'There''s been a conversion error' );
  on EZeroDivide do
    ShowMessage( 'There''s been a zero divide error' );
  on Exception do
   ShowMessage( 'There''s been an Exception!' );
 end;
end;


procedure TForm1.Exception4Click(Sender: TObject);
{ 4th version. This time an exception variable has been created, e. This
  lets us use the Exception method, e.message, to display
  some information }
begin
 try
  StrToInt( 'a' );
 except
  on e : Exception do
   ShowMessage( 'There''s been an Exception! ' + e.message );
 end;
end;


end.
