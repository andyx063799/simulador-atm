object Forma_Bienvenida: TForma_Bienvenida
  Left = 338
  Top = 95
  Width = 800
  Height = 600
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cajero Autom'#225'tico - Bienvenida'
  Color = clNavy
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 50
    Top = 50
    Width = 700
    Height = 450
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 50
      Top = 50
      Width = 527
      Height = 32
      Caption = 'BIENVENIDO AL CAJERO AUTOM'#193'TICO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 50
      Top = 120
      Width = 287
      Height = 18
      Alignment = taCenter
      Caption = 'Por favor, inserte su tarjeta para continuar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 50
      Top = 180
      Width = 403
      Height = 80
      Caption = 
        'Este cajero autom'#225'tico le permite realizar las siguientes operac' +
        'iones:'#13#8226' Consulta de saldo'#13#8226' Retiro de efectivo'#13#8226' Dep'#243'sitos'#13#8226' Co' +
        'nsulta de informacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 275
      Top = 300
      Width = 150
      Height = 50
      Caption = 'INSERTAR TARJETA'
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
  object Panel2: TPanel
    Left = 50
    Top = 520
    Width = 700
    Height = 30
    Color = clSilver
    TabOrder = 1
    object Label4: TLabel
      Left = 10
      Top = 8
      Width = 69
      Height = 14
      Caption = 'Fecha y Hora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Timer1: TTimer
    Left = 8
    Top = 8
  end
end
