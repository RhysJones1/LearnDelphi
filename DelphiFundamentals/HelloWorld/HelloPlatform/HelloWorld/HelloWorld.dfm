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
    Left = 176
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Press Me'
    TabOrder = 0
    OnClick = Button1Click
  end
  object PressMe: TEdit
    Left = 152
    Top = 37
    Width = 113
    Height = 21
    TabOrder = 1
    Text = 'PressMe'
  end
end
