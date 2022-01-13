program Proc;

uses
  Forms,
  Procunit in 'PROCUNIT.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
