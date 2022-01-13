program Agetest;

uses
  Forms,
  Age1 in 'AGE1.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
