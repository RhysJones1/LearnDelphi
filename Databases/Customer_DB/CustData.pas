unit CustData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TCustData_db = class(TDataModule)
    CUSTDatabase: TADOConnection;
    tblCUST: TADOTable;
    srcCUST: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustData_db: TCustData_db;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
