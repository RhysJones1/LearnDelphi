object frmIntroToArrays: TfrmIntroToArrays
  Left = 0
  Top = 0
  Caption = 'Exploring Arrays'
  ClientHeight = 399
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblPrompt: TLabel
    Left = 48
    Top = 40
    Width = 314
    Height = 19
    Caption = 'Select/Type a month number (1 to 12)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sedMonthNumber: TSpinEdit
    Left = 376
    Top = 37
    Width = 49
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 12
    MinValue = 1
    ParentFont = False
    TabOrder = 0
    Value = 2
    OnChange = sedMonthNumberChange
  end
  object pnlMonthName: TPanel
    Left = 48
    Top = 80
    Width = 377
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object lstAllMonths: TListBox
    Left = 48
    Top = 188
    Width = 153
    Height = 201
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 19
    ParentFont = False
    TabOrder = 2
  end
  object lstHuntingMonths: TListBox
    Left = 272
    Top = 188
    Width = 153
    Height = 201
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 19
    ParentFont = False
    TabOrder = 3
  end
  object btnAllMonths: TButton
    Left = 48
    Top = 152
    Width = 153
    Height = 30
    Caption = 'All months'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnAllMonthsClick
  end
  object btnHuntingSeason: TButton
    Left = 272
    Top = 152
    Width = 153
    Height = 30
    Caption = 'Hunting Season'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnHuntingSeasonClick
  end
end
