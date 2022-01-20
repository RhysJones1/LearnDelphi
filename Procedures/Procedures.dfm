object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 186
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 24
    Width = 161
    Height = 41
    Caption = 'Display Heading procedure'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 208
    Top = 24
    Width = 185
    Height = 154
    Lines.Strings = (
      'Memo1'
      'Football'
      'Rugby'
      'Running'
      'Swimming'
      'Tennis'
      'Golf')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button2: TButton
    Left = 24
    Top = 71
    Width = 161
    Height = 41
    Caption = 'Display Heading with parameter'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 118
    Width = 161
    Height = 35
    Caption = 'Load text file into Memo'
    TabOrder = 3
    OnClick = Button3Click
  end
end
