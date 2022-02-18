unit ArrayIntersection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmArrayIntersection = class(TForm)
    lstRugbyNations: TListBox;
    lstCricketNations: TListBox;
    lstBoth: TListBox;
    btnRugbyNations: TButton;
    btnCricketNations: TButton;
    btnBoth: TButton;
    procedure btnRugbyNationsClick(Sender: TObject);
    procedure btnCricketNationsClick(Sender: TObject);
    procedure btnBothClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArrayIntersection: TfrmArrayIntersection;

implementation
var
    //Rugby Nations
    arrRugby : Array[1..20] Of String = ('South Africa', 'New Zeeland',  'Namibia',
                                        'Australia', 'Wales', 'England', 'Japan',
                                        'Ireland', 'France', 'Argentina', 'Scotland',
                                        'Fiji', 'Georgia', 'Samoa', 'Tonga', 'Uruguay',
                                        'Russia', 'United States of America',
                                        'Italy', 'Canada');

    //Cricket Nations
    arrCricket : Array[1..10] Of String = ('India', 'Australia', 'England', 'Pakistan',
                                          'South Africa', 'Afghanistan', 'West Indies',
                                          'Sri Lanka', 'New Zeeland', 'Bangladesh');


{$R *.dfm}




procedure TfrmArrayIntersection.btnBothClick(Sender: TObject);
var
   arrBoth : Array of String;
   intRugbyLoop, intCricketLoop, intDuplicateNations : Integer;
   blnMatchFound : Boolean;
   strDuplicateNation : String;
begin
   intDuplicateNations := 0;

   for intRugbyLoop := 1 to Length(arrRugby) do
   begin
     intCricketLoop := 1;
     blnMatchFound := False;
     while (intCricketLoop <= Length(arrCricket)) AND (blnMatchFound = False) do
     begin
       if arrRugby[intRugbyLoop] = arrCricket[intCricketLoop] then
       begin
         blnMatchFound := True;
         Inc(intDuplicateNations);
         SetLength(arrBoth, intDuplicateNations);
         arrBoth[intDuplicateNations - 1] := arrRugby[intRugbyLoop];
       end;
       Inc(intCricketLoop);
     end;
   end;

   lstBoth.Clear;

   for strDuplicateNation in arrBoth do
   begin
     lstBoth.Items.Add(strDuplicateNation);
   end;

end;

procedure TfrmArrayIntersection.btnCricketNationsClick(Sender: TObject);
var
   strCricketNation : String;
begin
   lstCricketNations.Clear;

   for strCricketNation in arrCricket do
   begin
     lstCricketNations.Items.Add(strCricketNation);
   end;

end;

procedure TfrmArrayIntersection.btnRugbyNationsClick(Sender: TObject);
var
   strRugbyNation : String;
begin
   lstRugbyNations.Clear;

   for strRugbyNation in arrRugby do
   begin
     lstRugbyNations.Items.Add(strRugbyNation);
   end;
end;

end.
