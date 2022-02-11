object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Exploring Forms'
  ClientHeight = 400
  ClientWidth = 400
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClick = FormClick
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object btnShowAnother: TButton
    Left = 269
    Top = 368
    Width = 123
    Height = 24
    Caption = 'Show Another Form'
    TabOrder = 0
    OnClick = btnShowAnotherClick
  end
end
