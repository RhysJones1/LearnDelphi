unit props;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    NameEdit: TEdit;
    AuthorEdit: TEdit;
    Label1: TLabel;
    Button2: TButton;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  BookString = string[70];

  BookOb = class
    strict private
      _name   : BookString;
      _author : BookString;
      procedure AddAuthor(anAuthor: BookString);
    public
      property Name : BookString read _name write _name;
      property Author : BookString read _author write AddAuthor;
      function Describe : BookString;
      constructor Create;
      destructor Destroy; override;
  end;

var
  Form1: TForm1;
  aBook : BookOb;

implementation

{$R *.dfm}


procedure BookOb.AddAuthor( anAuthor: BookString ) ;
var
  trimmedAuthor: BookString;
begin
  trimmedAuthor := Trim(anAuthor);
  if trimmedAuthor = '' then
     trimmedAuthor := 'Anon'
  else if pos(' ', trimmedAuthor ) = 0 then
    trimmedAuthor := '[First name unknown] ' + trimmedAuthor ;
  _author := trimmedAuthor;
end;

constructor BookOb.Create;
begin
  _name := 'Unknown';
  _author := 'Unknown';
end;

function BookOb.Describe: BookString;
begin
   result := _name + ' by ' + _author;
end;

destructor BookOb.Destroy;
begin
  inherited;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add(aBook.Describe);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  aBook.Name := NameEdit.Text;
  aBook.Author := AuthorEdit.Text;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  aBook := BookOb.Create();
end;

end.
