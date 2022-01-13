unit Sonnet1;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
   ShowMessage( 'Result = ' + Edit1.Text + '10' );
end;

procedure TForm1.Button2Click(Sender: TObject);
var
   len  : integer;
begin
   len := Length(Edit1.text);
   ShowMessage( 'Length of line = ' + IntToStr( len ) +
                '. So, when 10 is added, the result is : ' +
                IntToStr( len + 10 ) );
end;

end.
