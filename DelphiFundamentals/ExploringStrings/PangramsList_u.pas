unit PangramsList_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPangramsList = class(TForm)
    btnSelect: TButton;
    cboPangramsList: TComboBox;
    procedure btnSelectClick(Sender: TObject);
    procedure cboPangramsListChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strSelectedPangram : String;
  end;

var
  frmPangramsList: TfrmPangramsList;

implementation

{$R *.dfm}

procedure TfrmPangramsList.btnSelectClick(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmPangramsList.cboPangramsListChange(Sender: TObject);
begin
  strSelectedPangram := cboPangramsList.text;
end;

end.
