object frmWeatherReporter: TfrmWeatherReporter
  Left = 0
  Top = 0
  Caption = 'Weather Reporter'
  ClientHeight = 266
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 164
    Top = 35
    Width = 26
    Height = 13
    Caption = 'Mode'
  end
  object Label2: TLabel
    Left = 163
    Top = 75
    Width = 31
    Height = 13
    Caption = 'Colour'
  end
  object cboMode: TComboBox
    Left = 200
    Top = 32
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 0
    Text = '[Select a mode....]'
    Items.Strings = (
      '[Select a mode....]'
      'Steady'
      'Flashing')
  end
  object cboColour: TComboBox
    Left = 200
    Top = 72
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = '[Select a Colour....]'
    Items.Strings = (
      '[Select a Colour....]'
      'Blue'
      'Red')
  end
  object btnPredict: TButton
    Left = 123
    Top = 121
    Width = 181
    Height = 25
    Caption = 'Predict Weather'
    TabOrder = 2
    OnClick = btnPredictClick
  end
  object pnlWeather: TPanel
    Left = 8
    Top = 152
    Width = 401
    Height = 83
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
  end
  object tmrFlashing: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrFlashingTimer
    Left = 32
    Top = 24
  end
end
