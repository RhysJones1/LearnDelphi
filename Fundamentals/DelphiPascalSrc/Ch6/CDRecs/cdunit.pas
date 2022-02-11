unit Cdunit;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  Str30 = string[30];

  CD = record
     name    : Str30;
     artist  : Str30;
     price   : double;
     cdlabel : Str30;
  end;


  TForm1 = class(TForm)
    Memo1: TMemo;
    ShowCDsBtn: TButton;
    FindCDBtn: TButton;
    Edit1: TEdit;
    ShowaCDBtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ShowCDsBtnClick(Sender: TObject);
    procedure FindCDBtnClick(Sender: TObject);
    procedure ShowaCDBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowCD( i : integer );
  end;

var
  Form1: TForm1;
  aCD   : CD;
  myCDs : array[1..4] of CD;

implementation

{$R *.DFM}
procedure TForm1.ShowCD( i : integer );
begin
  Memo1.Lines.Add(
    Format('CDRec[%d] is %s by %s, on the %s label. Price = $%n.',
          [i,myCDs[i].name,myCDs[i].artist,myCDs[i].CDlabel,myCDs[i].price]
       ) );
 end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   aCD.name := 'Loads of Nice Tunes';
   aCD.artist := 'Blaise & The Pascalettes';
   aCD.price := 0.75;
   aCD.CDlabel := 'Seedy CDs';

   myCDs[1].name := 'Great Hits';
   myCDs[1].artist := 'Dolly Parton';
   myCDs[1].price := 10.75;
   myCDs[1].CDlabel := 'Great Records';

   myCDs[2].name := 'Greatest Bits';
   myCDs[2].artist := 'Alvin Stardust';
   myCDs[2].price := 4.35;
   myCDs[2].CDlabel := 'MVH';

   myCDs[3].name := 'Better Than Tea';
   myCDs[3].artist := 'Boy George';
   myCDs[3].price := 15.20;
   myCDs[3].CDlabel := 'New Romantic Records';

   myCDs[4].name := 'Wild and Willing';
   myCDs[4].artist := 'Wet Wet Wet';
   myCDs[4].price := 12.05;
   myCDs[4].CDlabel := 'IME';

end;

procedure TForm1.ShowCDsBtnClick(Sender: TObject);
var
   i : integer;
begin
   Memo1.Clear;
   for i := 1 to 4 do
      ShowCD( i );
end;

procedure TForm1.FindCDBtnClick(Sender: TObject);
var
  ok : boolean;
  i  : integer;
begin
  Memo1.Clear;
  ok := true;
  try
    i := StrToInt( Edit1.Text );
  except
     on e : EConvertError do
     begin
        ShowMessage( 'You must enter a number!' );
        ok := false;
     end;
  end;
  if ok then
     if (i > 0) and (i < 5) then
        ShowCD( i )
     else
        ShowMessage( 'Enter a number between 1 and 4!' );
end;

procedure TForm1.ShowaCDBtnClick(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.Add( Format( 'aCD is %s by %s, on the %s label. Price = $%n.',
                   [aCD.name, aCD.artist, aCD.CDlabel, aCD.price] ));
end;

end.
