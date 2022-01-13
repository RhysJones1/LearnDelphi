unit Bug;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    ShowAllBtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ShowAllBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type

     CDOb = class(TObject)
       name     : string[20];
       artist   : string[20];
       number   : integer;
     end;

const
   ARRAYSIZE = 9;

type
   strArray = array[0..ARRAYSIZE] of string[20];

const
   NAMEARRAY: strArray = ('Greatest Hits','Big Ones','Golden Greats','Top Hits',
                         'All the Best','Fab Grooves','Unforgettable','Yeah!',
                         'Spiffing Tunes','Rare Hits' );
   ARTISTARRAY: strArray = ('The Worms', 'Tammy McPherson',
                         'Stan Bloggs Big Band', 'The Three Niners', 'Sickbag',
                         'Purple Floyd', 'Plop', 'The Mealybugs', 'James First',
                         'The Beach Bums' );
var
  Form1: TForm1;
  obArray : array[0..ARRAYSIZE] of CDOb;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
var
  i : integer;
  cd : CDOb;
begin
  for i := 0 to ARRAYSIZE do
  begin
    cd := CDOb.Create; { You *must* Create an object before using it! }
    cd.name := NAMEARRAY[i];
    cd.artist := ARTISTARRAY[i];
    cd.number := i;
    obArray[i] := cd;
  end;

end;

procedure TForm1.ShowAllBtnClick(Sender: TObject);
var
   i :integer;
   aCD : cdOb;
begin
  for i := 1 to ARRAYSIZE do      
  begin
    aCD := ObArray[i];
    Memo1.Lines.add( aCD.name     { *** place a breakpoint on this line! *** }
       + ', ' + aCD.artist
       + ', Number: [' + IntToStr(aCD.number) + ']')
  end;
end;
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
{ It's a good idea to destroy objects when they're finished with, using Free }
var
   i : integer;
begin
  for i := 0 to ARRAYSIZE do
    obArray[i].Free;
end;

end.
