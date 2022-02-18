object frmInterCityDistances: TfrmInterCityDistances
  Left = 0
  Top = 0
  ActiveControl = sedDestination
  Caption = 'Inter-City Distances'
  ClientHeight = 234
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object lblFrom: TLabel
    Left = 257
    Top = 19
    Width = 47
    Height = 19
    Caption = 'From:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTo: TLabel
    Left = 277
    Top = 57
    Width = 27
    Height = 19
    Caption = 'To:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlCities: TPanel
    Left = 32
    Top = 16
    Width = 145
    Height = 121
    BevelInner = bvLowered
    TabOrder = 0
    object lblLondon: TLabel
      Left = 25
      Top = 41
      Width = 86
      Height = 19
      Caption = '2 - London'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNewYork: TLabel
      Left = 25
      Top = 16
      Width = 106
      Height = 19
      Caption = '1 - New York'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSydney: TLabel
      Left = 25
      Top = 66
      Width = 85
      Height = 19
      Caption = '3 - Sydney'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTokyo: TLabel
      Left = 25
      Top = 91
      Width = 77
      Height = 19
      Caption = '4 - Tokyo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlDistance: TPanel
    Left = 32
    Top = 160
    Width = 321
    Height = 49
    Caption = 'Distance: 0 kilometers'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object sedDeparture: TSpinEdit
    Left = 312
    Top = 16
    Width = 41
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 4
    MinValue = 1
    ParentFont = False
    TabOrder = 1
    Value = 1
  end
  object sedDestination: TSpinEdit
    Left = 312
    Top = 54
    Width = 41
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 4
    MinValue = 1
    ParentFont = False
    TabOrder = 2
    Value = 1
  end
  object btnShowDistance: TButton
    Left = 208
    Top = 100
    Width = 145
    Height = 35
    Caption = 'Show Distance'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnShowDistanceClick
  end
  object btnShowDistances: TButton
    Left = 440
    Top = 10
    Width = 249
    Height = 39
    Caption = 'Show Distances'
    TabOrder = 4
  end
  object lstDistanceTable: TListBox
    Left = 440
    Top = 55
    Width = 249
    Height = 154
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
end
