inherited FDadosRelatorioAbastecimento: TFDadosRelatorioAbastecimento
  Left = 304
  Top = 258
  Caption = 'Configura'#231#227'o Relat'#243'rio de Abastecimento'
  ClientHeight = 155
  ExplicitLeft = 304
  ExplicitTop = 258
  ExplicitHeight = 194
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel [0]
    Left = 24
    Top = 24
    Width = 54
    Height = 19
    Caption = 'Per'#237'odo'
  end
  object Label2: TLabel [1]
    Left = 210
    Top = 57
    Width = 8
    Height = 19
    Caption = #224
  end
  inherited PRodape: TPanel
    Top = 114
    ExplicitTop = 114
    inherited BBOK: TBitBtn
      OnClick = BBOKClick
    end
  end
  object DTPInicial: TDateTimePicker
    Left = 24
    Top = 49
    Width = 173
    Height = 27
    Date = 43152.593696817130000000
    Time = 43152.593696817130000000
    TabOrder = 1
  end
  object DTPFinal: TDateTimePicker
    Left = 230
    Top = 49
    Width = 173
    Height = 27
    Date = 43152.593696817130000000
    Time = 43152.593696817130000000
    TabOrder = 2
  end
end
