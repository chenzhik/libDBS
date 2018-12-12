object Form6: TForm6
  Left = 221
  Top = 210
  Width = 979
  Height = 563
  Caption = #20511#38405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 80
    Top = 72
    Width = 84
    Height = 13
    Caption = #36755#20837#20511#38405#20449#24687#65306
  end
  object Label10: TLabel
    Left = 80
    Top = 104
    Width = 24
    Height = 13
    Caption = #20070#21495
  end
  object Label11: TLabel
    Left = 80
    Top = 136
    Width = 24
    Height = 13
    Caption = #20070#21517
  end
  object Label12: TLabel
    Left = 80
    Top = 168
    Width = 24
    Height = 13
    Caption = #20316#32773
  end
  object Label13: TLabel
    Left = 80
    Top = 200
    Width = 36
    Height = 13
    Caption = #20986#29256#31038
  end
  object Label1: TLabel
    Left = 80
    Top = 232
    Width = 72
    Height = 13
    Caption = #20511#38405#20154#23398#21495#65306
  end
  object DBGrid1: TDBGrid
    Left = 408
    Top = 40
    Width = 497
    Height = 393
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 160
    Top = 288
    Width = 81
    Height = 41
    Caption = #20511#38405
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 272
    Top = 288
    Width = 113
    Height = 41
    Caption = #26597#35810#20511#38405#35760#24405
    TabOrder = 2
  end
  object Button3: TButton
    Left = 56
    Top = 288
    Width = 75
    Height = 41
    Caption = #26597#35810#20070#30446
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 168
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 168
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 168
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 168
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 168
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'Edit5'
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
      'select * from student..aaLib, aaLibuser, aaLibUB;')
    Left = 896
    Top = 496
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    OnDataChange = DataSource1DataChange
    Left = 936
    Top = 496
  end
end
