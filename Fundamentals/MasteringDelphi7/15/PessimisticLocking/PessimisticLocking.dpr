program PessimisticLocking;

uses
  Forms,
  PessimisticLockingU1 in 'PessimisticLockingU1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
