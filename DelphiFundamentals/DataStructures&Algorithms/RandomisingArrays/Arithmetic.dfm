object frmArithmetic: TfrmArithmetic
  Left = 0
  Top = 0
  Caption = 'frmArithmetic'
  ClientHeight = 231
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMathQuestion: TPanel
    Left = 120
    Top = 89
    Width = 137
    Height = 41
    Caption = '10 x 10'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object edtAnswer: TEdit
    Left = 263
    Top = 90
    Width = 90
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 3
    ParentFont = False
    TabOrder = 1
    Text = 'edtAnswer'
  end
  object MainMenu1: TMainMenu
    Left = 488
    Top = 168
  end
end
