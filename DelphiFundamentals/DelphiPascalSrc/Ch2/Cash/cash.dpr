program Cash;

uses
  Forms,
  Cash1 in 'CASH1.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
