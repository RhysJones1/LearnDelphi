program Ops;

uses
  Forms,
  Ops1 in 'OPS1.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
