object Form1: TForm1
  Left = 362
  Top = 293
  Width = 979
  Height = 563
  Caption = #20027#39029
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 136
    Top = 256
    Width = 153
    Height = 81
    Caption = #31649#29702#21592#30331#24405
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 112
    Width = 153
    Height = 81
    Caption = #29992#25143#30331#24405
    TabOrder = 1
    OnClick = Button2Click
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
