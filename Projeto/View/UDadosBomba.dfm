inherited FDadosBomba: TFDadosBomba
  Left = 322
  Top = 255
  ActiveControl = EDesc
  Caption = 'Cadastro da Bomba'
  ClientHeight = 252
  ClientWidth = 410
  OnClose = FormClose
  ExplicitLeft = 322
  ExplicitTop = 255
  ExplicitWidth = 426
  ExplicitHeight = 291
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel [0]
    Left = 19
    Top = 13
    Width = 143
    Height = 19
    Caption = 'Descri'#231#227'o da Bomba'
  end
  object Label2: TLabel [1]
    Left = 19
    Top = 77
    Width = 138
    Height = 19
    Caption = 'N'#250'mero do Tanque'
  end
  object Label3: TLabel [2]
    Left = 19
    Top = 139
    Width = 206
    Height = 19
    Caption = 'Tipo de Combust'#237'vel Atuante'
  end
  inherited PRodape: TPanel
    Top = 211
    Width = 410
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 3
    ExplicitTop = 211
    ExplicitWidth = 410
    inherited BBOK: TBitBtn
      Left = 301
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitLeft = 301
    end
    inherited BBCancelar: TBitBtn
      Left = 196
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitLeft = 196
    end
  end
  object EDesc: TEdit
    Left = 19
    Top = 37
    Width = 281
    Height = 27
    MaxLength = 20
    TabOrder = 0
  end
  object ETanque: TEdit
    Left = 19
    Top = 100
    Width = 46
    Height = 27
    Alignment = taRightJustify
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 1
  end
  object DBLCBTipoComb: TDBLookupComboBox
    Left = 19
    Top = 163
    Width = 281
    Height = 27
    KeyField = 'ID_COMBUSTIVEL'
    ListField = 'DESC_COMBUSTIVEL'
    ListSource = DSCombustivel
    TabOrder = 2
  end
  object DSCombustivel: TDataSource
    DataSet = DMBanco.FDQCombustivel
    Left = 312
    Top = 112
  end
end
