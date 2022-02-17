unit ExploringFloatingPointNumbers_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    edtFloatingPointNumber: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel9: TPanel;
    pnlPi: TPanel;
    btnFormat: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    pnlFixed_8_4: TPanel;
    pnlFixed_4_4: TPanel;
    pnlFixed_4_2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure btnFormatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

var
   sngPi : Single;




procedure TForm1.btnFormatClick(Sender: TObject);
begin


   //Input
   sngPi := StrToFloat(edtFloatingPointNumber.Text);


   //Processing


   //Output
   pnlPi.Caption := FloatToStr(sngPi);
   pnlFixed_8_4.Caption := FloatToStrF(sngPi, ffFixed, 8, 4);
   pnlFixed_4_4.Caption := FloatToStrF(sngPi, ffFixed, 4, 4);
   pnlFixed_4_2.Caption := FloatToStrF(sngPi, ffFixed, 4, 2);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   sngPi := Pi;

   edtFloatingPointNumber.Text := FloatToStr(sngPi);

end;

end.
