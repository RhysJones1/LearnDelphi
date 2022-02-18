object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Bubble Sort'
  ClientHeight = 449
  ClientWidth = 439
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lstUnsortedRugbyNations: TListBox
    Left = 32
    Top = 88
    Width = 169
    Height = 329
    ItemHeight = 13
    TabOrder = 0
  end
  object lstSortedRugbyNations: TListBox
    Left = 240
    Top = 88
    Width = 169
    Height = 329
    ItemHeight = 13
    TabOrder = 1
  end
  object btnUnsortedRugbyNations: TButton
    Left = 32
    Top = 48
    Width = 169
    Height = 34
    Caption = 'Unsorted Rugby Nations'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnUnsortedRugbyNationsClick
  end
  object btnSortedRugbyNations: TButton
    Left = 240
    Top = 48
    Width = 169
    Height = 34
    Caption = 'Sorted Rugby Nations'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnSortedRugbyNationsClick
  end
end
