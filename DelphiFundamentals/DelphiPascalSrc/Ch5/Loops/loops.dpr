program Loops;

uses
  Forms,
  Loop1 in 'LOOP1.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
