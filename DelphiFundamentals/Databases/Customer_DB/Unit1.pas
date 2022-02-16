unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, CustData;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Button1: TButton;
    UserID: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  sInput : string;
  bFound : boolean;

begin
userID.Clear;
sInput := edit1.Text;
bFound := false;

with CustData_db do
  begin
    tblCUST.First;
    while not tblCUST.eof do
      begin
        if tblCUST['full_name'] = sInput then
          begin
            userID.lines.Add('Your user ID is: ');
            userID.Lines.Add(tblCUST['user_id']);
            bFound := True;
            break;

          end;

        tblCUST.Next;
      end;
  if bFound = False then
    showmessage('Details not found');
  end;
end;


end.
