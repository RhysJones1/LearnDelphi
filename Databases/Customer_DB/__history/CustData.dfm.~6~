object CustData_db: TCustData_db
  OldCreateOrder = False
  Height = 249
  Width = 386
  object CUSTDatabase: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\rhysj\OneD' +
      'rive\Desktop\Programming\LearnPascal\Database\Databases\Customer' +
      '_DB\CustData.mdb;Mode=ReadWrite;Persist Security Info=False;Jet ' +
      'OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Da' +
      'tabase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lo' +
      'cking Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Globa' +
      'l Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLE' +
      'DB:Create System Database=False;Jet OLEDB:Encrypt Database=False' +
      ';Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact ' +
      'Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 104
  end
  object tblCUST: TADOTable
    Active = True
    Connection = CUSTDatabase
    CursorType = ctStatic
    TableName = 'data'
    Left = 128
    Top = 64
  end
  object srcCUST: TDataSource
    DataSet = tblCUST
    Left = 208
    Top = 56
  end
end
