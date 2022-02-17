unit FloatingPointVariables_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmExploringIntegers = class(TForm)
    btnDisplayDetails: TButton;
    pnlSingle: TPanel;
    pnlDouble: TPanel;
    pnlReal: TPanel;
    pnlExtended: TPanel;
    pnlSingleRange: TPanel;
    pnlDoubleRange: TPanel;
    pnlRealRange: TPanel;
    pnlExtendedRange: TPanel;
    pnlCurrencyRange: TPanel;
    pnlCurrency: TPanel;
    procedure btnDisplayDetailsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExploringIntegers: TfrmExploringIntegers;

implementation

{$R *.dfm}



procedure TfrmExploringIntegers.btnDisplayDetailsClick(Sender: TObject);
var
   sngCrudePi : Single;

begin
   //Input


   //Processing
   sngCrudePi := 22/7;
   {sngLow := Low(Single);
   sngHigh := High(Single);

   dblLow := Low(Double);
   dblHigh := High(Double);

   relLow := Low(Real);
   relHigh := High(Real);

   extLow := Low(Extended);
   extHigh := High(Extended);}


   //Output
   pnlSingleRange.Caption := FloatToStr(sngCrudePi);
   pnlDoubleRange.Caption := FloatToStr(Pi);
   pnlRealRange.Caption := '3.14159265359'


end;

end.
