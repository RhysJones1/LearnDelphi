unit Test1;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    TestBtn: TButton;
    Edit1: TEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TestBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i : integer;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  i : integer;
begin
  i := 10;
  Edit1.Text := IntToStr( i );
end;

procedure TForm1.Button2Click(Sender: TObject);
var
   i : integer;
begin
   i := 20;
   Edit1.Text := IntToStr( i );
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   i := 30;
   Edit1.Text := IntToStr( i );
end;

procedure TForm1.TestBtnClick(Sender: TObject);
begin
  Edit1.Text := IntToStr( i );
end;

procedure TForm1.FormCreate(Sender: TObject);
{ this procedure executes when the program starts }
begin
  i := 0;
end;

end.
