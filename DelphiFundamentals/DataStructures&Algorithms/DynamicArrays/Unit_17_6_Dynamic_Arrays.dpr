program Unit_17_6_Dynamic_Arrays;

uses
  Vcl.Forms,
  Dynamic_Array in 'Dynamic_Array.pas' {frmDynamicArray};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDynamicArray, frmDynamicArray);
  Application.Run;
end.
