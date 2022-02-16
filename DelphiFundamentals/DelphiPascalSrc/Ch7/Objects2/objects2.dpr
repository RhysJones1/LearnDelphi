program Objects2;

uses
  Forms,
  Obs2 in 'OBS2.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
