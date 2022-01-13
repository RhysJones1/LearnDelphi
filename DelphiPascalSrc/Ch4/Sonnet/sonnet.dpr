program Sonnet;

uses
  Forms,
  Sonnet1 in 'SONNET1.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
