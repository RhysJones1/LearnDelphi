program Unit_17_8_Array_Algorithms_Bubble_Sort;

uses
  Vcl.Forms,
  Bubble_Sort in 'Bubble_Sort.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
