object Form1: TForm1
  Left = 200
  Top = 164
  Width = 425
  Height = 375
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1086#1082#1085#1072#1084#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 16
    Top = 16
    Width = 75
    Height = 33
    Caption = 'Rename'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 16
    Top = 56
    Width = 73
    Height = 33
    Caption = 'minimize/  maximize'
    TabOrder = 1
    WordWrap = True
    OnClick = btn2Click
  end
  object lst1: TListBox
    Left = 144
    Top = 8
    Width = 225
    Height = 289
    ItemHeight = 13
    TabOrder = 2
  end
  object btn3: TButton
    Left = 16
    Top = 96
    Width = 75
    Height = 33
    Caption = 'Information'
    TabOrder = 3
    WordWrap = True
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 16
    Top = 136
    Width = 75
    Height = 33
    Caption = 'Paint'
    TabOrder = 4
    OnClick = btn4Click
  end
end
