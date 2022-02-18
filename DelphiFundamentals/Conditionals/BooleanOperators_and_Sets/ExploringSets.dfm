object frmExploringSets: TfrmExploringSets
  Left = 0
  Top = 0
  Caption = 'Exploring Sets'
  ClientHeight = 211
  ClientWidth = 420
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
    Left = 192
    Top = 29
    Width = 163
    Height = 23
    Caption = 'Enter a character'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCharacter: TEdit
    Left = 361
    Top = 24
    Width = 33
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 1
    ParentFont = False
    TabOrder = 0
    OnChange = edtCharacterChange
  end
  object pnlDescription: TPanel
    Left = 25
    Top = 152
    Width = 369
    Height = 41
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object btnShowDescription: TButton
    Left = 119
    Top = 87
    Width = 202
    Height = 43
    Caption = 'Show Description'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnShowDescriptionClick
  end
end
