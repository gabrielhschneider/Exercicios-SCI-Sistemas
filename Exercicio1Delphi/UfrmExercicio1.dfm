object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 335
  ClientWidth = 551
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 224
    Top = 8
    Width = 111
    Height = 23
    Caption = 'Exercicio 1:'
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
    Left = 296
    Top = 85
    Width = 35
    Height = 13
    Caption = 'Pares:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 392
    Top = 85
    Width = 51
    Height = 13
    Caption = 'Impares:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 300
    Top = 248
    Width = 113
    Height = 13
    Caption = 'Media dos numeros:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMedia: TLabel
    Left = 430
    Top = 248
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 130
    Top = 37
    Width = 313
    Height = 23
    Caption = 'Definir numeros Impares e Pares'
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
  object mmPar: TMemo
    Left = 296
    Top = 104
    Width = 76
    Height = 138
    Lines.Strings = (
      '')
    TabOrder = 5
  end
  object pnVerificar: TPanel
    Left = 296
    Top = 292
    Width = 185
    Height = 27
    Caption = 'Verificar Numeros'
    Color = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 6
    OnClick = pnVerificarClick
  end
  object mmImpar: TMemo
    Left = 392
    Top = 104
    Width = 76
    Height = 138
    Lines.Strings = (
      '')
    TabOrder = 7
  end
end
