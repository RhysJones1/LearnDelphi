program Scope;

uses
  Forms,
  Scopunit in 'SCOPUNIT.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
