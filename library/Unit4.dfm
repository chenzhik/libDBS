object Form4: TForm4
  Left = 281
  Top = 228
  Width = 979
  Height = 563
  Caption = #26597#35810#35760#24405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 96
    Height = 13
    Caption = #35831#36873#25321#26597#35810#26041#24335#65306
  end
  object Label3: TLabel
    Left = 168
    Top = 48
    Width = 96
    Height = 13
    Caption = #35831#36755#20837#26597#35810#20449#24687#65306
  end
  object Label4: TLabel
    Left = 368
    Top = 48
    Width = 60
    Height = 13
    Caption = #26597#35810#32467#26524#65306
  end
  object DBGrid1: TDBGrid
    Left = 368
    Top = 64
    Width = 553
    Height = 265
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 32
    Top = 176
    Width = 113
    Height = 25
    Caption = #26597#35810#36141#20837#35760#24405
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 32
    Top = 216
    Width = 113
    Height = 25
    Caption = #26597#35810#28120#27760#35760#24405
    TabOrder = 2
    OnClick = Button4Click
  end
  object RadioButton1: TRadioButton
    Left = 32
    Top = 64
    Width = 113
    Height = 17
    Caption = #20070#21517
    Checked = True
    TabOrder = 3
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 32
    Top = 80
    Width = 113
    Height = 17
    Caption = #20316#32773
    TabOrder = 4
  end
  object RadioButton3: TRadioButton
    Left = 32
    Top = 96
    Width = 113
    Height = 17
    Caption = #20986#29256#31038
    TabOrder = 5
  end
  object RadioButton4: TRadioButton
    Left = 32
    Top = 112
    Width = 113
    Height = 17
    Caption = #20070#21495
    TabOrder = 6
  end
  object RadioButton5: TRadioButton
    Left = 32
    Top = 128
    Width = 113
    Height = 17
    Caption = #36141#20837#25110#28120#27760#26102#38388
    TabOrder = 7
  end
  object Edit1: TEdit
    Left = 168
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=student;Persist Security Info=True;' +
      'User ID=student;Initial Catalog=student;Data Source=202.38.88.99' +
      ',1434'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 856
    Top = 496
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from student..aaLibin;')
    Left = 896
    Top = 496
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 936
    Top = 496
  end
end
