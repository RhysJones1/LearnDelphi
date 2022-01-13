program Bookprob;

uses
  Forms,
  Bookp in 'BOOKP.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
