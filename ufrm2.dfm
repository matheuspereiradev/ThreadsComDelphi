object frm2: Tfrm2
  Left = 0
  Top = 0
  Caption = 'frm2'
  ClientHeight = 369
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 448
    Top = 348
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 24
    Width = 489
    Height = 289
    DataSource = ds
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 88
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object con: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=abc123;Persist Security Info=True;U' +
      'ser ID=sa2;Initial Catalog=petshop;Data Source=DESKTOP-M4DCFL0\M' +
      'ATHEUSQL'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 40
  end
  object qry: TADOQuery
    Connection = con
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cliente')
    Left = 120
    Top = 48
  end
  object ds: TDataSource
    DataSet = qry
    Left = 208
    Top = 24
  end
end
