object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 330
  ClientWidth = 483
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
    Left = 200
    Top = 8
    Width = 111
    Height = 23
    Caption = 'Exercicio 2:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 85
    Width = 50
    Height = 13
    Caption = 'Numero 1:'
  end
  object Label3: TLabel
    Left = 32
    Top = 133
    Width = 50
    Height = 13
    Caption = 'Numero 2:'
  end
  object Label4: TLabel
    Left = 32
    Top = 181
    Width = 50
    Height = 13
    Caption = 'Numero 3:'
  end
  object Label5: TLabel
    Left = 32
    Top = 229
    Width = 50
    Height = 13
    Caption = 'Numero 4:'
  end
  object Label6: TLabel
    Left = 32
    Top = 277
    Width = 50
    Height = 13
    Caption = 'Numero 5:'
  end
  object lblRegistro: TLabel
    Left = 288
    Top = 85
    Width = 83
    Height = 13
    Caption = 'Numero maior:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 288
    Top = 133
    Width = 87
    Height = 13
    Caption = 'Numero menor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMedia: TLabel
    Left = 430
    Top = 232
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 105
    Top = 37
    Width = 304
    Height = 23
    Caption = 'Verificar numero maior e menor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 32
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 32
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 32
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 32
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 32
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object pnVerificar: TPanel
    Left = 264
    Top = 239
    Width = 177
    Height = 37
    Caption = 'Verificar Numeros'
    Color = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    OnClick = pnVerificarClick
  end
  object edtMaior: TEdit
    Left = 288
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edtMenor: TEdit
    Left = 288
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 7
  end
end
