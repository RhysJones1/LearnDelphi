unit Caseunit;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
var
   i : integer;
   s : string;
begin
   for i := 0 to 255 do
   begin
      s := '';
      case (i) of
        32..47,
        58..64,
        91..96,
        123..255  : s := 'Special : ' ;
        48..57: s := 'Number  : ';
        65..90, 97..122 :  s := 'Letter  : ';
      end;
      if s <> '' then
         ListBox1.Items.Add( Format('%s %d = ''%s''', [s, i, Chr(i)]));
   end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
   i : integer;
   s : string;
begin
   ListBox1.Clear;
   for i := 0 to 255 do
   begin
      s := '';
      case (i) of
        48..57: s := 'Number  : ';
        65..90, 97..122:  s := 'Letter  : ';
        else s := 'Special : ';
      end;
        ListBox1.Items.Add( Format('%s %d = ''%s''', [s, i, Chr(i)]));
   end;

end;

end.
