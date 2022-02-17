program ASCIICharacters_p;

uses
  Vcl.Forms,
  ASCIICharacters_u in 'ASCIICharacters_u.pas' {frmASCIICharacters};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmASCIICharacters, frmASCIICharacters);
  Application.Run;
end.
