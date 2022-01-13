program Objects;

uses
  Forms,
  Obs in 'OBS.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
