object Forma_Saldo: TForma_Saldo
  Left = 398
  Top = 204
  Width = 800
  Height = 600
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Forma_Saldo'
  Color = clNavy
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 48
    Top = 40
    Width = 700
    Height = 450
    TabOrder = 0
    object Label1: TLabel
      Left = 26
      Top = 26
      Width = 297
      Height = 32
      Caption = 'CONSULTA DE SALDO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 256
      Top = 104
      Width = 183
      Height = 32
      Caption = 'Saldo Actual: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 280
      Top = 152
      Width = 113
      Height = 32
      Caption = '$2000.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 48
      Top = 216
      Width = 166
      Height = 24
      Caption = 'Tipo de Cuenta: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 48
      Top = 256
      Width = 195
      Height = 24
      Caption = 'Numero de Cuenta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button2: TButton
      Left = 210
      Top = 320
      Width = 280
      Height = 60
      Caption = 'REGRESAR AL MENU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
  end
end
