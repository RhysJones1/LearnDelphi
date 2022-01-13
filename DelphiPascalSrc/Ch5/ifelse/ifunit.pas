unit Ifunit;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
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
      if ((i >= 32) and (i <= 47)) or ((i >= 58) and (i <= 64))
         or ((i >= 91) and ((i <= 96)) or (i >= 123)) then
          s := 'Special : '
      else if (i >= 48) and (i <= 57) then
          s := 'Number  : '
      else if ((i >= 65) and (i <=90 )) or ((i >= 97) and (i <=122)) then
          s := 'Letter  : ';

      if s <> '' then
         ListBox1.Items.Add( Format('%s %d = ''%s''', [s, i, Chr(i)]));
   end;
end;

end.
