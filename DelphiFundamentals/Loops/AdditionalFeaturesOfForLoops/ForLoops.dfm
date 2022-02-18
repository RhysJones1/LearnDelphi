object frmForLoops: TfrmForLoops
  Left = 0
  Top = 0
  Caption = 'Additional Features of For-Loops'
  ClientHeight = 277
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlVowels: TPanel
    Left = 136
    Top = 88
    Width = 257
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object btnVowels: TButton
    Left = 8
    Top = 88
    Width = 122
    Height = 41
    Caption = 'Show Vowels'
    TabOrder = 1
    OnClick = btnVowelsClick
  end
  object edtPangram: TEdit
    Left = 136
    Top = 40
    Width = 449
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Text = 'The quick brown fox jumps over the lazy dog'
  end
  object pnlVowelCount: TPanel
    Left = 399
    Top = 88
    Width = 186
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object pnlEvenNumbers: TPanel
    Left = 136
    Top = 144
    Width = 449
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object btnEvenNumbers: TButton
    Left = 8
    Top = 144
    Width = 122
    Height = 41
    Caption = 'Show Even Numbers'
    TabOrder = 5
    OnClick = btnEvenNumbersClick
  end
  object pnlStop: TPanel
    Left = 208
    Top = 200
    Width = 377
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object btnStop: TButton
    Left = 8
    Top = 200
    Width = 122
    Height = 41
    Caption = 'Stop'
    TabOrder = 7
    OnClick = btnStopClick
  end
  object sedStop: TSpinEdit
    Left = 136
    Top = 206
    Width = 66
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 1000
    MinValue = 1
    ParentFont = False
    TabOrder = 8
    Value = 1
  end
end
