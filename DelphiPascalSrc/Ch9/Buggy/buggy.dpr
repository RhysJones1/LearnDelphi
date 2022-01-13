program Buggy;

uses
  Forms,
  Bug in 'BUG.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
