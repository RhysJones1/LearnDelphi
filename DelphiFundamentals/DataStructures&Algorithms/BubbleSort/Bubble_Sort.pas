unit Bubble_Sort;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    lstUnsortedRugbyNations: TListBox;
    lstSortedRugbyNations: TListBox;
    btnUnsortedRugbyNations: TButton;
    btnSortedRugbyNations: TButton;
    procedure btnUnsortedRugbyNationsClick(Sender: TObject);
    procedure btnSortedRugbyNationsClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
var
   arrRugby : Array[1..20] Of String = ('Wales', 'South Africa', 'New Zeeland',
                                        'Namibia', 'Australia', 'England',
                                        'Japan', 'Ireland', 'France', 'Argentina',
                                        'Scotland', 'Fiji', 'Georgia', 'Samoa',
                                        'Tonga', 'Uruguay', 'Russia',
                                        'United States of America', 'Italy',
                                        'Canada');



procedure TForm3.btnSortedRugbyNationsClick(Sender: TObject);
var
   intPasses, intIndex, intCountryCount : Integer;
   blnSwopped : Boolean;
   strTemp, strCountryName : String;
begin
   btnSortedRugbyNations.Enabled := False;
   lstSortedRugbyNations.Clear;
   intPasses := 0;
   intCountryCount := Length(arrRugby);

   repeat
      blnSwopped := False;
      Inc(intPasses);
      for intIndex := 1 to intCountryCount - intPasses do
      begin
        if arrRugby[intIndex] > arrRugby[intIndex + 1] then
        begin
          blnSwopped := True;
          //Swop 2 adjacent elements - 3-step swop
          strTemp := arrRugby[intIndex]; //Step 1
          arrRugby[intIndex] := arrRugby[intIndex + 1]; //Step 2
          arrRugby[intIndex + 1] := strTemp; //Step 3
        end; //end if
      end; //end for loop
   until blnSwopped = False;

   for strCountryName in arrRugby do
   begin
     lstSortedRugbyNations.Items.Add(strCountryName);
   end;

end;

procedure TForm3.btnUnsortedRugbyNationsClick(Sender: TObject);
var
   strRugbyNation : String;
begin
   lstUnsortedRugbyNations.Clear;

   for strRugbyNation in arrRugby do
   begin
     lstUnsortedRugbyNations.Items.Add(strRugbyNation);
   end;
end;

end.
