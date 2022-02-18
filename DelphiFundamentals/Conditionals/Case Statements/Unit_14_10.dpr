program Unit_14_10;

uses
  Vcl.Forms,
  CaseStatement in 'CaseStatement.pas' {frmCaseStatement};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCaseStatement, frmCaseStatement);
  Application.Run;
end.
