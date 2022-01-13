program Bookobs;

uses
  Forms,
  Books in 'BOOKS.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
