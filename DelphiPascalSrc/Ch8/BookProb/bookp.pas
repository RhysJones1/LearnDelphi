unit Bookp;
{
  Illustrates the basic techniques for declaring a class and
  constructing and destroying objects.
  Also shows how to create a simple object hierarchy }

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;


type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    BookEd: TEdit;
    AuthorEd: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    AddBtn: TButton;
    ClearBtn: TButton;
    ExitBtn: TButton;
    ShowBtn: TButton;
    ComboBox1: TComboBox;
    ExtraLabel: TLabel;
    ExtraEdit: TEdit;
    GoreScoreCombo: TComboBox;
    procedure ExitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddBtnClick(Sender: TObject);
    procedure ShowBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { --- My declarations --- }
    procedure AddBookOb;
    procedure AddHorrorBookOb;
    procedure AddRefBookOb;
    procedure ShowObList;
    procedure FreeObs;
  end;

{ declare a fixed-length string                 }
  BookString = string[70];
{ declare a gorerating for HorrorBookOb         }
  GoreRating = 0..10;

{ declare a BookOb class        }
  BookOb = class(TObject)
    name   : BookString;
    author : BookString;
    function Describe : BookString;
    constructor Create( aName, anAuthor : BookString );
    destructor Destroy; override; { remember to override the destructor! }
  end;

{ declare a HorrorBookOb class }
  HorrorBookOb = class(BookOb)
    gorescore : integer;
    function Describe : BookString;
    constructor Create( aName, anAuthor : BookString; aGorescore : GoreRating );
    destructor Destroy; override;
  end;

{ declare a RefBookOb class }
  RefBookOb = class(BookOb)
    reftype : BookString;
    function Describe : BookString;
    constructor Create( aName, anAuthor, aReftype : BookString);
    destructor Destroy; override;
  end;

var
  Form1: TForm1;
  obList : TList; { declare a TList to hold our objects }

implementation

{$R *.DFM}


