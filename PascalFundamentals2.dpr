program PascalFundamentals2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils,
  Vcl.Dialogs,
  Character,
  Math;

// Unit1 in 'Unit1.pas';

type
  // Define a shape class type
  // T is used for all classes
  TShape = class
    // Private data is not available to subclasses
    // Protected data is only accessable through
    // functions provided, but can be inherited by
    // subclasses
    protected
      Height, Width: Double;
    // Public data can be accessed by any code that has access
    // to the object
    public
      constructor Create;
      destructor Destroy; override;
      // You can overload functions so they perform different
      // actions based on different parameters
      Procedure SetValues(H, W: Double); overload;
      Procedure SetValues(W: Double); overload;
      // You can define this as virtual to figure out which
      // version of Area to call at runtime
      function Area: Double; virtual;
  end;

  // You can create a class that inherits everything from the
  // TShape class
  TCircle = class(TShape)
    public
      // We designate that we want to override Area
      // Final designates that we don't want inherited
      // subclasses of TCircle to be able to override
      // area
      function Area: Double; override; final;
  end;

// Called every time you create a new object
constructor TShape.Create;
begin
  Height := -1;
  Width := -1;
end;

// You can define that you want to destroy other objects
// that are part of this object here by calling Free
// on them
destructor TShape.Destroy;
begin

end;

// This will be used for shapes with height and width
procedure TShape.SetValues(H: Double; W: Double);
begin
  // Self allows you to refer to objects that you haven't
  // assigned a name to
  Self.Height := H;
  Self.Width := W;
end;

// This will be used for circles
procedure TShape.SetValues(W: Double);
begin
  // Self allows you to refer to objects that you haven't
  // assigned a name to
  Self.Height := -1;
  Self.Width := W;
end;

function TShape.Area: Double;
begin
  // Return area for circle if Height isn't provided
  if Height = -1 then
    Result := 3.14159 * Power(Self.Width/2, 2)
  else
    Result := Self.Height * Self.Width;
end;

function TCircle.Area: Double;
begin
  Result := 3.14159 * Power(Self.Width/2, 2)
end;

var
  MyShape: TShape;
  MyCircle: TShape;

  // With polymorphism you can declare as a TCircle or
  // as TShape and the correct Area function will still
  // be called
  // Circle2: TCircle;
  Circle2: TShape;

begin
  try
    // Create TShape object
    MyShape := TShape.Create;
    MyShape.SetValues(10, 10);
    Writeln('Area : ', MyShape.Area.ToString);

    // Delete object
    MyShape.Free;

    // Create a circle shape
    MyCircle := TShape.Create;
    MyCircle.SetValues(10);
    Writeln('Circle Area : ', MyCircle.Area.ToString);
    MyCircle.Free;

    // Inherited type TCircle
    Circle2 := TCircle.Create;
    Circle2.SetValues(5);
    Writeln('Circle 2 Area : ', Circle2.Area.ToString);
    Circle2.Free;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  Readln;
end.
