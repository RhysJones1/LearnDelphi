unit advobs;
// The essential classes of the adventure

interface

uses Dialogs, Classes, SysUtils, AdvConsts;

type

  ThingOb = class(TObject)
  private // hide data
    _name: shortstring;
    _description: shortstring;
  public
    constructor Create(aName, aDescription: shortstring);
    constructor CreateFromStream(fs: TFileStream);
    destructor Destroy; override;
    property Name: shortstring read _name write _name;
    property Description: shortstring read _description write _description;
    procedure WriteToStream(fs: TFileStream); virtual; // !! stream handling
    procedure ReadFromStream(fs: TFileStream); virtual;
  end;

  ThingHolderOb = class(ThingOb)
  private
    _things: TList;
  public
    constructor Create(aName, aDescription: shortstring);
    destructor Destroy; override;
    function GetThings: TList;
    procedure SetThings(someThings: TList);
    procedure AddThing(aThing: ThingOb);
    function NameInThingsAt(aName: string): integer;
    function ObInThings(aName: string): ThingOb;
    procedure TakeObFrom(var aThing: ThingOb; var tl: TList);
    procedure WriteToStream(fs: TFileStream); override;
    procedure ReadFromStream(fs: TFileStream); override;
  end;

  RoomOb = class(ThingHolderOb) // !! ROOM class
  private
    _n, _s, _w, _e: integer;
  public
    constructor Create(aName, aDescription: shortstring;
      aNorth, aSouth, aWest, anEast: integer);
    destructor Destroy; override;
    property N: integer read _n write _n;
    property S: integer read _s write _s;
    property W: integer read _w write _w;
    property E: integer read _e write _e;
    procedure WriteToStream(fs: TFileStream); override;
    procedure ReadFromStream(fs: TFileStream); override;
  end;

  ActorOb = class(ThingHolderOb) // !! for the player and any other people
  private
    _position: integer; // the number of the room in which player is
  public
    constructor Create(aName, aDescription: shortstring; aRoomNum: integer);
    destructor Destroy; override;
    procedure SetPos(num: integer);
    function GetPos: integer;
    procedure WriteToStream(fs: TFileStream); override;
    procedure ReadFromStream(fs: TFileStream); override;
  end;

  MapOb = class(ThingHolderOb)
    function GetRoom(num: integer): RoomOb;
    procedure WriteToStream(fs: TFileStream); override;
    procedure ReadFromStream(fs: TFileStream); override;
  end;

  Implementer = class(TObject)
    constructor Create;
    destructor Destroy; override;
    function MoveTo(var anActor: ActorOb; aDir: integer;
      var aMap: MapOb): string;
    function SaveGame(player: ActorOb; aMap: MapOb; aFileName: string): boolean;
    function LoadGame(var player: ActorOb; var aMap: MapOb;
      aFileName: string): boolean;
  end;

implementation


{ === THINGOB === }
constructor ThingOb.Create(aName, aDescription: shortstring);
begin
  inherited Create;
  _name := aName;
  _description := aDescription;
end;

destructor ThingOb.Destroy;
begin
  inherited Destroy;
end;

procedure ThingOb.WriteToStream(fs: TFileStream);
var
  currentClassName: shortstring;
begin
  currentClassName := self.classname;
  fs.WriteBuffer(currentClassName, sizeof(currentClassName));
  fs.WriteBuffer(_name, sizeof(_name));
  fs.WriteBuffer(_description, sizeof(_description));
end;

procedure ThingOb.ReadFromStream(fs: TFileStream);
begin
  fs.ReadBuffer(_name, sizeof(_name));
  fs.ReadBuffer(_description, sizeof(_description));
end;

constructor ThingOb.CreateFromStream(fs: TFileStream);
// !! Note: Since ReadFromStream is a virtual/overridden method, a call
// such as RoomOb.CreateFromSteam will actually execute the
// RoomOb version of ReadFromStream
begin
  inherited Create;
  ReadFromStream(fs);
