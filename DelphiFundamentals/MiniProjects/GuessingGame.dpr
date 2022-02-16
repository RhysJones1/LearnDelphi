// Simple guessing game where the user picks a number between 1 - 10 until they get it right
program GuessingGame;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils,
  Vcl.Dialogs,
  Character,
  Math;

var
  W, X, Y: Integer; // These will be used within the guessing game

begin
  try
     // Use Repeat Until to create a guessing game
  W := RandomRange(0,10); // Number we try to guess
  X := 0; // Our guess
  Repeat
    Write('Guess the Number : ');
    Readln(X);
    if(X > W) then
      Writeln('To Big');
    if(X < W) then
      Writeln('To Small');
  Until W = X;
  Writeln('You Guessed It!');
  Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
