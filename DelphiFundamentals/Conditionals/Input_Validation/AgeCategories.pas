unit AgeCategories;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCalendars, Vcl.StdCtrls, System.DateUtils,
  Vcl.ExtCtrls, Vcl.Samples.Spin;

type
  TfrmAgeCategories = class(TForm)
    pnlAge: TPanel;
    pnlAgeCategory: TPanel;
    sedAge: TSpinEdit;
    edtName: TEdit;
    btnShowAgeCategory: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnShowAgeCategoryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgeCategories: TfrmAgeCategories;

implementation

{$R *.dfm}


procedure TfrmAgeCategories.btnShowAgeCategoryClick(Sender: TObject);
var
   bteAge : Byte;
   strName : String;
begin
    if edtName.Text = '' then
    begin
       pnlAgeCategory.Caption := 'A name is required';
       pnlAgeCategory.Font.Color := clRed;
       edtName.SetFocus;
       Exit;
    end;

    pnlAgeCategory.Font.Color := clBlack;
    bteAge := sedAge.Value;
    strName := edtName.Text;
    pnlAge.Caption := IntToStr(bteAge);
    pnlAgeCategory.Caption := 'Name: ' + strName;

end;

end.
