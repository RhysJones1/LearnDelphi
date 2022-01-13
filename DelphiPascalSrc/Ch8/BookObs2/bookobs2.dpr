program Bookobs2;

uses
  Forms,
  Books2 in 'BOOKS2.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
