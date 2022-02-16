unit Probunit;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure ShowResults( total : integer; s : string );
begin
   ShowMessage( IntToStr( total ) + '   ' + s );
end;

procedure DoProblem;
var
  num1               : double;
  num2, x, total     : integer;
  s, sonnetnum       : string;
begin
  num1      := 1.0;
  num2      := 2;
  x         := 10;
  sonnetnum := '53';
  total     :=  num2 - num1;
  s         :=  sonnetnum + x;
  ShowResults( total, s );
end;



(* This is the corrected version of the procedure. Edit the procedure above
   to match the version shown below and the program will then run *)
(*
procedure DoProblem;
var
  num1, num2,             { these variables are now integers   }
  x, sonnetnum,
  total       : integer;
  s           : string;
begin
  num1      := 1;           { remove floating point from integer }
  num2      := 2;
  x         := 10;
  sonnetnum := 53;          { remove single-quotes from integer  }
  total     :=  num2 - num1;
                            { The IntToStr() function converts the
                              integer value of the calculation
                              (sonnetnum + x) into a String representation   }
  s         :=  IntToStr( sonnetnum + x );
  ShowResults( total, s );
end;
*)

procedure TForm1.Button1Click(Sender: TObject);
begin
  DoProblem;
end;

end.
