object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form3'
  ClientHeight = 265
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 83
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 56
    Top = 120
    Width = 37
    Height = 13
    Caption = 'Estado:'
  end
  object Button1: TButton
    Left = 40
    Top = 32
    Width = 313
    Height = 25
    Caption = 'Extrae la primera cadena hasta el :'
    TabOrder = 0
    OnClick = Button1Click
  end
end
