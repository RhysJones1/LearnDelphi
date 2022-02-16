program ExploringStringVariables;

uses
  Vcl.Forms,
  StringVariables_u in 'StringVariables_u.pas' {frmStringVariables},
  PangramsList_u in 'PangramsList_u.pas' {frmPangramsList};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmStringVariables, frmStringVariables);
  Application.CreateForm(TfrmPangramsList, frmPangramsList);
  Application.Run;
end.
