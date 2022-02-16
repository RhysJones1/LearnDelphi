unit frmExploringFormUnit_u;

(**************************************************************
* Program Structure: From Unit to end this is our unit

* From interface to var, this is our interface block. This
is where we declare everything we need for the unit such as
classes, attributes, behaviours.

  * uses are imported to enable to program to perform the
    the way we want. These are pre created which saves time

  * type: this part includes all the statements that define
    the form

  * var: this is where we define class level variables


* The implementation section is where all of the logic of the
program is implemented

  * For example, we declared the procedure btnShowMessageClick
    at interface level and now in implementation, we implement
    the logic.
**************************************************************)

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmExploringFormUnit = class(TForm)
    btnShowMessage: TButton;
    bmbClose: TBitBtn;
    procedure btnShowMessageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExploringFormUnit: TfrmExploringFormUnit;

implementation

{$R *.dfm}

procedure TfrmExploringFormUnit.btnShowMessageClick(Sender: TObject);
begin
ShowMessage('We are exploring Forms within the Forms Unit');
end;

end.