procedure TForm1.ShowObList;
{ casts an object to BookOb then calls the Describe method }
{ Help! There's something wrong!!!                         }
var
   i :integer;
   s : BookString;
begin
  if obList.Count = 0 then
    ListBox1.Items.Add( 'No books in the list!' )
  else
  for i := 0 to obList.Count - 1 do
      ListBox1.Items.Add( BookOb(obList.Items[i]).Describe );
end;

procedure TForm1.FreeObs;
{ Free the objects in the ObList.
  ------------------------------
  This first frees all the objects in the ObList.
  Then is Clears the ObList.
  You must do both. If you Clear the ObList but don't Free the
  individual objects, they will hang around uselessly in memory.
  If you Free the objects but don't clear the ObList, the ObList
  will still 'think' it contains valid objects (which it doesn't,
  since they've been freed) }
var
  i : integer;
begin
  for i := 0 to obList.Count - 1 do
      if obList.Items[i] <> nil then
      begin
         ListBox1.Items.Add( 'Call to FREE Ob: ' +
                             BookOb(obList.Items[i]).Describe );
         BookOb(obList.Items[i]).Free;
      end;
  obList.Clear;
end;

procedure TForm1.ExitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  { Create a TList called ObList when the main form is created }
  obList := TList.Create;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeObs;     { Free the objects in the ObList, then...      }
  obList.Free; { Free the ObList when the main form is closed }
end;

procedure TForm1.AddBookOb;
{ add an ordinary BookOb to the ObList and display its data on the List box }
var
  book : BookOb;
begin
  book := BookOb.Create( BookEd.Text, AuthorEd.Text );
  obList.Add( book );
end;

procedure TForm1.AddRefBookOb;
{ add a RefBookOb to the ObList and display its data on the List box        }
var
  book : RefBookOb;
begin
  if (ExtraEdit.Text = '') then
        MessageDlg('You must enter a book type (e.g. "Physics" or "Art") ',
                    mtInformation, [mbOk], 0)
  else
  begin
    book := RefBookOb.Create( BookEd.Text, AuthorEd.Text, ExtraEdit.Text );
    obList.Add( book );
  end;
end;

procedure TForm1.AddHorrorBookOb;
{ add a HorrorBookOb to the ObList and display its data on the List box     }
var
  book  : HorrorBookOb;
  score : integer;
  ok    : boolean;
begin
  ok := true;
  { First check that a valid gorescore has been entered                     }
  { try to convert the contents o ExtraEdit to an integer                   }
  try
    score := StrToInt(GoreScoreCombo.Text);
  except
     on EConvertError do     { Error if user did not enter an integer }
     begin                   { recover from this by setting score to  }
       score := 0;           { 0 and displaying a message             }
       MessageDlg('Invalid gorescore entry!', mtInformation,[mbOk], 0);
      ok := false;
     end;
  end;
  if ok then                { if the integer is valid, is it 0..10?  }
     if (score < 0) or (score > 10) then
        MessageDlg('The score must be a number from 0 to 10!', mtInformation,
                   [mbOk], 0)
  else
  begin                     { if all is ok, create the object       }
    book := HorrorBookOb.Create( BookEd.Text, AuthorEd.Text, score );
    obList.Add( book );
  end;
end;

procedure TForm1.AddBtnClick(Sender: TObject);
{ User wants to add a book object. Determine the type of object         }
{ by the Combo box item that's been selected, then call an appropriate  }
{ method.                                                               }
begin
  if ((BookEd.Text = '') or (AuthorEd.Text = '')) then
        MessageDlg('You must enter a book and an author!', mtInformation,
      [mbOk], 0)
  else
  if ComboBox1.Text = 'Horror' then
    AddHorrorBookOb
  else
  if ComboBox1.Text = 'Reference' then
    AddRefBookOb
  else
    AddBookOb;
end;

procedure TForm1.ShowBtnClick(Sender: TObject);
begin
  ShowObList;
end;

procedure TForm1.ClearBtnClick(Sender: TObject);
begin
  FreeObs;
end;


procedure TForm1.ComboBox1Change(Sender: TObject);
{ When a change (normally a selection) is made in the ComboBox, see if the    }
{ selected item indicates a special type of book. If so, display a label      }
{ and text entry field to allow the user to enter the additional data needed  }
{ to create an object of the specified type.                                  }
begin
  if ComboBox1.Text = 'Horror' then
  begin
    ExtraLabel.Caption := 'Enter Gore score [1 to 10]';
    ExtraLabel.Show;
    ExtraEdit.Hide;
    GoreScoreCombo.Show;
    GoreScoreCombo.SetFocus;
  end
  else if ComboBox1.Text = 'Reference' then
  begin
    ExtraLabel.Caption := 'Enter the type of reference book';
    ExtraEdit.Text := 'General';
    ExtraLabel.Show;
    ExtraEdit.Show;
    GoreScoreCombo.Hide;
    ExtraEdit.SetFocus;
  end
  else
  begin   { if it's an ordinary book, don't display the extra edit box       }
    ExtraLabel.Hide;
    ExtraEdit.Hide;
    GoreScoreCombo.Hide;
  end;
end;


{ --- BOOKOB METHOD --- }
function BookOb.Describe : BookString;
{ Concatenate name and author - an illustrative, rather than a useful method! }
begin
  result := Format( '[General Book] %s by %s', [name,author]);
end;

{ --- CONSTRUCTORS --- }
{ Create each object by calling its ancestor's constructor:
       inherited Create;
  then initialising any additional fields }

constructor BookOb.Create( aName, anAuthor : BookString );
{ a standard BookOb. Call default initialisation, then init the 2 fields }
begin
  inherited Create;
  Form1.ListBox1.Items.Add( 'CONSTRUCTOR: BookOb.Create' );
  name := aName;
  author := anAuthor;
end;

function HorrorBookOb.Describe : BookString;
{ Concatenate name and author - an illustrative, rather than a useful method! }
begin
  result := Format( '[Horror Book] %s by %s. Gore Score: %d',
                    [name,author,gorescore]);
end;

constructor HorrorBookOb.Create( aName, anAuthor : BookString; aGorescore : GoreRating );
{ a HorrorBookOb. Call its ancestor (BookOb) constructor, then init gorescore }
begin
  inherited Create(aName, anAuthor);
  Form1.ListBox1.Items.Add( 'CONSTRUCTOR: HorrorBookOb.Create' );
  gorescore := aGorescore;
end;

function RefBookOb.Describe : BookString;
{ Concatenate name and author - an illustrative, rather than a useful method! }
begin
result := Format( '[Reference Book] %s by %s. Book type: %s',
                    [name,author,reftype]);
end;

constructor RefBookOb.Create( aName, anAuthor, aReftype : BookString );
{ a RefBookOb. Call its ancestor (BookOb) constructor, then init reftype      }
begin
  inherited Create(aName, anAuthor);
  Form1.ListBox1.Items.Add( 'CONSTRUCTOR: RefBookOb.Create' );
  reftype := aReftype;
end;

{ --- DESTRUCTORS --- }
{ Destroy the objects you created when you've finished with them.
  If these objects contain references to other objects or resources, the
  destructor should first Free these. It should then call the inherited
  destructor }
destructor BookOb.Destroy;
begin
  Form1.ListBox1.Items.Add( 'DESTRUCTOR: BookOb.Destroy' );
  name := '';
  author := '';
  inherited Destroy;
end;

destructor HorrorBookOb.Destroy;
begin
  Form1.ListBox1.Items.Add( 'DESTRUCTOR: HorrorBookOb.Destroy' );
  gorescore := 0;
  inherited Destroy;
end;

destructor RefBookOb.Destroy;
begin
  Form1.ListBox1.Items.Add( 'DESTRUCTOR: RefBookOb.Destroy' );
  reftype := '';
  inherited Destroy;
end;


end.
