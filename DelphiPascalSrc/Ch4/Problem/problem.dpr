program Problem;

uses
  Forms,
  Probunit in 'PROBUNIT.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
