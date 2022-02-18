object frmArrayIntersection: TfrmArrayIntersection
  Left = 0
  Top = 0
  Caption = 'Array Intersection'
  ClientHeight = 341
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lstRugbyNations: TListBox
    Left = 24
    Top = 54
    Width = 138
    Height = 267
    ItemHeight = 13
    TabOrder = 0
  end
  object lstCricketNations: TListBox
    Left = 192
    Top = 54
    Width = 138
    Height = 267
    ItemHeight = 13
    TabOrder = 1
  end
  object lstBoth: TListBox
    Left = 352
    Top = 54
    Width = 137
    Height = 267
    ItemHeight = 13
    TabOrder = 2
  end
  object btnRugbyNations: TButton
    Left = 24
    Top = 14
    Width = 138
    Height = 34
    Caption = 'Rugby Nations'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnRugbyNationsClick
  end
  object btnCricketNations: TButton
    Left = 192
    Top = 14
    Width = 138
    Height = 34
    Caption = 'Cricket Nations'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnCricketNationsClick
  end
  object btnBoth: TButton
    Left = 352
    Top = 14
    Width = 137
    Height = 34
    Caption = 'Both'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnBothClick
  end
end
