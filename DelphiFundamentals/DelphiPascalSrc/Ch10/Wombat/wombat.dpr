program wombat;

uses
  Forms,
  wombatmain in 'wombatmain.pas' {Form1},
  advobs in 'advobs.pas',
  advconsts in 'advconsts.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
