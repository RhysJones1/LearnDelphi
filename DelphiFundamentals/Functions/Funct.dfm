object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 344
  ClientWidth = 501
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
    Left = 96
    Top = 48
    Width = 161
    Height = 57
    Caption = 'Use the Max3 function'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 136
    Width = 161
    Height = 49
    Caption = 'Use the GetMonth function'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 279
    Top = 150
    Width = 122
    Height = 21
    TabOrder = 2
    Text = 'Enter your date of birth'
  end
  object Button3: TButton
    Left = 96
    Top = 216
    Width = 161
    Height = 41
    Caption = 'Use the isPrime function'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit2: TEdit
    Left = 280
    Top = 226
    Width = 161
    Height = 21
    TabOrder = 4
    Text = 'Enter a number between 1 - 10'
  end
end