end;

{ === THINGHOLDEROB === }
constructor ThingHolderOb.Create(aName, aDescription: shortstring);
begin
  inherited Create(aName, aDescription);
  _things := TList.Create;
end;

destructor ThingHolderOb.Destroy;
var
  i: integer;
begin
  for i := 0 to _things.Count - 1 do
  begin
    if _things.Items[i] <> nil then
      ThingOb(_things.Items[i]).Free;
  end;
  _things.Clear;
  _things.Free;
  inherited Destroy;
end;

function ThingHolderOb.GetThings: TList;
begin
  result := _things;
end;

procedure ThingHolderOb.SetThings(someThings: TList);
begin
  _things := someThings;
end;

procedure ThingHolderOb.AddThing(aThing: ThingOb);
begin
  _things.Add(aThing);
end;

procedure ThingHolderOb.TakeObFrom(var aThing: ThingOb; var tl: TList);
begin
  _things.Add(aThing);
  tl.Remove(aThing);
end;

function ThingHolderOb.NameInThingsAt(aName: string): integer;
// return index in things of object with name aName or -1 if not found
var
  i, index: integer;
begin
  index := -1;
  i := 0;
  aName := lowercase(aName);
  while ((i < _things.Count) and (index = -1)) do
    if lowercase(ThingOb(_things.Items[i]).Name) = aName then
      index := i
    else
      i := i + 1;
  result := index;
end;

function ThingHolderOb.ObInThings(aName: string): ThingOb;
// return object in things with name n or NIL if not found
var
  i: integer;
  ob: ThingOb;
begin
  ob := nil;
  i := 0;
  aName := lowercase(aName);
  while ((i < _things.Count) and (ob = nil)) do
  begin
    if lowercase(ThingOb(_things.Items[i]).Name) = aName then
      ob := ThingOb(_things.Items[i])
    else
      i := i + 1;
  end;
  result := ob;
end;

procedure ThingHolderOb.WriteToStream(fs: TFileStream);
var
  i: integer;
begin
  inherited WriteToStream(fs);
  fs.WriteBuffer(_things.Count, sizeof(_things.Count)); // save num of things
  for i := 0 to _things.Count - 1 do
    ThingOb(_things[i]).WriteToStream(fs);
end;

procedure ThingHolderOb.ReadFromStream(fs: TFileStream);
var
  i: integer;
  numthings: integer;
  currentClassName: shortstring;
begin
  inherited ReadFromStream(fs);
  fs.ReadBuffer(numthings, sizeof(numthings));
  _things := TList.Create; // remember to create a list here!
  for i := 0 to numthings - 1 do
  begin
    fs.ReadBuffer(currentClassName, sizeof(currentClassName));
    if currentClassName = 'ThingOb' then
      _things.Add(ThingOb.CreateFromStream(fs))
    else if currentClassName = 'ThingHolderOb' then
      _things.Add(ThingHolderOb.CreateFromStream(fs))
    else if currentClassName = 'RoomOb' then
      _things.Add(RoomOb.CreateFromStream(fs))
    else if currentClassName = 'ActorOb' then
      _things.Add(ActorOb.CreateFromStream(fs));
  end;
end;

{ === ROOMOB === }
constructor RoomOb.Create(aName, aDescription: shortstring;
  aNorth, aSouth, aWest, anEast: integer);
begin
  inherited Create(aName, aDescription);
  _n := aNorth;
  _s := aSouth;
  _w := aWest;
  _e := anEast;
end;

destructor RoomOb.Destroy;
begin
  inherited Destroy;
end;

procedure RoomOb.WriteToStream(fs: TFileStream);
begin
  inherited WriteToStream(fs);
  fs.WriteBuffer(_n, sizeof(_n));
  fs.WriteBuffer(_s, sizeof(_s));
  fs.WriteBuffer(_w, sizeof(_w));
  fs.WriteBuffer(_e, sizeof(_e));
end;

