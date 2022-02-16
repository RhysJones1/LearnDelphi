unit wombatmain;

{ Sample adventure game system.
  Author: Huw Collingbourne
}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls,
  AdvObs, AdvConsts, ExtCtrls;

type
  TForm1 = class(TForm)
    DisplayBox: TRichEdit;
    NorthBtn: TButton;
    SouthBtn: TButton;
    WestBtn: TButton;
    EastBtn: TButton;
    LookBtn: TButton;
    CheckObBtn: TButton;
    TestSaveBtn: TButton;
    TestLoadBtn: TButton;
    Panel1: TPanel;
    DropBtn: TButton;
    TakeBtn: TButton;
    inputEdit: TEdit;
    InvBtn: TButton;
    procedure CheckObBtnClick(Sender: TObject);
    procedure TakeBtnClick(Sender: TObject);
    procedure LookBtnClick(Sender: TObject);
    procedure DropBtnClick(Sender: TObject);
    procedure NorthBtnClick(Sender: TObject);
    procedure SouthBtnClick(Sender: TObject);
    procedure WestBtnClick(Sender: TObject);
    procedure EastBtnClick(Sender: TObject);
    procedure TestSaveBtnClick(Sender: TObject);
    procedure TestLoadBtnClick(Sender: TObject);
    procedure InvBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure CreateObs;
    procedure DisplayThings(TL: TList);
  public
    { Public declarations }
    procedure ErrMsg(msg: string);
    procedure Display(msg: string);
  end;

var
  Form1: TForm1;
  imp: Implementer;

const
  TESTFILE = 'TESTFILE.DAT';

implementation

{$R *.DFM}

const
  NUMROOMS = 5;

var
  aMap: MapOb; // !! a special type of ThingHolderOb
  player: ActorOb;
  { this is a 'picture' of aMap (lines show 'exits' to adjoining rooms)
    room0 -- room1
    |
    room2 -- room3
    |        |
    room4 -- room5

  }

procedure TForm1.ErrMsg(msg: string);
begin
  ShowMessage(msg);
end;

procedure TForm1.Display(msg: string);
begin
  DisplayBox.lines.add(msg);
end;

procedure TForm1.DisplayThings(TL: TList);
var
  thingcount: integer;
begin
  if TL.Count = 0 then
    Display(' nothing. ')
  else
    for thingcount := 0 to TL.Count - 1 do
    begin
      Display(Format('     - Ob %d name is: %s; description is: %s',
              [thingcount, ThingOb(TL.Items[thingcount]).Name,
              ThingOb(TL.Items[thingcount]).Description]));
      if (ThingOb(TL.Items[thingcount]) is ThingHolderOb) then
      // !! if this is a ThingHolderOb call DisplayThings recursively
      begin
        Display('        It contains: ');
        DisplayThings(ThingHolderOb(TL.Items[thingcount]).GetThings);
      end;
    end; // for...
  // if TL.Items[thingcount] is ThingHolderOb
end;

procedure TForm1.CreateObs;
// !! Construct the Player and Map and fill it with Rooms containing treasures
// In a complete game, you would probably want to generate the game data
// using a standalone application - then read in the default data
// when the game is loaded.
begin
  // ==== Create aMap
  aMap := MapOb.Create('The Map', 'The world of the adventure');
  // Room0
  aMap.AddThing(RoomOb.Create('Room0', 'A dank cavern', NOEXIT, 2, NOEXIT, 1));
  with RoomOb(aMap.GetThings.Last) do
  begin
    AddThing(ThingOb.Create('Bit of Fluff', 'A sticky fluffy ball'));
    AddThing(ThingOb.Create('Popcorn', 'An inedible lump'));
    AddThing(ThingOb.Create('Coin', 'A threepenny bit'));
  end;

  // Room1
  aMap.AddThing(RoomOb.Create('Room1', 'A lovely garden', NOEXIT, NOEXIT,
    0, NOEXIT));
  with RoomOb(aMap.GetThings.Last) do
  begin
    AddThing(ThingOb.Create('Elvish Sword', 'A magical weapon [glowing]'));
    AddThing(ThingOb.Create('Potto',
      'An animal with big, round, staring eyes'));
  end;

  // Room2
  aMap.AddThing(RoomOb.Create('Room2', 'A dark place', 0, 4, NOEXIT, 3));

  // Room3
  aMap.AddThing(RoomOb.Create('Room3', 'A throne room', NOEXIT, 5, 2, NOEXIT));
  with RoomOb(aMap.GetThings.Last) do
  begin
    AddThing(ThingOb.Create('Throne', 'A golden chair'));
  end;

  // Room4
  aMap.AddThing(RoomOb.Create('Room4', 'A crystal dome', 2, NOEXIT, NOEXIT, 5));
  with RoomOb(aMap.GetThings.Last) do
  begin
    AddThing(ThingOb.Create('Wombat', 'A cuddly wombat [asleep]'));
    AddThing(ThingOb.Create('Pot of jam', 'A sticky jar'));
  end;

  // Room5
  aMap.AddThing(RoomOb.Create('Room5', 'A gloomy dungeon', 3, NOEXIT,
    4, NOEXIT));
  with RoomOb(aMap.GetThings.Last) do
  begin
    AddThing(ThingOb.Create('A Nameless Horror', '"   "'));
  end;

  // === Create Player
  player := ActorOb.Create('You', 'You look just like You!', 0);
  player.AddThing(ThingOb.Create('Lamp', 'A lantern [providing light]'));
