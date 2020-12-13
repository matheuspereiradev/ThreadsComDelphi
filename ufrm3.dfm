object frm3: Tfrm3
  Left = 0
  Top = 0
  Caption = 'frm3'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rtxt: TRichEdit
    Left = 24
    Top = 24
    Width = 465
    Height = 153
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'rtxt')
    ParentFont = False
    TabOrder = 0
    Zoom = 100
  end
  object Button1: TButton
    Left = 192
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
end
