program Unit_17_3_Randomizing_the_elements_of_an_Array;

uses
  Vcl.Forms,
  MathQuiz in 'MathQuiz.pas' {frmMathQuiz};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMathQuiz, frmMathQuiz);
  Application.Run;
end.
