object frmAnother: TfrmAnother
  Left = 0
  Top = 0
  Caption = 'Another Form'
  ClientHeight = 186
  ClientWidth = 418
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnAnotherButton: TButton
    Left = 256
    Top = 153
    Width = 139
    Height = 25
    Caption = 'One More Form'
    TabOrder = 0
    OnClick = btnAnotherButtonClick
  end
  object Edit1: TEdit
    Left = 32
    Top = 32
    Width = 121
    Height = 21
    Color = clMenuHighlight
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 32
    Top = 72
    Width = 121
    Height = 21
    Color = clRed
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 32
    Top = 112
    Width = 121
    Height = 21
    Color = clYellow
    TabOrder = 3
    Text = 'Edit3'
  end
end
