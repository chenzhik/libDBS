object Form8: TForm8
  Left = 699
  Top = 434
  Width = 400
  Height = 209
  Caption = #30331#24405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 105
    Height = 25
    Caption = #29992#25143#36134#21495#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 80
    Width = 97
    Height = 33
    Caption = #36755#20837#23494#30721#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 152
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '<user id>'
  end
  object Edit2: TEdit
    Left = 152
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '<password>'
  end
  object Button1: TButton
    Left = 152
    Top = 120
    Width = 75
    Height = 25
    Caption = #30331#24405
    TabOrder = 2
    OnClick = Button1Click
  end
end
