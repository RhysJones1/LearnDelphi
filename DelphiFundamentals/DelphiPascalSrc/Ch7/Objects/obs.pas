unit Obs;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    ShowObsBtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ShowObsBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type

  Str30 = string[30];

  CDOb = class
     name    : Str30;
     artist  : Str30;
     price   : double;
     cdlabel : Str30;
  end;

const
   ARRAYSIZE = 10;

type
   StrArray = array[1..ARRAYSIZE] of Str30;
   DblArray = array[1..ARRAYSIZE] of double;

const
   { This is the data with which the fields of the objects will be initialised }
   NAMEARRAY: StrArray = ('Greatest Hits','Big Ones','Golden Greats','Top Hits',
                         'All the Best','Fab Grooves','Unforgettable','Yeah!',
                         'Spiffing Tunes','Rare Hits' );
   ARTISTARRAY: StrArray = ('The Worms', 'Tammy McPherson',
                         'Stan Bloggs Big Band', 'The Three Niners', 'Pongo',
                         'Purple Floyd', 'Plop', 'The Mealybugs', 'James First',
                         'The Beach Bums' );
   PRICEARRAY: DblArray = (10.50,8.90,7.50,9.00,15.65,10.50,
                          8.50,10.67,11.45,12.55);
   LABELARRAY: StrArray = ('Stony Music','EIM','Stony Music',
                          'Fred''s Cheap CDs','Stony Music','CRA','Gribbit Inc.',
                          'Even Rougher Trade','Spiffing Records',
                          'Stonier Music');
var
  Form1: TForm1;
  { declare an array to hold CDOb objects }
  obArray : array[1..ARRAYSIZE] of CDOb;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
{ When the form is created (when the application is loaded), create a
  CDOb object for eaach slot of the array, obArray }
var
  i : integer;
  cd : CDOb;
begin
  for i := 1 to ARRAYSIZE do
  begin
    cd := CDOb.Create; { You *must* Create an object before using it! }
    cd.name := NAMEARRAY[i];
    cd.artist := ARTISTARRAY[i];
    cd.price := PRICEARRAY[i];
    cd.cdlabel := LABELARRAY[i];
    obArray[i] := cd;
  end;

end;

procedure TForm1.ShowObsBtnClick(Sender: TObject);
{ iterate through the array, ObArray, displaying the data from the
  fields of the CDOb in each array slot }
var
   i :integer;
   cd : cdOb;
begin
  for i := 1 to ARRAYSIZE do
  begin
    cd := ObArray[i];
    Memo1.Lines.add( '[' + IntToStr(i) + '] '
       + cd.name
       + ', ' + cd.artist    { The FloatToStrF functions converts & formats...}
       + ', ' + FloatToStrF(cd.price, ffCurrency, 2, 2 ){ a float as a string }
       + ', ' + cd.cdlabel );
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
{ It's a good idea to destroy objects when they're finished with, using Free }
var
   i : integer;
begin
  for i := 1 to ARRAYSIZE do
    obArray[i].Free;
end;

end.
