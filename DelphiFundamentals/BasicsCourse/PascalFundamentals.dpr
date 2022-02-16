// The programs name is the same as the files name
// A Delphi app can have multiple units, but only 1 program file
program PascalFundamentals;
// This is a comment
{ Multiline

Comment }
(* Another multiline
Comment *)
// Statements end with a ; and whitespace is ignored

// This is a compiler directive that defines this app runs in the console
{$APPTYPE CONSOLE}

// Includes an external resource file * uses the source files name
{$R *.res}

// Defines units we need for our program
uses
  SysUtils,
  Vcl.Dialogs,
  Character,
  Math;

// User defined data types
type

  // Create an array with indexes 1 through 10
  IntArray = array [1..10] of Integer;

  // A dynamic array with ability to change size
  DynArr = array of Integer;

  TGrades = 'A'..'E';
  // Enumerated Types have values starting with zero
  TDays = (Mon, Tue, Wed, Thu, Fri);

  // Set types are a group of values where a set can contain
  // multiples of those values defined
  TCard =(One,Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten,J,Q,K,A);
  TCards = set of TCard;

// You can use var in multiple places in your program
//
// Variable names start with a letter or underscore
// They can contain letters, numbers and underscores
// The compiler is case insensitive for variable names
// MyVar is the same as myVar
// Variables are strongly typed
// You must cast variables if you want them to work together
var
  StrText: string;
  StrNum: string;
  // -2,147,483,648 to 2,147,483,647 (Same ad LongInt)
  Age: Integer;
  // 0 to 255 (Same as Byte and UInt8)
  Grade: Char;
  // True or False
  CanVote: Boolean;
  // 5.0E-324 to 1.7E308 (15 - 16 Significant digits) (Same as Real)
  Balance: Double;

  // -128 to 127 (Same as Int8)
  ChildTotal: ShortInt;
  // 0 to 65,535 (Same as WideChar and UInt16)
  Income: Word;
  // -32,768 to 32,767 (Same as Int16)
  Savings: SmallInt;
  // -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807
  // Same as Comp
  DeficitTot: Int64;
  // -922,337,203,685,477.5808 to 922,337,203,685,477.5807
  DeficitChange: Currency;

  // User defined type
  MyArray: IntArray;
  DArray: DynArr;
  MultArray: array [0..3, 0..2] of Integer;

  // Used to cycle loops
  W, X, Y: Integer;

  // User defined type
  MyGrade: TGrades;
  FavDay: TDays;

  // Define a Set Type
  MyHand: TCards;
  OtherHand: TCards;
  ExtraHand: TCards;
  OneCard: TCard; // Will hold one card
  CardStr: string; // Used for card output
  CardArr : array [TCard] of String[14]
  = ('One','Two','Three','Four','Five','Six','Seven','Eight','Nine','Ten','J','Q','K','A');

  // Dates and Time
  NowTime: TDateTime;
  YY,MM,DD : Word;

  // Constant assignment for globals
  IAmGlobal: Integer = 10;
  // Define a constant (You can let the compiler define the type)
  const PI: Double = 3.14;

begin
  // Assignment operator :=
  StrText := 'Hello Pascal';
  Writeln(StrText);

  // Write('What is your name : ');
  // Get user input
  // readln(StrText);

  // Open dialog box
  // showmessage('Hello ' + StrText);

  // Bytes used for data type
  Writeln(Integer.Size.ToString);

  // ----- CASTING -----

  Age := 45;
  Writeln(Age.ToString);
  Writeln(Age.ToBoolean);
  Writeln(Age.ToDouble);
  CanVote := True;
  WriteLn(BoolToStr(CanVote, True));

  // Casting strings to numbers
  StrNum := '50';
  Writeln(StrToInt(StrNum));

