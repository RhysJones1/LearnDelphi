unit Obs2;

interface
(* A simple example of saving object data to disk by mapping their fields
   on the fields of a compatible record type. This is ok when working with
   one type of object. When working with hirerchies of objects saving data
   is much tricker. Delphi has special 'streaming' classes which can be used
   by advanced users. As an alternative, you could save data to a text file.
   However, you would need to take enormous care when loading the data
   back in that you are loading the correct data into the varying types
   of object! Be warned: This is not a simple task! *)
uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    ShowObsBtn: TButton;
    FreeObsBtn: TButton;
    SaveBtn: TButton;
    CreateObsBtn: TButton;
    LoadBtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ShowObsBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CreateObsBtnClick(Sender: TObject);
    procedure FreeObsBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure LoadBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateObs;
    procedure FreeObs;
  end;

type

  Str30 = string[30];

  CDOb = class
     name    : Str30;
     artist  : Str30;
     price   : double;
     cdlabel : Str30;
  end;

  { define a compatible record for disk IO - file saving and loading }
  CDRec = record
     name    : Str30;
     artist  : Str30;
     price   : double;
     cdlabel : Str30;
  end;

const
   ARRAYSIZE = 10;
   FILENAME = 'RecFile.sav';

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
procedure TForm1.CreateObs;
var
  i : integer;
  cd : CDOb;
begin
  for i := 1 to ARRAYSIZE do
    if ObArray[i] = nil then
    begin
      cd := CDOb.Create; { You *must* Create an object before using it! }
      cd.name := NAMEARRAY[i];
      cd.artist := ARTISTARRAY[i];
      cd.price := PRICEARRAY[i];
      cd.cdlabel := LABELARRAY[i];
      obArray[i] := cd;
    end;
end;

procedure TForm1.FreeObs;
var
   i : integer;
begin
  for i := 1 to ARRAYSIZE do
    if obArray[i] <> nil then
    begin
       obArray[i].Free;
       obArray[i] := nil;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CreateObs;
end;

procedure TForm1.ShowObsBtnClick(Sender: TObject);
{ iterate through the array, ObArray, displaying the data from the
  fields of the CDOb in each array slot }
var
   i :integer;
   cd : CDOb;
begin
  for i := 1 to ARRAYSIZE do
  begin
    cd := ObArray[i];
    if cd = nil then
       Memo1.Lines.add( '[' + IntToStr(i) + '] = Nil' )
    else
       Memo1.Lines.add( '[' + IntToStr(i) + '] '
       + cd.name
       + ', ' + cd.artist    { The FloatToStrF functions converts & formats...}
       + ', ' + FloatToStrF(cd.price, ffCurrency, 2, 2 ){ a float as a string }
       + ', ' + cd.cdlabel );
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeObs;
end;

procedure TForm1.CreateObsBtnClick(Sender: TObject);
begin
   CreateObs;
end;

procedure TForm1.FreeObsBtnClick(Sender: TObject);
begin
  FreeObs;
end;

procedure TForm1.SaveBtnClick(Sender: TObject);
var
   recFile : file of CDRec;
   i       : integer;
   aRec     : CDRec;
begin
   AssignFile(recFile, FILENAME);
   Rewrite(recFile);
   for i := 1 to ARRAYSIZE do
   begin
      { if object variable is nil then save a record with '' or 0 value fields }
      if ObArray[i] = nil then
      begin
        aRec.name := '';
        aRec.artist := '';
        aRec.price := 0.0;
        aRec.cdlabel := '';
      end
      { else map object's fields onto a record and save the record             }
      else
      begin
        aRec.name := ObArray[i].name;
        aRec.artist := ObArray[i].artist;
        aRec.price := ObArray[i].price;
        aRec.cdlabel := ObArray[i].cdlabel;
      end;
        Write(recFile,aRec);
   end;
   CloseFile(recFile);
end;

procedure TForm1.LoadBtnClick(Sender: TObject);
var
  aCDOb : cdOb;
  aCDRec : cdRec;
  recFile : File of CDRec;
  i : integer;
begin
   if not FileExists(FILENAME) then
      ShowMessage( 'Can''t find the file ' + FILENAME + '!' )
   else
   begin
      FreeObs; { clear existing obs from array    }
      i := 1;  { set index, i, to slot 1 of array }
      AssignFile(recFile, FILENAME);
      Reset(recFile);
      { Read in records until end of file (eof) is reached }
     while not eof(recFile) do
     begin
         Read(recFile,aCDRec);
         { if it's an 'empty' record, create a 'nil' object   }
         if aCDRec.name = '' then
            ObArray[i] := nil
         else
         { else create an object and copy record data into it }
         begin
           aCDOb := cdOb.Create;
           aCDOb.name := aCDRec.name;
           aCDOb.artist := aCDRec.artist;
           aCDOb.price  := aCDRec.price;
           aCDOb.cdlabel := aCDRec.cdlabel;
           ObArray[i] := aCDOb;
         end;
         i := i + 1 ; { increment i ready for next turn through the loop }
      end;
      CloseFile( recFile );
   end;
end;

end.
