object frmCharFromString: TfrmCharFromString
  Left = 0
  Top = 0
  Caption = 'Get Character from String'
  ClientHeight = 187
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCharPosition: TLabel
    Left = 284
    Top = 88
    Width = 78
    Height = 23
    Caption = 'Position'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTypeAWord: TLabel
    Left = 16
    Top = 13
    Width = 235
    Height = 23
    Caption = 'Type a word or sentence'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sedCharPosition: TSpinEdit
    Left = 368
    Top = 88
    Width = 57
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 20
    MinValue = 0
    ParentFont = False
    TabOrder = 0
    Value = 0
    OnChange = sedCharPositionChange
  end
  object edtInput: TEdit
    Left = 16
    Top = 42
    Width = 409
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 13
    ParentFont = False
    TabOrder = 1
    Text = 'Delphi is fun'
  end
  object pnlOutput: TPanel
    Left = 16
    Top = 136
    Width = 409
    Height = 38
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
