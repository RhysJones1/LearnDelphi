  (*********************************************************
   The following program explores Fixed Length Strings,
   Dynamic loading of images and the ShortString data type.

   To explore these topics a vcl application was created
   which displays various countries around the world.
   Country ISO codes are 3 chars in length so this was a
   good program setting variables with a fixed length.
  **********************************************************)

unit FixedLengthStrings_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmFixedLengthStrings = class(TForm)
    cboCountries: TComboBox;
    imgFlag: TImage;
    pnlCountry: TPanel;
    pnlCountryISOCode: TPanel;
    procedure cboCountriesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFixedLengthStrings: TfrmFixedLengthStrings;

implementation

{$R *.dfm}

  // Procedure which displays counties based on the ISO Code

procedure TfrmFixedLengthStrings.cboCountriesChange(Sender: TObject);
var
  strSelectedItem, strCountryName, strFilePath : ShortString; // ShortString: Dynamic
  strCountryISOCode : String[3]; // limited length str of 3 chars: reduce memory

begin
  //Input
  strSelectedItem := cboCountries.Text;

  // Processing
  strFilePath := '..\..\Flags\' + strSelectedItem + '.png';
  strCountryISOCode := Copy(strSelectedItem, 1, 3);
  Delete(strSelectedItem, 1, 6);
  strCountryName := strSelectedItem;

  // Output
  imgFlag.Picture.LoadFromFile(strFilePath);
  pnlCountryISOCode.Caption := strCountryISOCode;
  pnlCountry.Caption := strCountryName;

end;

end.
