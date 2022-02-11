unit Pfunit;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    HelloBtn: TButton;
    GoodbyeBtn: TButton;
    Label1: TLabel;
    ToodlepipBtn: TButton;
    procedure HelloBtnClick(Sender: TObject);
    procedure GoodbyeBtnClick(Sender: TObject);
    procedure ToodlepipBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

function MsgFunc( greeting, username : string ) : string;
begin
  if username = '' then
     MsgFunc := 'You must enter your name!'
  else
     MsgFunc := greeting + username;
end;

{
// This is an alternative version of the MsgFunc function.
// It uses a local variable, msg, to store a string
// and it returns this value using as a result at the end
// of the function
function MsgFunc( greeting, username : string ) : string;
var msg : string;
begin
  if username = '' then
     msg := 'You must enter your name!'
  else
     msg := greeting + username;
  result := msg;
end;
}

procedure TForm1.HelloBtnClick(Sender: TObject);
{ This button assigns the return value from the MsgFunc function to a
  variable, msg. This has the advantage that the Msg variable stores the
  return value so it can be used many times within the current procedure
  if necessary. }
var
   msg : string;
begin
  msg := MsgFunc( 'Hello ', Edit1.Text );
     ShowMessage( msg );
end;

procedure TForm1.GoodbyeBtnClick(Sender: TObject);
{ This button uses the return value of MsgFunc as a parameter to Delphi's
  ShowMessage procedure. This avoids declaring a variable, such as msg, as in
  the previous procedure. However, it also means that the value can be used
  only once. }
begin
   ShowMessage( MsgFunc( 'Goodbye ', Edit1.Text ) );
end;


{ The third button illustrates passing parameters to procedures }
procedure ErrorProc( errmsg : string );
begin
   ShowMessage( errmsg );
end;

procedure MsgProc( greeting : string );
begin
   ShowMessage( greeting + ', old bean!' );
end;

procedure TForm1.ToodlepipBtnClick(Sender: TObject);
{ if the Edit1 box is empty, pass a message to the ErrorProc()
  procedure, otherwise, pass a different message to the MsgProc()
  procedure }
begin
   if Edit1.Text = '' then
      ErrorProc('You must enter your name!' )
   else
      MsgProc( 'Toodlepip, ' + Edit1.Text );
end;

end.
