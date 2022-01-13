program Ifelse;

uses
  Forms,
  Ifunit in 'IFUNIT.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
