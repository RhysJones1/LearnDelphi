unit MathQuiz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TfrmMathQuiz = class(TForm)
    pnlMathQuiz: TPanel;
    Label2: TLabel;
    lblQuestionNumber: TLabel;
    pnlInfo: TPanel;
    pnlScore: TPanel;
    btnNext: TButton;
    sedUserAnswer: TSpinEdit;
    pnlAssessment: TPanel;
    procedure btnNextClick(Sender: TObject);
    procedure sedUserAnswerExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMathQuiz: TfrmMathQuiz;

implementation

{$R *.dfm}

var
  intQuestionNumber, intUserAnswer, intCorrectAnswer, intScore, intLeftOperand, intRightOperand : Integer;
  chrOperator : Char;
  arrOperators : Array[1..3] of Char;


procedure TfrmMathQuiz.btnNextClick(Sender: TObject);
begin
  //Increment Question Number by One
  Inc(intQuestionNumber);
  lblQuestionNumber.Caption := 'Question ' + IntToStr(intQuestionNumber);

  //Set up SpinEdit for user's answer
  with sedUserAnswer do
  begin
    Enabled := True;
    Value := 0;
    SetFocus;
  end;

  //Set up Panel for Info
  with pnlInfo do
  begin
    Caption := 'Press TAB-key to submit answer';
    Font.Color := clBlack;
  end;

  //Set up Button for next quiz
  btnNext.Caption := 'Next';

  //Display Score
  pnlScore.Caption := IntToStr(intScore);

  //Reposition the Seed of the Randomizer
  Randomize;

  //Get random left-operand
  intLeftOperand := 1 + Random(10);

  //Get random right-operand
  intRightOperand := 1 + Random(10);

  //Set Operator
  arrOperators[1] := '+';
  arrOperators[2] := '-';
  arrOperators[3] := 'x';

  //Get random operator
  chrOperator := arrOperators[1 + Random(3)];

  //Display quiz
  pnlMathQuiz.Caption := IntToStr(intLeftOperand) + #32 + chrOperator + #32 + IntToStr(intRightOperand);

  //Hide final assesment
  pnlAssessment.Visible := False;
end;



procedure TfrmMathQuiz.sedUserAnswerExit(Sender: TObject);
begin
   //Determine the operator in the question and calculate correct answer
   case chrOperator of
      '+' : intCorrectAnswer := intLeftOperand + intRightOperand;
      '-' : intCorrectAnswer := intLeftOperand - intRightOperand;
      'x' : intCorrectAnswer := intLeftOperand * intRightOperand;
   end;

   //Read user's answer
   intUserAnswer := sedUserAnswer.Value;

   //Compare user's answer with correct answer
   if intUserAnswer = intCorrectAnswer then //Correct answer
   begin
     Inc(intScore, 10); //Add 10 points to score
     pnlScore.Caption := IntToStr(intScore); //Display new score
     pnlInfo.Caption := 'Correct!';
     pnlInfo.Font.Color := clGreen;
   end
   else //Incorrect answer
   begin
     pnlInfo.Caption := 'Wrong! Correct answer is ' + IntToStr(intCorrectAnswer);
     pnlInfo.Font.Color := clRed;
   end;

   //Disable SpinEdit to stop cheating
   sedUserAnswer.Enabled := False;

   //After 10 math questions
   if intQuestionNumber = 10 then
   begin
     btnNext.Caption := 'Play again';
     pnlAssessment.Visible := True;
     if intScore > 70 then //Above 70 is a pass
     begin
       pnlAssessment.Font.Color := clGreen;
       pnlAssessment.Caption := 'Well done! You pass with ' + IntToStr(intScore) + '%';
     end
     else //70 or less is a fail
     begin
       pnlAssessment.Font.Color := clRed;
       pnlAssessment.Caption := 'Too bad! You fail with ' + IntToStr(intScore) + '%';
     end;

     ShowMessage('End of quiz. Click "Play again" to start a new quiz');

     //Reset question number and score
     intQuestionNumber := 0;
     intScore := 0;

   end;
end;

end.
