object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 255
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 155
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Memo1: TMemo
    Left = 40
    Top = 48
    Width = 273
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 40
    Top = 8
    Width = 155
    Height = 25
    Caption = 'Importar a Memo1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 352
    Top = 8
    Width = 129
    Height = 25
    Caption = 'Procedimiento Split'
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 352
    Top = 48
    Width = 273
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 3
  end
end
