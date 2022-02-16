unit Procunit;

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
    procedure HelloBtnClick(Sender: TObject);
    procedure GoodbyeBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure ShowErrorMsg;
{ This is our re-usable procedure. We call it whenever we want to deal
  with an error }
begin
  ShowMessage( 'You must enter your name!');
end;

procedure TForm1.HelloBtnClick(Sender: TObject);
begin
  if Edit1.Text = '' then
     ShowErrorMsg
  else
     ShowMessage( 'Hello ' + Edit1.Text );
  Caption := 'This is the last line in HelloBtnClick';
end;

procedure TForm1.GoodbyeBtnClick(Sender: TObject);
begin
  if Edit1.Text = '' then
     ShowErrorMsg
  else
     ShowMessage( 'Goodbye ' + Edit1.Text );
  Caption := 'This is the last line in GoodbyeBtnClick';
end;

end.
