inherited FDadosCombustivel: TFDadosCombustivel
  Left = 317
  Top = 138
  ActiveControl = EDesc
  Caption = 'Cadastro Tipo de Combust'#237'vel'
  ClientHeight = 212
  ExplicitLeft = 317
  ExplicitTop = 138
  ExplicitWidth = 527
  ExplicitHeight = 251
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel [0]
    Left = 24
    Top = 16
    Width = 218
    Height = 19
    Caption = 'Descri'#231#227'o Tipo de Combust'#237'vel'
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 85
    Width = 81
    Height = 19
    Caption = 'Pre'#231'o Atual'
  end
  inherited PRodape: TPanel
    Top = 171
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 2
    ExplicitTop = 171
    inherited BBOK: TBitBtn
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkCustom
      OnClick = BBOKClick
    end
    inherited BBCancelar: TBitBtn
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
    end
  end
  object EDesc: TEdit
    Left = 24
    Top = 41
    Width = 329
    Height = 27
    MaxLength = 20
    TabOrder = 0
  end
  object cxCEPreco: TcxCurrencyEdit
    Left = 24
    Top = 109
    Properties.Alignment.Horz = taRightJustify
    Properties.AutoSelect = False
    Properties.MaxValue = 100.000000000000000000
    Properties.ValidateOnEnter = False
    Properties.ValidationOptions = []
    TabOrder = 1
    Width = 81
  end
end
