unit Starship;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GoToHoloDeck;
    procedure GoToBridge;
  end;

var
  Form1: TForm1;
  realWeapon: string;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  realWeapon := 'Phaser Gun';
end;

procedure TForm1.GoToHoloDeck;
var
  holoWeapon: string;
begin
  holoWeapon := 'Inverse Verteron Pulse Beam';
  Memo1.Lines.Add('=== THE HOLODECK ===');
  Memo1.Lines.Add('Welcome to the Holodeck');
  { display value of local variable, HoloWeapon }
  Memo1.Lines.Add('Here is your HoloWeapon. It is a ' + holoWeapon);
  { display value of global variable, RealWeapon }
  Memo1.Lines.Add('We see you already have a ' + realWeapon);
  Memo1.Lines.Add('......');
  Memo1.Lines.Add('[Hours go by as you engage in a strange Klingon');
  Memo1.Lines.Add('war ritual on the HoloDeck. Finally, you are called');
  Memo1.Lines.Add('to duty. As you leave the HoloDeck, your HoloWeapon');
  Memo1.Lines.Add('vanishes!]');
end;

procedure TForm1.GoToBridge;
begin
  Memo1.Lines.Add('=== THE BRIDGE ===');
  Memo1.Lines.Add('The Captain welcomes you onto the bridge');
  Memo1.Lines.Add('Suddenly a Red Alert sounds! You reach for ');
  Memo1.Lines.Add('your weapon and discover that you have your');
  Memo1.Lines.Add(realWeapon);
  // Memo1.Lines.Add(holoWeapon);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Clear;
  GoToHoloDeck;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
  GoToBridge;
end;

end.
