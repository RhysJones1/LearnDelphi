object frmPangramsList: TfrmPangramsList
  Left = 0
  Top = 0
  Caption = 'Pangrams List'
  ClientHeight = 91
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnSelect: TButton
    Left = 510
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Select'
    TabOrder = 0
    OnClick = btnSelectClick
  end
  object cboPangramsList: TComboBox
    Left = 8
    Top = 24
    Width = 577
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = '[Select a pangram from the list...]'
    OnChange = cboPangramsListChange
    Items.Strings = (
      '[Select a pangram from the list...]'
      'The quick brown fox jumps over the lazy dog'
      'Two driven jocks help fax my big quiz'
      'Fickle jinx bog dwarves spy math quiz'
      'Public junk dwarves hug my quartz fox'
      'Quick fox jumps nightly above wizard'
      'Five quacking zephyrs jolt my wax bed'
      'The five boxing wizards jump quickly'
      'Pack my box with five dozen liquor jugs'
      'When zombies arrive, quickly fax judge Pat'
      'Woven silk pyjamas exchanged for blue quartz')
  end
end
