program CharacterFromString_p;

uses
  Vcl.Forms,
  CharFromString_u in 'CharFromString_u.pas' {frmCharFromString};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCharFromString, frmCharFromString);
  Application.Run;
end.
