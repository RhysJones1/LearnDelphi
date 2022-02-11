unit Varunit1;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Add1toIBtn: TButton;
    Edit1: TEdit;
    ILabel: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    AddItoXBtn: TButton;
    Edit2: TEdit;
    XLabel: TLabel;
    procedure Add1toIBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AddItoXBtnClick(Sender: TObject);
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


{ Declaration of variables }
var
   i : integer;
   x : integer;

procedure TForm1.ShowValues;
begin
  ILabel.Caption := 'i = ' + IntToStr(i);
  XLabel.Caption := 'x = ' + IntToStr(x);
end;

procedure TForm1.Add1toIBtnClick(Sender: TObject);
begin
  i := i + 1;
  ShowValues;
end;

procedure TForm1.AddItoXBtnClick(Sender: TObject);
begin
  x := x + i;
  ShowValues;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  i := 0;
  x := 0;
end;



end.
