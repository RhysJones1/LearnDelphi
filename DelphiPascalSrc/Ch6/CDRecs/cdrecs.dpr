program Cdrecs;

uses
  Forms,
  Cdunit in 'CDUNIT.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
