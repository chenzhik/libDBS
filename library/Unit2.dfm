object Form2: TForm2
  Left = 311
  Top = 130
  Width = 979
  Height = 563
  Caption = #26597#35810
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
    Top = 56
    Width = 96
    Height = 13
    Caption = #35831#36873#25321#26597#35810#26041#24335#65306
  end
  object Label4: TLabel
    Left = 160
    Top = 56
    Width = 96
    Height = 13
    Caption = #35831#36755#20837#26597#35810#20449#24687#65306
  end
  object Label2: TLabel
    Left = 752
    Top = 104
    Width = 48
    Height = 13
    Caption = #20462#25913#35760#24405
  end
  object RadioButton1: TRadioButton
    Left = 32
    Top = 72
    Width = 113
    Height = 17
    Caption = #20070#21517
    TabOrder = 0
  end
  object RadioButton2: TRadioButton
    Left = 32
    Top = 88
    Width = 113
    Height = 17
    Caption = #20316#32773
    TabOrder = 1
  end
  object RadioButton3: TRadioButton
    Left = 32
    Top = 104
    Width = 113
    Height = 17
    Caption = #20986#29256#31038
    TabOrder = 2
  end
  object RadioButton4: TRadioButton
    Left = 32
    Top = 120
    Width = 113
    Height = 17
    Caption = #20070#21495
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 160
    Top = 128
    Width = 585
    Height = 353
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 264
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 424
    Top = 56
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 6
    OnClick = Button1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 160
    Top = 104
    Width = 580
    Height = 25
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 184
    Width = 161
    Height = 161
    DataSource = DataSource1
    PanelHeight = 53
    PanelWidth = 144
    TabOrder = 8
  end
  object DBEdit1: TDBEdit
    Left = 760
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 9
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
      'select * from student..aaLib;')
    Left = 896
    Top = 496
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 936
    Top = 496
  end
end
