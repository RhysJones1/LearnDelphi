unit Dynamic_Array;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TfrmDynamicArray = class(TForm)
    imgDice: TImage;
    btnRoll: TButton;
    lstWishList: TListBox;
    lblWishListHeader: TLabel;
    btnTakeWishes: TButton;
    procedure btnRollClick(Sender: TObject);
    procedure btnTakeWishesClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDynamicArray: TfrmDynamicArray;

implementation

{$R *.dfm}

var
   bteDieNumber : Byte;


procedure TfrmDynamicArray.btnRollClick(Sender: TObject);
const
   strPath : String = '../../Dice/Die';
begin
   Randomize;
   bteDieNumber := 1 + Random(6);
   imgDice.Picture.LoadFromFile(strPath + IntToStr(bteDieNumber) + '.png');

   with btnTakeWishes do
   begin
     Caption := 'Take ' + IntToStr(bteDieNumber) + ' wishes';
     Enabled := True;
   end;

   btnRoll.Enabled := False;
end;


procedure TfrmDynamicArray.btnTakeWishesClick(Sender: TObject);
var
    arrWishes : Array of String;
    strWish : String;
    bteWishCount : Byte;
begin
    lstWishList.Clear;
    btnRoll.Enabled := True;
    btnTakeWishes.Enabled := False;
    SetLength(arrWishes, bteDieNumber);

    for bteWishCount := 0 to bteDieNumber - 1 do
    begin
      arrWishes[bteWishCount] := InputBox('Wish #' + IntToStr(bteWishCount + 1),
                                          'Your wish is my command. What is your wish?',
                                          'Wish ' + IntToStr(bteWishCount + 1) + ': ');
    end;

    for strWish in arrWishes do
    begin
      lstWishList.Items.Add(strWish);
    end;


end;

end.
