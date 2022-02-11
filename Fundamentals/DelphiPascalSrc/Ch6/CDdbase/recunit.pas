unit Recunit;
{ Illustrates reading and writing records to a typed file.
  Note, very little error-checking is done, so don't try anything clever! }

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls;

type
  Str30= string[30];

  CD = record
     name    : Str30;
     artist  : Str30;
     price   : double;
     cdlabel : Str30;
  end;




  TForm1 = class(TForm)
    CountBtn: TButton;
    RecNumEd: TEdit;
    LoadBtn: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    FilePosLabel: TLabel;
    NameEd: TEdit;
    ArtistEd: TEdit;
    PriceEd: TEdit;
    SaveAsNewBtn: TButton;
    CDLabelEd: TEdit;
    Label5: TLabel;
    SaveChangesBtn: TButton;
    procedure CountBtnClick(Sender: TObject);
    procedure LoadBtnClick(Sender: TObject);
    procedure SaveAsNewBtnClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SaveChangesBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowCD( aCD: CD );
    function FieldsOK : boolean;
    procedure SaveCDRec( saveAsNew : boolean );
  end;



const
  REC_FILE_NAME = 'MyCDs.dat';

var
  Form1: TForm1;
  recFile          : File of CD;
  recPos           : integer;

implementation
{$R *.DFM}

function TForm1.FieldsOK : boolean;
{ Check that the data in the Edit boxes is valid for a CD record       }
{ Return true if it is. False otherwise.                               }
{ Call this function before attempting to save a record to disk        }
var
  f   : double;
  msg : string;
begin
  msg := '';
  { do all edit boxes contain data? }
  if (NameEd.Text = '') or
     (ArtistEd.Text = '') or
     (PriceEd.Text = '') or
     (CDLabelEd.Text = '') then
        msg := 'You must add data to each of the fields!'
  else
  try   { check that PriceEd.Text can be converted to an integer }
    f := StrToFloat(PriceEd.Text);
    except
      on EConvertError do
      begin
         f := 0.0;
         msg := 'You must enter a number into the price field!';
      end;
  end; { try,except }
  { If no error msg was initialised, the data is OK, return true }
  { Otherwise, there was a problem, return false                 }
  if msg <> '' then
  begin
    MessageDlg( msg, mtInformation, [mbOk], 0);
    result := false;
  end
  else
    result := true;
end;

procedure TForm1.ShowCD( aCD : CD );
{ Display the fields of record, aCD in the Edit boxes on the form }
begin
  With aCD do
  begin
    NameEd.Text := name;
    ArtistEd.Text := artist;
    PriceEd.Text := FloatToStr(price);
    CDLabelEd.Text := cdlabel;
  end;
  FilePosLabel.Caption := IntToStr( recPos );
end;

procedure TForm1.CountBtnClick(Sender: TObject);
{ Count the records in the data file }
var
   size             : longint;
begin
    size := 0;
    if not FileExists( REC_FILE_NAME ) then       { Check that input file exists }
        ShowMessage('File: ' + REC_FILE_NAME + ' not found!')
    else
    begin
      AssignFile(recFile, REC_FILE_NAME );
      Reset(recFile);
      size := FileSize(recFile);
      CloseFile(recFile);
      ShowMessage('File: ' + REC_FILE_NAME + ' contains ' + IntToStr(size)
                         + ' records.')
    end;
end;

procedure TForm1.LoadBtnClick(Sender: TObject);
var
  recNum        : integer;
  invalidNumber : boolean;
  aRecord       : CD;
begin
   invalidNumber := false;
   try   { check that RecNumEd.Text can be converted to an integer }
      recNum := StrToInt(RecNumEd.Text);
    except
      on EConvertError do 
      begin
         recNum := 0;
         MessageDlg(  '"' + RecNumEd.Text + '" is not a valid integer!',
                      mtInformation, [mbOk], 0);
         invalidNumber := true;
      end
    end; { except }
    if not invalidNumber then
    begin
         if not FileExists( REC_FILE_NAME ) then
            ShowMessage('File: ' + REC_FILE_NAME + ' not found!')
         else
         begin
{ ----- Open the file ----- }
           AssignFile(recFile, REC_FILE_NAME );
           Reset(recFile);
           { make sure the specified record number is valid }
           if (recNum < 0) or (recNum > (FileSize(recFile)-1)) then
              ShowMessage('Record Number ' + IntToStr(recNum) + ' not found!')
           else
           begin
{ ----- Seek and read the record at the specified position -----     }
             Seek( recFile, recNum );
                   { update the global var, RecPos                   }
             recPos := FilePos( recFile );
             Read( recFile, aRecord );
                   { call procedure to display fields in Edit boxes }
             ShowCD( aRecord );
           end;
           CloseFile(recFile);
         end;
    end;

end;

procedure TForm1.SaveCDRec( saveAsNew : boolean);
var
  aCD : CD;
begin
  if FieldsOK then
  begin
     AssignFile(recFile, REC_FILE_NAME);
     if not FileExists( REC_FILE_NAME ) then
        Rewrite( recFile ) { Create a new file }
     else
        Reset(recFile);
     begin
        { assign values to the record fields }
        aCD.name := NameEd.Text;
        aCD.artist := ArtistEd.Text;
        aCD.price := StrToFloat(PriceEd.Text);
        aCD.cdlabel := CDLabelEd.Text;
        { then open file, seek the RecPos (the position of the record that }
        { was last loaded, then write the new record into the file at      }
        { this position                                                    }
          { Don't Rewrite the file or you'll destroy all existing data }
        if saveAsNew then
        begin          // --- create a new record
           Seek(recFile,FileSize(recFile));
           recPos := FilePos( recFile );               { update RecPos }
           FilePosLabel.Caption := IntToStr( recPos ); { show Rec Num }
        end
        else          // --- modify the record being edited
           Seek(recFile, recPos );
        Write(recFile, aCD);
        CloseFile(recFile);
     end;
  end;
end;

procedure TForm1.SaveAsNewBtnClick(Sender: TObject);
begin
   SaveCDRec( true );
end;


procedure TForm1.SaveChangesBtnClick(Sender: TObject);
begin
   SaveCDrec(false);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  recPos := 0;
end;

end.
