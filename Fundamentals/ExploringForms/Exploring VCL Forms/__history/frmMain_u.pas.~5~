unit frmMain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmAnother_u, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    btnShowAnother: TButton;
    procedure btnShowAnotherClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

// When the button is clicked, a new form is created
procedure TfrmMain.btnShowAnotherClick(Sender: TObject);
begin
frmAnother.Show;
frmMain.Close;
end;


// When the form is deactivated a new caption is shown
procedure TfrmMain.FormActivate(Sender: TObject);
begin
self.Caption := 'Main Form Activated';
end;

// When the new form is clicked, the caption changes to the new caption
procedure TfrmMain.FormClick(Sender: TObject);
begin
self.Caption := 'Main Form Clicked';
end;

// When a new form is created the caption 'Main Form Created' is shown'
procedure TfrmMain.FormCreate(Sender: TObject);
begin
frmMain.Caption := 'Main Form Created';
end;

//When the form is deactivated the caption is changed to deactivated
//This his handy to see when a form is active or not
procedure TfrmMain.FormDeactivate(Sender: TObject);
begin
frmMain.Caption := 'Main Form Deactivated';
end;

end.



