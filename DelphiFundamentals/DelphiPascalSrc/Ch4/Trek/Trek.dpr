program Trek;

uses
  Forms,
  Starship in 'STARSHIP.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
