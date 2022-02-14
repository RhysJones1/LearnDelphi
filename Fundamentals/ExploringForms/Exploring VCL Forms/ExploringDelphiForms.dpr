program ExploringDelphiForms;

uses
  Vcl.Forms,
  frmMain_u in 'frmMain_u.pas' {frmMain},
  frmAnother_u in 'frmAnother_u.pas' {frmAnother},
  frmOneMore_u in 'frmOneMore_u.pas' {frmOneMore};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAnother, frmAnother);
  Application.CreateForm(TfrmOneMore, frmOneMore);
  Application.Run;
end.
