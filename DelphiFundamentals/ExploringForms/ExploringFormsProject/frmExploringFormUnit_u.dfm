object frmExploringFormUnit: TfrmExploringFormUnit
  Left = 0
  Top = 0
  Caption = 'Exploring Form Unit'
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
  object btnShowMessage: TButton
    Left = 144
    Top = 40
    Width = 105
    Height = 25
    Caption = 'Show Message'
    TabOrder = 0
    OnClick = btnShowMessageClick
  end
  object bmbClose: TBitBtn
    Left = 144
    Top = 104
    Width = 105
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 1
  end
end
