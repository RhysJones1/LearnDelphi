program ExploringFloatingPointNumbers;

uses
  Vcl.Forms,
  ExploringFloatingPointNumbers_u in 'ExploringFloatingPointNumbers_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
