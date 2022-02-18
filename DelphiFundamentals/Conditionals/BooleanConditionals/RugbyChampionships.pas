unit RugbyChampionships;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TfrmRugbyChamps = class(TForm)
    cboCountry: TComboBox;
    cboOpponent: TComboBox;
    imgTeams: TImage;
    procedure cboCountryChange(Sender: TObject);
    procedure cboOpponentChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRugbyChamps: TfrmRugbyChamps;

implementation

{$R *.dfm}
var
   strCountry : String;
const
   filePath = '../../Teams/';

procedure TfrmRugbyChamps.cboCountryChange(Sender: TObject);
var
   strDefaultPicFileName : String;
   blnCountrySelected : Boolean;
begin
   strCountry := cboCountry.Text;
   strDefaultPicFileName := 'Rugby Championship.png';
   cboOpponent.ItemIndex := 0;
   imgTeams.Picture.LoadFromFile(filePath + strDefaultPicFileName);

   //This If-statement can be replaced with the statements below the If-block
   {
   if cboCountry.ItemIndex > 0 then
      cboOpponent.Enabled := True
   else
      cboOpponent.Enabled := False;
   }

   //Replace above If-block (comment) with the following:
   blnCountrySelected := cboCountry.ItemIndex > 0;
   cboOpponent.Enabled := blnCountrySelected;
end;

procedure TfrmRugbyChamps.cboOpponentChange(Sender: TObject);
var
   strOpponent, strFileName : String;
begin
   strOpponent := cboOpponent.Text;

   if strCountry = strOpponent then
   begin
     strFileName := 'Error.png';
   end
   else if (strCountry = 'Argentina') and (strOpponent = 'Australia')
        Or (strCountry = 'Australia') and (strOpponent = 'Argentina') then
   begin
     strFileName := 'Los Pumas vs Wallabies.png';
   end
   else if (strCountry = 'Argentina') and (strOpponent = 'New Zealand')
        Or (strCountry = 'New Zealand') and (strOpponent = 'Argentina') then
   begin
     strFileName := 'Los Pumas vs All Blacks.png';
   end
   else if (strCountry = 'Argentina') and (strOpponent = 'South Africa')
        Or (strCountry = 'South Africa') and (strOpponent = 'Argentina') then
   begin
     strFileName := 'Los Pumas vs Springboks.png';
   end
   else if (strCountry = 'Australia') and (strOpponent = 'New Zealand')
        Or (strCountry = 'New Zealand') and (strOpponent = 'Australia') then
   begin
     strFileName := 'Wallabies vs All Blacks.png';
   end
   else if (strCountry = 'Australia') and (strOpponent = 'South Africa')
        Or (strCountry = 'South Africa') and (strOpponent = 'Australia') then
   begin
     strFileName := 'Wallabies vs Springboks.png';
   end
   else if (strCountry = 'New Zealand') and (strOpponent = 'South Africa')
        Or (strCountry = 'South Africa') and (strOpponent = 'New Zealand') then
   begin
     strFileName := 'All Blacks vs Springboks.png';
   end
   else
     strFileName := 'Error.png';


   imgTeams.Picture.LoadFromFile(filePath + strFileName);

end;

end.