end;

procedure TForm1.CheckObBtnClick(Sender: TObject);
// examine and display objects
// this is for debugging purposes only
var
  mapcount: integer;
  aRoom: RoomOb;
begin
  DisplayBox.Clear;
  if aMap = nil then
    Display('Map is not initialised')
  else
  begin
    Display('MAP: ' + aMap.Name + ' (' + aMap.Description + ')');
    for mapcount := 0 to aMap.GetThings.Count - 1 do
    begin
      aRoom := RoomOb(aMap.GetThings.Items[mapcount]);
      // aRoom
      if aRoom = nil then
        Display('- aRoom is nil')
      else
      begin
        Display(Format('ROOMOB: %s. ...It is %s.',
          [aRoom.Name, aRoom.Description]));
        Display('     It contains: ');
        DisplayThings(aRoom.GetThings);
        Display(Format('    [Exits: N=%d, S=%d, W=%d, E=%d]',
          [aRoom.N, aRoom.S, aRoom.W, aRoom.E]));
      end;
    end; // for i := 0 to aMap.getthings.Count - 1 do
  end; // if aMap.getthings <> nil
  Display(Format('Player name =%s, Player description =%s',
    [player.Name, player.Description]));
  Display('You have: ');
  DisplayThings(player.GetThings);
end;

procedure TForm1.TakeBtnClick(Sender: TObject);
var
  thingsHere: TList;
  obName: string;
  ob: ThingOb;
  currRoom: RoomOb;
begin
  obName := inputEdit.text;
  currRoom := aMap.GetRoom(player.GetPos);
  ob := currRoom.ObInThings(obName);
  if obName = '' then
    ErrMsg('I don''t know what you want to take!')
  else if ob = nil then
    ErrMsg('There is no ' + obName + ' here!')
  else
  begin
    thingsHere := currRoom.GetThings;
    player.TakeObFrom(ob, thingsHere);
    ErrMsg('Ok. ' + obName + ' taken');
  end;
end;

procedure TForm1.DropBtnClick(Sender: TObject);
var
  inventory: TList;
  obName: string;
  ob: ThingOb;
  currRoom: RoomOb;
begin
  obName := inputEdit.text;
  currRoom := aMap.GetRoom(player.GetPos);
  ob := player.ObInThings(obName);
  if obName = '' then
    ErrMsg('I don''t know what you want to drop!')
  else if ob = nil then
    ErrMsg('You have no ' + obName + '!')
  else
  begin
    inventory := player.GetThings;
    currRoom.TakeObFrom(ob, inventory);
    ErrMsg('Ok. ' + obName + ' dropped');
  end;
end;

procedure TForm1.LookBtnClick(Sender: TObject);
begin
  Display('You are in ' + aMap.GetRoom(player.GetPos).Name);
  Display('It is ' + aMap.GetRoom(player.GetPos).Description);
  Display('Here you can see: ');
  DisplayThings(aMap.GetRoom(player.GetPos).GetThings);
end;

procedure TForm1.NorthBtnClick(Sender: TObject);
begin
  DisplayBox.Lines.Clear;
  Display(imp.MoveTo(player, NORTH, aMap));
end;

procedure TForm1.SouthBtnClick(Sender: TObject);
begin
  DisplayBox.Lines.Clear;
  Display(imp.MoveTo(player, SOUTH, aMap));
end;

procedure TForm1.WestBtnClick(Sender: TObject);
begin
  DisplayBox.Lines.Clear;
  Display(imp.MoveTo(player, WEST, aMap));
end;

procedure TForm1.EastBtnClick(Sender: TObject);
begin
  DisplayBox.Lines.Clear;
  Display(imp.MoveTo(player, EAST, aMap));
end;

procedure TForm1.TestSaveBtnClick(Sender: TObject);
begin
  if imp.SaveGame(player, aMap, TESTFILE) then
    Display('Game Saved')
  else
    Display('Save failed.')
end;

procedure TForm1.TestLoadBtnClick(Sender: TObject);
begin
  if imp.LoadGame(player, aMap, TESTFILE) then
    Display('game Loaded')
  else
    Display('Load failed.')
end;

procedure TForm1.InvBtnClick(Sender: TObject);
begin
  Display('You have: ');
  DisplayThings(player.GetThings);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CreateObs;
end;

initialization

begin
  aMap := nil;
  player := nil;
  imp := Implementer.Create;
end;

end.
