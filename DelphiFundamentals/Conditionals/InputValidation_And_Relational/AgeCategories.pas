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
   strName, strAgeCategory : String;
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

    if bteAge >= 110 then strAgeCategory := 'supercentenarian'
    else if bteAge >= 100 then strAgeCategory := 'centenarian'
    else if bteAge >= 90  then strAgeCategory := 'nonagenarian'
    else if bteAge >= 80  then strAgeCategory := 'octaugenarian'
    else if bteAge >= 70  then strAgeCategory := 'septuagenarian'
    else if bteAge >= 60  then strAgeCategory := 'sexagenarian'
    else if bteAge >= 50  then strAgeCategory := 'quinqagenarian'
    else if bteAge >= 40  then strAgeCategory := 'quadragenarian'
    else if bteAge >= 30  then strAgeCategory := 'tricenarian'
    else if bteAge >= 20  then strAgeCategory := 'vicenarian'
    else if bteAge >= 10  then strAgeCategory := 'denarian'
    else strAgeCategory := 'young child';

    pnlAgeCategory.Caption := strName + ' is a ' + strAgeCategory;

end;

end.
