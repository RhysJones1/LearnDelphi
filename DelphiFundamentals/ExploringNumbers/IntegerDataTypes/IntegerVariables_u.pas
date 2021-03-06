  { *Simple program to cover Integer Data Types and what their
    max and min levels are *}

unit IntegerVariables_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmExploringIntegers = class(TForm)
    btnDisplayDetails: TButton;
    pnlByte: TPanel;
    pnlShortInt: TPanel;
    pnlSmallInt: TPanel;
    pnlInteger: TPanel;
    pnlByteRange: TPanel;
    pnlShortIntRange: TPanel;
    pnlSmallIntRange: TPanel;
    pnlIntegerRange: TPanel;
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
  bteLow, bteHigh : Byte;
  shtLow, shtHigh : Short;
  smlLow, smlHigh : SmallInt;
  intLow, intHigh : Integer;

begin
  bteLow := Low(Byte);
  bteHigh := High(Byte);

  shtLow := Low(Short);
  shtHigh := High(Short);

  smlLow := Low(SmallInt);
  smlHigh := High(SmallInt);

  intLow := Low(Integer);
  intHigh := High(Integer);

  pnlByteRange.Caption := IntToStr(bteLow) + ' to ' + IntToStr(bteHigh);
  pnlShortIntRange.Caption := IntToStr(shtLow) + ' to ' + IntToStr(shtHigh);
  pnlSmallIntRange.Caption := IntToStr(smlLow) + ' to ' + IntToStr(smlHigh);
  pnlIntegerRange.Caption := IntToStr(intLow) + ' to ' + IntToStr(intHigh);


end;

end.
