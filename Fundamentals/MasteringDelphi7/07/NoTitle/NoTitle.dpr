program NoTitle;

uses
  Forms,
  NoTitleF in 'NoTitleF.pas' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
