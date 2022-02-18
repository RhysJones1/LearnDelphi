object frmNestedForLoops: TfrmNestedForLoops
  Left = 0
  Top = 0
  Caption = 'Nested For-Loops'
  ClientHeight = 203
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResult: TLabel
    Left = 152
    Top = 32
    Width = 401
    Height = 145
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnNumbers: TButton
    Left = 24
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Numbers'
    TabOrder = 0
    OnClick = btnNumbersClick
  end
  object btnAlphabet: TButton
    Left = 24
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Alphabet'
    TabOrder = 1
    OnClick = btnAlphabetClick
  end
end
