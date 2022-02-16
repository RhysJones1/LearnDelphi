object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Make a book...'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 423
    Top = 173
    Width = 115
    Height = 13
    Caption = 'Enter name and author:'
  end
  object Memo1: TMemo
    Left = 24
    Top = 8
    Width = 393
    Height = 273
    TabOrder = 0
  end
  object NameEdit: TEdit
    Left = 423
    Top = 192
    Width = 204
    Height = 21
    TabOrder = 1
  end
  object AuthorEdit: TEdit
    Left = 423
    Top = 219
    Width = 204
    Height = 21
    TabOrder = 2
  end
  object Button2: TButton
    Left = 424
    Top = 256
    Width = 203
    Height = 25
    Caption = 'Assign Name and Author'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 423
    Top = 8
    Width = 204
    Height = 25
    Caption = 'Show Book'
    TabOrder = 4
    OnClick = Button1Click
  end
end
