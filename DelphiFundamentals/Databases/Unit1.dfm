object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Customer Database'
  ClientHeight = 361
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 593
    Height = 209
    DataSource = CustData_db.srcCUST
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID1'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_id'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'full_name'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 200
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 177
    Top = 223
    Width = 240
    Height = 25
    DataSource = CustData_db.srcCUST
    TabOrder = 1
  end
  object UserID: TMemo
    Left = 408
    Top = 264
    Width = 193
    Height = 89
    Lines.Strings = (
      'Memo1')
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 216
    Top = 264
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 8
    Top = 264
    Width = 137
    Height = 41
    Caption = 'Search for user_id'
    TabOrder = 4
    OnClick = Button1Click
  end
end
