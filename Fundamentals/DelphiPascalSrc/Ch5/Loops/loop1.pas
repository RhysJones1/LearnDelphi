unit Loop1;
{
  Illustrates the three loop constructs - for, while and repeat.
  Uses these to copy Lines of text from a Memo into a ListBox.

  To understand these, recall that a Memo's 'Lines' and a ListBox's
  'Items' are indexed from 0.

  So, if a Memo contains these Lines is indexed as shown:
  Lines (strings in Memo)      Index
  'String1'                    [0]
  'String2'                    [1]
  'String3'                    [2]

  However, if you use the Count method it will count 3 strings in the memo.
  This explains why we have had to decrement 1 from Count in the FOR and
  WHILE tests:

      for i := 0 to Memo1.Lines.Count-1 do

      while (Memo1.Lines.Count-1 > i) do

  However, the REPEAT test does not decrement Count:

  repeat
     ListBox1.Items.Add(Memo1.Lines[i]);
     i := i + 1;
  until i = Memo1.Lines.Count;

  This is because the value of i is incremented *after* the last line
  in the Memo has been processed.
}

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
{ FOR }
var
  i : integer;
begin
  ListBox1.Clear;
  for i := 0 to Memo1.Lines.Count-1 do
     ListBox1.Items.Add(Memo1.Lines[i]);
end;

procedure TForm1.Button2Click(Sender: TObject);
{ REPEAT }
var
  i : integer;
begin
  ListBox1.Clear;
  i := 0;
  if not (Memo1.Lines.Count = 0) then
  repeat
     ListBox1.Items.Add(Memo1.Lines[i]);
     i := i + 1;
  until i = Memo1.Lines.Count;
end;

procedure TForm1.Button3Click(Sender: TObject);
{ WHILE }
var
   i : integer;
begin
  ListBox1.Clear;
  i := 0;
  while (Memo1.Lines.Count > i) do
  begin
     ListBox1.Items.Add(Memo1.Lines[i]);
     i := i + 1;
  end
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ListBox1.Clear;
end;

end.