// Chr : Converts number to character
// Trunc : Converts real into an integer
// StrToFloat : String to float
// FloatToStr : Float to string

  // ----- CHARACTER OPERATIONS -----
  Grade := 'A';
  Writeln(IsDigit(Grade));
  Writeln(IsLetter(Grade));
  Writeln(IsLower(Grade));
  Writeln(IsUpper(Grade));
  Writeln(IsWhiteSpace(Grade));
  Writeln(Chr(94)); // Get character with code
  Writeln(Ord('A')); // Get code for letter

  // ----- MATH -----

  Writeln('5 + 4 = ', 5+4);
  Writeln('5 - 4 = ', 5-4);
  Writeln('5 * 4 = ', 5*4);
  Writeln('5 / 4 = ', 5/4);
  Writeln('5 mod 4 = ', 5 mod 4);
  Writeln('5 div 4 = ', 5 div 4);

  Dec(Age); // Decrement
  Writeln('Age : ', Age);
  Inc(Age); // Increment
  Writeln('Age : ', Age);

  Writeln('Ceil 3.4 : ', Ceil(3.4));
  Writeln('Floor 3.4 : ', Floor(3.4));
  Writeln('Max 4, 5 : ', Max(4,5));
  Writeln('Min 4, 5 : ', Min(4,5));
  Writeln('Power 2^3 : ', Power(2,3));
  Writeln('Random 0,10 : ', RandomRange(0,10));
  // -1 if A<B, 0 if A=B, 1 if A>B
  Writeln('Compare 5, 4 : ', CompareValue(5,4));
  Writeln('45 deg to rads : ', degtorad(45));
  Writeln('3.14159 rads to degs : ', radtodeg(3.14159));
  // e * e * e ~= 20 so log(20.079) ~= 3
  Writeln('log(20.079) = ', lnxp1(20.079));
  // 2 * 2 * 2 = 8
  Writeln('log2(8) = ', log2(8));
  // 2 * 2 = 100
  Writeln('log10(100) = ', log10(100));
  // Hypotenuse : SQRT(A^2 + B^2)
  Writeln('hypot(2,3) = ', hypot(2,3));
  // Checks if the value is infinite
  Writeln('IsInfinite(5/0) = ', IsInfinite(5/0));
  // Checks if the value is infinite
  Writeln('IsZero(5/0) = ', IsZero(5/0));
  // Checks if the value is not a number
  Writeln('IsNan(5/0) = ', IsNan(5/0));

  // Trig functions work with radians
  // Cosecant, Secant, Cot, SinH, CosH, TanH,
  // ArcCos, ArcCosH, ArcSinH, ArcTan2, ArcTanH
  Writeln('Sin(0) = ', Sin(0));
  Writeln('Cos(Pi) = ', Cos(Pi));
  Writeln('Tan(Pi) = ', Tan(Pi));

  // ----- CONDITIONALS -----

  // Relational Operators : = <> < > <= >=
  // Logical Operators : and or not
  // Write('What is your age : ');
  // readln(Age);

  if ((Age >= 1) and (Age <= 18)) then
    Writeln('Important Birthday')

  else if ((Age = 21) or (Age = 50)) then
    Writeln('Important Birthday')

  else if (Age >= 65) then
    Writeln('Important Birthday')
  else
    Writeln('Not an Important Birthday');

  // Case
  Grade := 'B';
  case (Grade) of
      'A' : writeln('Awesome!' );
      'B', 'C': writeln('Do Better' );
      'D' : writeln('Terrible' );
      'F' : writeln('Failure' );
   end;

// You can also use ranges of values like this
// ‘a’..’z’: Which matches for any letter

  // ----- ARRAYS -----

  // Fixed size collection of data with the same type
  // Assign value using index
  MyArray[1] := 0;
  // Retrieve value from index
  Writeln('Array 0 : ', MyArray[1].ToString);

  // Set the size of the dynamic array
  setlength(DArray, 5);

  // ----- LOOPING -----

  // Initializing array
  for W := 1 to 5 do
    MyArray[W] := W;

  // Retrieving array values
  for W := 1 to 5 do
    Writeln('MyArray : ', MyArray[W]);

  // Initialize and display multidimensional array
  for W:= 1 to 3 do
      for X:= 1 to 2 do
         MultArray[W,X]:= W+X;

  for W:= 1 to 3 do
      for X:= 1 to 2 do
        Writeln(MultArray[W,X]);

  // Use a while loop to print odd values up to 13
  // Begin and End works like {} in C++ and contain multiple statements
  W := 1;
  while W <= 20 do
    begin
      if (W mod 2) = 0 then
        begin
          W := W + 1;
          continue;
        end;
      if W = 15 then
        break;

      Writeln('W : ', W);
      W := W + 1;
    end;

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

  // ----- USER DEFINED TYPES -----
  MyGrade := 'A';
  Writeln('My Grade = ', MyGrade);
  FavDay := TDays.Fri;

  // ----- SETS -----

  // Set Types can contain multiple values
  MyHand := [Two, Four, J, Q, K];
  // You can add and subtract values
  MyHand := MyHand - [Two, Four] + [Ten, A];

  // You can get the union of 2 sets
  OtherHand := [Four, Two, Ten, J, A];
  ExtraHand := MyHand + OtherHand;

  // Get the difference
  ExtraHand := MyHand - OtherHand;

  // Get the intersection
  ExtraHand := MyHand * OtherHand;

  // Check equality and inequality
  Writeln(MyHand = OtherHand);
  Writeln(MyHand <> OtherHand);

  // Check if the set is a subset
  Writeln(MyHand <= OtherHand);

  // Check if value is in set
  Writeln(One in ExtraHand);

  // Cycle through all possible values defined for the set
  CardStr := '';
  for OneCard := One to A do
      // If the value is in ExtraHand
      if OneCard in ExtraHand then
      // Add it to the output string
      begin
         CardStr := CardStr + ' ';
         // Get the index and match it up to the string in CardArr
         CardStr := CardStr + CardArr[OneCard];
      end;
   writeln(CardStr);

   // ----- DATES -----

   NowTime := Now; // Gets current time
   Writeln('Current Time : ', TimeToStr(NowTime));
   Writeln('Current Date : ', DateToStr(NowTime));
   Writeln('Day : ', DayOfWeek(NowTime));
   Writeln('Current Date : ', DateToStr(NowTime));
   // Decode a date to year, month and day
   // Date returns the current date
   DecodeDate (Date,YY,MM,DD);
   // Encode year, month and day to a TDateTime value
   // You can define formating with FormatDateTime
   WriteLn ('Today is : ',FormatDateTime ('mmmm dd yyyy',EnCodeDate(YY,MM,DD)));

   // You could also format this way
   Writeln (Format ('Today is : %d/%d/%d ',[dd,mm,yy]));

  Readln;
end.
