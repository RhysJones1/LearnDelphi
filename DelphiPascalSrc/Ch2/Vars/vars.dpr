program Vars;

uses
  Forms,
  Varunit1 in 'VARUNIT1.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
