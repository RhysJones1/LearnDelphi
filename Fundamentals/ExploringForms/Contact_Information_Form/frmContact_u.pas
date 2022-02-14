(************************************************
 This program is on exploring Delphi VCL Forms.
 The form created is more formal than my
 previous forms as I wanted to produce something
 a little closer to what a form would look like
 in the real world.
************************************************)


unit frmContact_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Samples.Spin, Vcl.ComCtrls, Vcl.Imaging.jpeg;

type
  TfrmContact = class(TForm)
    pnlHeader: TPanel;
    pnlPersonalInformation: TPanel;
    pnlAddressInformation: TPanel;
    pnlContactInformation: TPanel;
    pnlActions: TPanel;
    btnDisplay: TButton;
    bnbClose: TBitBtn;
    bnbReset: TBitBtn;
    lblFirstName: TLabel;
    lblSurname: TLabel;
    lblGender: TLabel;
    lblAge: TLabel;
    lblStreet: TLabel;
    lblCity: TLabel;
    lblCountry: TLabel;
    lblPostCode: TLabel;
    lblTelephone: TLabel;
    lblEmail: TLabel;
    edtFirstName: TEdit;
    edtSurname: TEdit;
    edtStreet: TEdit;
    edtCity: TEdit;
    edtCountry: TEdit;
    edtPostCode: TEdit;
    edtTelephone: TEdit;
    edtEmail: TEdit;
    cbxGender: TComboBox;
    sedAge: TSpinEdit;
    imgPhoto: TImage;
    chkSendNewsletter: TCheckBox;
    redOutput: TRichEdit;

    // Procedures for Display Button
    procedure btnDisplayClick(Sender: TObject);
    procedure btnDisplayMouseEnter(Sender: TObject);
    procedure btnDisplayMouseLeave(Sender: TObject);
    procedure bnbResetClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContact: TfrmContact;

implementation

{$R *.dfm}

    (************************************************
     Procedure for the Reset Button.
     On click it will clear all of the information
     ************************************************)
procedure TfrmContact.bnbResetClick(Sender: TObject);
begin
edtFirstName.Clear;
edtSurname.Clear;
edtStreet.Clear;
edtCity.Clear;
edtCountry.Clear;
edtPostCode.Clear;
edtTelephone.Clear;
edtEmail.Clear;
redOutput.Clear;
cbxGender.ItemIndex := -1;
sedAge.Value := 16;
chkSendNewsletter.Checked := True;
frmContact.Caption := 'Contact Form';
redOutput.Color := clWhite;
edtFirstName.SetFocus;
end;

   (************************************************
     Procedure for the Display Button.
     On click it will display customer information
     ************************************************)
procedure TfrmContact.btnDisplayClick(Sender: TObject);
begin
redOutput.Color :=  clskyblue;
frmContact.Caption := 'Displaying Customer Information';
redOutput.Lines.Add('Displaying Customer Information for ' + edtFirstName.Text
                     + ' ' + edtSurname.Text);
redOutput.Lines.Add('--------------------------------------------------------');
redOutput.Lines.Add('Gender: ' + cbxGender.Text);
redOutput.Lines.Add('Address: ' + edtStreet.Text + ', ' + edtCity.Text+ ', '
                     + edtCountry.Text + ', ' + edtPostCode.Text);
redOutput.Lines.Add('Telephone: ' + edtTelephone.Text);
redOutput.Lines.Add('Email: ' + LowerCase(edtEmail.Text));
redOutput.Lines.Add('Your Username is: ' + UpperCase(Copy(edtFirstName.Text, 1, 3)
                     + Copy(edtSurname.Text, 1, 3) + Copy(edtTelephone.Text, 1, 3)));
end;

    (*****************************************************
     Procedure for the Display Button. On mouse hover the
     caption changes to give the user more information
     *****************************************************)
procedure TfrmContact.btnDisplayMouseEnter(Sender: TObject);
begin
btnDisplay.caption := 'Click to Display';
end;

    (**************************************
     Procedure for the Display Button
     On mouse removal the caption returns
     back to original caption
     **************************************)
procedure TfrmContact.btnDisplayMouseLeave(Sender: TObject);
begin
btnDisplay.caption := 'Display';
end;

end.
