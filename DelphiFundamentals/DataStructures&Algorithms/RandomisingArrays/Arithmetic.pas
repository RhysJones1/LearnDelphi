unit Arithmetic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmArithmetic = class(TForm)
    pnlMathQuestion: TPanel;
    edtAnswer: TEdit;
    MainMenu1: TMainMenu;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArithmetic: TfrmArithmetic;

implementation

{$R *.dfm}

end.
