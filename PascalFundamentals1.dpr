program PascalFundamentals1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils,
  Vcl.Dialogs,
  Character,
  Math;

type

// This defines a record with music album info
Albums = record
   Title: String;
   Sold: Integer;
   Singer: String;
   LeadG: String;
   Drummer: String;
   AlbumID: longint;
end;

// Create pointers that point at addresses for different types
Iptr = ^Integer;
Dptr = ^Double;
Bptr = ^Boolean;
Aptr = ^Integer;
Arr = array[1..5] of Integer;

// These variables are global and can be used by any
// functions in the code
var
  W,X,Y: Integer;
  Result: Integer;

  // Declare album records
  Album1, Album2: Albums;

  // Assign pointers to these
  MyInt: Integer;
  MyDbl: Double;
  MyBool: Boolean;
  MyArr: Arr;

  // Declare pointer variables
  i_ptr: Iptr;
  d_ptr: Dptr;
  b_ptr: Bptr;
  a_ptr: Aptr;

  // Will hold a pointer for address
  ptrAdd: ^Word;

  // Declare strings
  str1, str2, str3 : ansistring;

  // Declare variant type
  MyVar: Variant;

  // Declare files with the type of data to store
  MyFile: TextFile;
  FileStr: String;

// Pascal has Procedures and Functions
// Procedures : Don't return a value but you can pass values by reference
// Functions : Do return a value
// The arguments are created when either begins execution
// and are destroyed after execution

// Define function name, parameters with types and return type
function GetSum(num1, num2: Integer): Integer;
begin
  // The value to return is assigned to the function name
  GetSum := num1 + num2;
end;

// Recursive functions call themselves
// They always have a condition that stops calling the function
function Factorial(num: Integer) : Integer;
begin
  if num <= 1 then
    Factorial := 1
  else
    Factorial := num * Factorial(num-1);

end;

procedure GetSum3(X, Y, Z: Integer; var Sum: Integer);
begin
   Sum := X+Y+Z;
end;

procedure PrintNum;
var
  // This version of W is local to PrintNum
  // Any changes made to it won't effect code outside the procedure
  W: Integer;

begin
  W := 1;
  Writeln('In PrintNum W = ', W);
end;

procedure AlbumSinger( var album1: Albums );
begin
   writeln('Singer : ', album1.Singer);
end;

// This function receives a pointer
function GetPtrVal(p: Iptr): Integer;
var
  val: Integer;
begin
  GetPtrVal := p^;
end;

begin
   W := 5;
   X := 4;

   Result := GetSum(W, X);
   Writeln('Sum : ', Result );

   Result := Factorial(4);
   Writeln('Factorial 4 : ', Result);
   // 1st : result = 4 * factorial(3) = 4 * 6 = 24
   // 2nd : result = 3 * factorial(2) = 3 * 2 = 6
   // 3rd : result = 2 * factorial(1) = 2 * 1 = 2

   // W will be assigned the value of Sum in the procedure
   GetSum3(1,2,3,W);
   Writeln('Sum : ', W);

   // Local and Global Variables
   W := 2;
   Writeln('Outside PrintNum W = ', W);
   PrintNum;
   Writeln('Outside PrintNum W = ', W);

   // ----- RECORDS -----
   // Arrays store lists of items with the same type with an index
   // Records define groups of different types referenced by name
   // They are like structs in other languages
   // Assign data
   Album1.Title := 'Smells Like Teen Spirit';
   Album1.Sold := 30000000;
   Album1.Singer := 'Kurt Cobain';
   Album1.LeadG := 'Kurt Cobain';
   Album1.Drummer := 'Dave Grohl';

   // Print Data
   Writeln('Albums Sold : ', Album1.Sold);

   // You can pass a record to a function or procedure
   AlbumSinger(Album1);

   // ----- POINTERS -----
   // Every variables value is stored in memory
   // Pointers store the address that holds the data assigned
   // to a variable
   MyInt := 10;
   MyDbl := 3.14;
   MyBool := False;
   for W := 1 to 5 do
     MyArr[W] := W;

   // Assign the address of the variable using the address operator
   i_ptr := @MyInt;
   d_ptr := @MyDbl;
   b_ptr := @MyBool;
   a_ptr := @MyArr;

   // Get the value with the dereference operator
   Writeln(i_ptr^);
   Writeln(d_ptr^);
   Writeln(b_ptr^);
   Writeln(a_ptr^);

   // Increment to the next array value
   Inc(a_ptr);
   Writeln(a_ptr^);

   // Decrement to the next array value
   Dec(a_ptr);
   Writeln(a_ptr^);

   // It is common to assign nill to a pointer variable
   ptrAdd := nil;

   // Print the address of the pointer if not nil
   ptrAdd := addr(i_ptr);
   if(ptrAdd <> nil) then
      Writeln(ptrAdd^);

   // Pass a pointer to a function for its value
   Writeln('Pointer Val : ', GetPtrVal(i_ptr));

   // ----- STRINGS -----
   str1 := 'Random ';
   str2 := 'Words';
   str3 := 'Words';

   // Concatenate strings
   Appendstr(str1, str2);
   Writeln(str1);

   // Get string length
   Writeln('Length : ', Length(str1));

   // Compare strings
   // Less than -1
   // Equal 0
   // Greater than 1
   // AnsiCompareText = Case insensitive
   Writeln(AnsiCompareStr(str3, str2));

   // Lowercase and uppercase is AnsiUpperCase
   Writeln(AnsiLowerCase(str1));

   // ----- VARIANTS -----
   // Varients are assigned their data type at run time
   // They can be any type other then containers
   MyVar := MyInt;
   MyVar := MyDbl;
   MyVar := MyBool;

   // ----- FILE IO -----
   // You can write any type of data to a file and retrieve it
   // I'll store text

   // Open a file for writing, write and close
   AssignFile(MyFile, 'myfile.txt');
   Rewrite(MyFile);
   Writeln(MyFile, 'Some Random Words');
   CloseFile(MyFile);

   // Open the file in read mode
   Reset(MyFile);

   // Cycle through lines until end of file, print and close
   while not Eof(MyFile) do
   begin
     Readln(MyFile, FileStr);
     Writeln(FileStr);
   end;
   CloseFile(MyFile);

   // Check if file exists
   if FileExists('myfile.txt') then
    Writeln('File Exists');

   DeleteFile('myfile.txt');
   if FileExists('myfile.txt') then
    Writeln('File Exists')
   else
    Writeln('File is Missing');

    // Get current directory
   Writeln('Directory : ', GetCurrentDir);

   // Create directory
   if CreateDir('SampDir') then
    Writeln('Directory Created');

   // Delete directory
   if RemoveDir('SampDir') then
    Writeln('Directory Deleted');

   Readln;
end.
