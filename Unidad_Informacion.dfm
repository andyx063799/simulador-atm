object Forma_Informacion: TForma_Informacion
  Left = 369
  Top = 159
  Width = 800
  Height = 600
  Caption = 'Forma_Informacion'
  Color = clNavy
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 50
    Top = 58
    Width = 700
    Height = 450
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 50
      Top = 20
      Width = 336
      Height = 29
      Caption = 'INFORMACION DEL CLIENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 40
      Top = 104
      Width = 86
      Height = 24
      Caption = 'Nombre:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 40
      Top = 152
      Width = 201
      Height = 24
      Caption = 'Numero de Cuenta: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 40
      Top = 200
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
      Left = 40
      Top = 248
      Width = 99
      Height = 24
      Caption = 'Telefono: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 40
      Top = 296
      Width = 68
      Height = 24
      Caption = 'Email: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 210
      Top = 344
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
      OnClick = Button1Click
    end
  end
end
