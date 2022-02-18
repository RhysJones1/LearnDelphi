program Unit_17_7_Array_Intersection;

uses
  Vcl.Forms,
  ArrayIntersection in 'ArrayIntersection.pas' {frmArrayIntersection};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmArrayIntersection, frmArrayIntersection);
  Application.Run;
end.
