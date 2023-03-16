object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 308
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 40
    Top = 85
    Width = 50
    Height = 13
    Caption = 'Numero 1:'
  end
  object Label3: TLabel
    Left = 176
    Top = 85
    Width = 50
    Height = 13
    Caption = 'Numero 2:'
  end
  object Label4: TLabel
    Left = 40
    Top = 133
    Width = 50
    Height = 13
    Caption = 'Numero 3:'
  end
  object Label5: TLabel
    Left = 176
    Top = 133
    Width = 50
    Height = 13
    Caption = 'Numero 4:'
  end
  object Label6: TLabel
    Left = 40
    Top = 183
    Width = 50
    Height = 13
    Caption = 'Numero 5:'
  end
  object Label1: TLabel
    Left = 104
    Top = 8
    Width = 111
    Height = 23
    Caption = 'Exercicio 4:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 80
    Top = 37
    Width = 178
    Height = 23
    Caption = 'Posicao 3 do Array'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 40
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 176
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 40
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 176
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 40
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object pnVerificar: TPanel
    Left = 176
    Top = 196
    Width = 121
    Height = 27
    Caption = 'Verificar Numeros'
    Color = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    OnClick = pnVerificarClick
  end
  object GroupBox1: TGroupBox
    Left = 41
    Top = 244
    Width = 256
    Height = 45
    Caption = 'Posicao 3:'
    TabOrder = 6
    object lblPosicao3: TLabel
      Left = 63
      Top = 16
      Width = 4
      Height = 18
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
