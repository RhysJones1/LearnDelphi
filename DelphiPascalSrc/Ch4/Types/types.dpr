program Types;

uses
  Forms,
  Typeunit in 'TYPEUNIT.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
