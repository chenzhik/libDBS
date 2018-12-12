object Form5: TForm5
  Left = 287
  Top = 196
  Width = 979
  Height = 563
  Caption = #36141#20837#19982#28120#27760
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
    Left = 144
    Top = 40
    Width = 120
    Height = 13
    Caption = #22635#20837#36141#20837#20070#30446#30340#20449#24687#65306
  end
  object Label2: TLabel
    Left = 72
    Top = 72
    Width = 24
    Height = 13
    Caption = #20070#21495
  end
  object Label3: TLabel
    Left = 72
    Top = 104
    Width = 24
    Height = 13
    Caption = #20070#21517
  end
  object Label4: TLabel
    Left = 72
    Top = 136
    Width = 24
    Height = 13
    Caption = #20316#32773
  end
  object Label5: TLabel
    Left = 72
    Top = 168
    Width = 36
    Height = 13
    Caption = #20986#29256#31038
  end
  object Label6: TLabel
    Left = 72
    Top = 200
    Width = 48
    Height = 13
    Caption = #20986#29256#26102#38388
  end
  object Label8: TLabel
    Left = 480
    Top = 40
    Width = 108
    Height = 13
    Caption = #26597#35810#35201#28120#27760#30340#20070#30446#65306
  end
  object Label10: TLabel
    Left = 424
    Top = 72
    Width = 24
    Height = 13
    Caption = #20070#21495
  end
  object Label11: TLabel
    Left = 424
    Top = 104
    Width = 24
    Height = 13
    Caption = #20070#21517
  end
  object Label12: TLabel
    Left = 424
    Top = 136
    Width = 24
    Height = 13
    Caption = #20316#32773
  end
  object Label13: TLabel
    Left = 424
    Top = 168
    Width = 36
    Height = 13
    Caption = #20986#29256#31038
  end
  object Label14: TLabel
    Left = 648
    Top = 40
    Width = 60
    Height = 13
    Caption = #28120#27760#26412#25968#65306
  end
  object Label7: TLabel
    Left = 72
    Top = 232
    Width = 24
    Height = 13
    Caption = #25968#37327
  end
  object Button2: TButton
    Left = 152
    Top = 264
    Width = 75
    Height = 25
    Caption = #36141#20837
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 672
    Top = 200
    Width = 75
    Height = 25
    Caption = #28120#27760
    TabOrder = 1
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 144
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 144
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 144
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 144
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 144
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 264
    Top = 288
    Width = 481
    Height = 201
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 264
    Top = 264
    Width = 480
    Height = 25
    DataSource = DataSource1
    TabOrder = 8
  end
  object Edit6: TEdit
    Left = 144
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edit7: TEdit
    Left = 480
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Edit8: TEdit
    Left = 480
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Edit9: TEdit
    Left = 480
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object ComboBox1: TComboBox
    Left = 648
    Top = 72
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Text = 'ComboBox1'
  end
  object Button1: TButton
    Left = 504
    Top = 200
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 14
    OnClick = Button1Click
  end
  object Edit10: TEdit
    Left = 480
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 15
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
    DataSet = ADOQuery2
    OnDataChange = DataSource1DataChange
    Left = 936
    Top = 496
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aaLib;')
    Left = 896
    Top = 456
  end
end
