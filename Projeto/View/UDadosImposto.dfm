inherited FDadosImposto: TFDadosImposto
  Left = 356
  Top = 359
  Caption = 'Cadastro da Al'#237'quota do Imposto'
  ClientHeight = 159
  ClientWidth = 407
  ExplicitLeft = 356
  ExplicitTop = 359
  ExplicitWidth = 423
  ExplicitHeight = 198
  PixelsPerInch = 96
  TextHeight = 19
  object Label2: TLabel [0]
    Left = 32
    Top = 32
    Width = 146
    Height = 19
    Caption = 'Al'#237'quota do Imposto'
  end
  object Label3: TLabel [1]
    Left = 111
    Top = 59
    Width = 16
    Height = 19
    Caption = '%'
  end
  inherited PRodape: TPanel
    Top = 118
    Width = 407
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 1
    ExplicitTop = 225
    ExplicitWidth = 766
    inherited BBOK: TBitBtn
      Left = 299
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      OnClick = BBOKClick
      ExplicitLeft = 299
    end
    inherited BBCancelar: TBitBtn
      Left = 194
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitLeft = 194
    end
  end
  object cxCEAliquota: TcxCurrencyEdit
    Left = 32
    Top = 54
    Properties.DisplayFormat = ',0.00;,0.00'
    Properties.MaxValue = 100.000000000000000000
    Properties.ValidateOnEnter = False
    Properties.ValidationOptions = []
    TabOrder = 0
    Width = 73
  end
end
