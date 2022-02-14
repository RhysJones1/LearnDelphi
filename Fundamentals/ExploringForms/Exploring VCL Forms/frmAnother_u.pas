unit frmAnother_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frmOneMore_u;

type
  TfrmAnother = class(TForm)
    btnAnotherButton: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure btnAnotherButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnother: TfrmAnother;

implementation

{$R *.dfm}

procedure TfrmAnother.btnAnotherButtonClick(Sender: TObject);
begin
frmOneMore.Show;
end;

end.
