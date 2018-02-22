inherited FDadosAbastecimento: TFDadosAbastecimento
  Left = 363
  Top = 217
  Caption = 'Cadastro Abastecimento'
  ClientHeight = 237
  ClientWidth = 605
  OnClose = FormClose
  ExplicitLeft = 363
  ExplicitTop = 217
  ExplicitWidth = 621
  ExplicitHeight = 276
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel [0]
    Left = 19
    Top = 127
    Width = 181
    Height = 19
    Caption = 'Data/Hora Abastecimento'
  end
  object Label2: TLabel [1]
    Left = 248
    Top = 63
    Width = 110
    Height = 19
    Caption = 'Pre'#231'o do litro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 19
    Top = 8
    Width = 49
    Height = 19
    Caption = 'Bomba'
  end
  object LAliquota: TLabel [3]
    Left = 248
    Top = 158
    Width = 67
    Height = 19
    Caption = 'Imposto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [4]
    Left = 248
    Top = 110
    Width = 195
    Height = 19
    Caption = 'Valor do Abastecimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [5]
    Left = 248
    Top = 11
    Width = 166
    Height = 19
    Caption = 'Quantidade de litros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel [6]
    Left = 19
    Top = 66
    Width = 87
    Height = 19
    Caption = 'Combust'#237'vel'
  end
  inherited PRodape: TPanel
    Top = 196
    Width = 605
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 7
    ExplicitTop = 261
    ExplicitWidth = 527
    inherited BBOK: TBitBtn
      Left = 496
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitLeft = 418
    end
    inherited BBCancelar: TBitBtn
      Left = 391
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitLeft = 313
    end
  end
  object DBLCBBomba: TDBLookupComboBox
    Left = 19
    Top = 29
    Width = 209
    Height = 27
    KeyField = 'ID_BOMBA'
    ListField = 'DESC_BOMBA'
    ListSource = DSBomba
    TabOrder = 0
    OnClick = DBLCBBombaClick
  end
  object DTPDataHora: TDateTimePicker
    Left = 19
    Top = 149
    Width = 209
    Height = 27
    Date = 43152.385057326390000000
    Format = 'dd/mm/yyyy hh:mm'
    Time = 43152.385057326390000000
    TabOrder = 2
  end
  object cxCEQtd: TcxCurrencyEdit
    Left = 450
    Top = 8
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = ',0.00;,0.00'
    Properties.ValidateOnEnter = False
    Properties.ValidationOptions = []
    Properties.OnChange = cxCEQtdPropertiesChange
    TabOrder = 3
    Width = 132
  end
  object cxCEImposto: TcxCurrencyEdit
    Left = 450
    Top = 155
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Properties.ValidateOnEnter = False
    Properties.ValidationOptions = []
    Style.Color = 15000804
    TabOrder = 6
    Width = 132
  end
  object cxCEPreco: TcxCurrencyEdit
    Left = 450
    Top = 60
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Properties.ValidateOnEnter = False
    Properties.ValidationOptions = []
    Style.Color = 15000804
    TabOrder = 4
    Width = 132
  end
  object cxCEValor: TcxCurrencyEdit
    Left = 450
    Top = 107
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Properties.ValidateOnEnter = False
    Properties.ValidationOptions = []
    Style.Color = 15000804
    TabOrder = 5
    Width = 132
  end
  object ETipo: TEdit
    Left = 19
    Top = 88
    Width = 209
    Height = 27
    TabStop = False
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DSBomba: TDataSource
    DataSet = DMBanco.FDQBomba
    Left = 128
  end
end
