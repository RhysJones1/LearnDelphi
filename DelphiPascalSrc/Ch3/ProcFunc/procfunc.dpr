program Procfunc;

uses
  Forms,
  Pfunit in 'PFUNIT.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