procedure RoomOb.ReadFromStream(fs: TFileStream);
begin
  inherited ReadFromStream(fs);
  fs.ReadBuffer(_n, sizeof(_n));
  fs.ReadBuffer(_s, sizeof(_s));
  fs.ReadBuffer(_w, sizeof(_w));
  fs.ReadBuffer(_e, sizeof(_e));
end;

// -- MapOb
function MapOb.GetRoom(num: integer): RoomOb;
begin
  result := RoomOb(_things.Items[num]);
end;

procedure MapOb.WriteToStream(fs: TFileStream);
begin
  inherited WriteToStream(fs);
end;

procedure MapOb.ReadFromStream(fs: TFileStream);
begin
  inherited ReadFromStream(fs);
end;

{ === ACTOR === }
constructor ActorOb.Create(aName, aDescription: shortstring; aRoomNum: integer);
begin
  inherited Create(aName, aDescription);
  _position := aRoomNum;
end;

destructor ActorOb.Destroy;
begin
  inherited Destroy;
end;

procedure ActorOb.SetPos(num: integer);
begin
  _position := num;
end;

function ActorOb.GetPos: integer;
begin
  result := _position;
end;

procedure ActorOb.WriteToStream(fs: TFileStream);
begin
  inherited WriteToStream(fs);
  fs.WriteBuffer(_position, sizeof(_position));
end;

procedure ActorOb.ReadFromStream(fs: TFileStream);
begin
  inherited ReadFromStream(fs);
  fs.ReadBuffer(_position, sizeof(_position));
end;

{ === IMPLEMENTER === }
constructor Implementer.Create;
begin
  inherited Create;
end;

destructor Implementer.Destroy;
begin
  inherited Destroy;
end;

function Implementer.SaveGame(player: ActorOb; aMap: MapOb;
  aFileName: string): boolean;
var
  fs: TFileStream;
  ok: boolean;
begin
  ok := true;
  fs := TFileStream.Create(aFileName, fmCreate);
  try
    try
      aMap.WriteToStream(fs);
      player.WriteToStream(fs);
    except
      on Exception do
        ok := false;
    end;
  finally
    fs.Free;
  end;
  result := ok;
end;

function Implementer.LoadGame(var player: ActorOb; var aMap: MapOb;
  aFileName: string): boolean;
var
  fs: TFileStream;
  ok: boolean;
  currentClassName: shortstring;
begin
  ok := true;
  fs := TFileStream.Create(aFileName, fmOpenRead);
  aMap.Free;
  aMap := MapOb.Create('Temp Map', 'Map prior to loading data');
  player.Free;
  player := ActorOb.Create('Temp ActorOb', 'A Temp Player', 0);
  try
    fs.ReadBuffer(currentClassName, sizeof(currentClassName));
    // read class name
    try
      aMap.ReadFromStream(fs);
      fs.ReadBuffer(currentClassName, sizeof(currentClassName));
      // read class name
      player.ReadFromStream(fs);
    except
      on Exception do
        ok := false;
    end;
  finally
    fs.Free;
  end;
  result := ok;
end;

function Implementer.MoveTo(var anActor: ActorOb; aDir: integer;
  var aMap: MapOb): string;
// attempt to move actorob in direction of dir. Return msg indicating
// success or otherwise
var
  pos: integer;
  room: RoomOb;
  exit: integer;
  msg: string;
begin
  msg := 'Error: Oops! Cannot move there!'; // some unknown problem
  pos := anActor.GetPos;
  room := RoomOb(aMap._things.Items[pos]);
  case (aDir) of
    NORTH:
      exit := room.N;
    SOUTH:
      exit := room.S;
    WEST:
      exit := room.W;
    EAST:
      exit := room.E;
  else
    exit := NOEXIT;
  end;
  if exit = NOEXIT then
    msg := 'No Exit!'
  else
  begin
    anActor.SetPos(exit);
    msg := 'Exit to Room: ' + IntToStr(exit);
  end;
  result := msg;
end;

end.
