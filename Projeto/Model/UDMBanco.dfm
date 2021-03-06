object DMBanco: TDMBanco
  OldCreateOrder = False
  Left = 259
  Top = 148
  Height = 411
  Width = 630
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\CONTROLIX\BancoDados\DBCONTROLIX.FDB'
      'User_Name=SYSDBA'
      'Password=MSI123'
      'Server=localhost'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 136
    Top = 33
  end
  object FDQCombustivel: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM COMBUSTIVEL '
      'ORDER BY ID_COMBUSTIVEL ')
    Left = 88
    Top = 112
    object FDQCombustivelID_COMBUSTIVEL: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_COMBUSTIVEL'
      Origin = 'ID_COMBUSTIVEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQCombustivelDESC_COMBUSTIVEL: TStringField
      DisplayLabel = 'Descri'#231#227'o Tipo de Combust'#237'vel'
      FieldName = 'DESC_COMBUSTIVEL'
      Origin = 'DESC_COMBUSTIVEL'
    end
    object FDQCombustivelPRECO_COMBUSTIVEL: TFloatField
      DisplayLabel = 'Pre'#231'o Litro'
      FieldName = 'PRECO_COMBUSTIVEL'
      Origin = 'PRECO_COMBUSTIVEL'
      currency = True
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 232
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 344
    Top = 32
  end
  object FDQBomba: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM BOMBA, COMBUSTIVEL'
      'WHERE COMBUSTIVEL_BOMBA = ID_COMBUSTIVEL '
      'ORDER BY ID_BOMBA'
      '')
    Left = 88
    Top = 168
    object FDQBombaID_BOMBA: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQBombaDESC_BOMBA: TStringField
      DisplayLabel = 'Nome da Bomba'
      FieldName = 'DESC_BOMBA'
      Origin = 'DESC_BOMBA'
    end
    object FDQBombaTANQUE_BOMBA: TSmallintField
      DisplayLabel = 'N'#250'mero do Tanque'
      FieldName = 'TANQUE_BOMBA'
      Origin = 'TANQUE_BOMBA'
    end
    object FDQBombaCOMBUSTIVEL_BOMBA: TSmallintField
      DisplayLabel = 'Tipo de Combust'#237'vel'
      FieldName = 'COMBUSTIVEL_BOMBA'
      Origin = 'COMBUSTIVEL_BOMBA'
      Required = True
    end
    object FDQBombaDESC_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Combust'#237'vel'
      FieldName = 'DESC_COMBUSTIVEL'
      Origin = 'DESC_COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQBombaPRECO_COMBUSTIVEL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_COMBUSTIVEL'
      Origin = 'PRECO_COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQAbastecimento: TFDQuery
    OnCalcFields = FDQAbastecimentoCalcFields
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM ABASTECIMENTO, BOMBA, COMBUSTIVEL '
      'WHERE BOMBA_ABASTECIMENTO = ID_BOMBA AND '
      '             COMBUSTIVEL_BOMBA = ID_COMBUSTIVEL '
      'ORDER BY ID_ABASTECIMENTO '
      ' ')
    Left = 88
    Top = 224
    object FDQAbastecimentoID_ABASTECIMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_ABASTECIMENTO'
      Origin = 'ID_ABASTECIMENTO'
    end
    object FDQAbastecimentoDATA_ABASTECIMENTO: TSQLTimeStampField
      DisplayLabel = 'Data/Hora'
      FieldName = 'DATA_ABASTECIMENTO'
      Origin = 'DATA_ABASTECIMENTO'
    end
    object FDQAbastecimentoLITROS_ABASTECIMENTO: TCurrencyField
      DisplayLabel = 'Quantidade Litros '
      FieldName = 'LITROS_ABASTECIMENTO'
      Origin = 'LITROS_ABASTECIMENTO'
      DisplayFormat = '###,##0.00'
      currency = False
    end
    object FDQAbastecimentoVALOR_ABASTECIMENTO: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_ABASTECIMENTO'
      Origin = 'VALOR_ABASTECIMENTO'
      currency = True
    end
    object FDQAbastecimentoIMPOSTO_ABASTECIMENTO: TFloatField
      DisplayLabel = 'Imposto'
      FieldName = 'IMPOSTO_ABASTECIMENTO'
      Origin = 'IMPOSTO_ABASTECIMENTO'
      currency = True
    end
    object FDQAbastecimentoBOMBA_ABASTECIMENTO: TSmallintField
      FieldName = 'BOMBA_ABASTECIMENTO'
      Origin = 'BOMBA_ABASTECIMENTO'
      Required = True
    end
    object FDQAbastecimentoID_BOMBA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQAbastecimentoDESC_BOMBA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bomba'
      FieldName = 'DESC_BOMBA'
      Origin = 'DESC_BOMBA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQAbastecimentoTANQUE_BOMBA: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tanque'
      FieldName = 'TANQUE_BOMBA'
      Origin = 'TANQUE_BOMBA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQAbastecimentoCOMBUSTIVEL_BOMBA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'COMBUSTIVEL_BOMBA'
      Origin = 'COMBUSTIVEL_BOMBA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQAbastecimentoID_COMBUSTIVEL: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ID_COMBUSTIVEL'
      Origin = 'ID_COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQAbastecimentoDESC_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Combustivel'
      FieldName = 'DESC_COMBUSTIVEL'
      Origin = 'DESC_COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQAbastecimentoPRECO_COMBUSTIVEL: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pre'#231'o Litro '
      FieldName = 'PRECO_COMBUSTIVEL'
      Origin = 'PRECO_COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQAbastecimentoPrecoCalculado: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PrecoCalculado'
      currency = True
    end
  end
  object FDQRelAbastecimento: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'SELECT CAST(DATA_ABASTECIMENTO AS DATE), TANQUE_BOMBA, DESC_BOMB' +
        'A,'
      '             SUM(VALOR_ABASTECIMENTO) AS VALORTOTAL, COUNT(*) NR'
      'FROM ABASTECIMENTO, BOMBA, COMBUSTIVEL '
      'WHERE BOMBA_ABASTECIMENTO = ID_BOMBA AND '
      '             COMBUSTIVEL_BOMBA = ID_COMBUSTIVEL AND'
      
        '             CAST(DATA_ABASTECIMENTO AS DATE) >=:P01 AND CAST(DA' +
        'TA_ABASTECIMENTO AS DATE) <=:P02'
      'GROUP BY 1, 2, 3'
      'ORDER BY 1, 2, 3'
      ''
      ''
      ''
      ' ')
    Left = 200
    Top = 225
    ParamData = <
      item
        Name = 'P01'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'P02'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object FDQRelAbastecimentoVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      DisplayFormat = '###,##0.00'
    end
    object FDQRelAbastecimentoCAST: TDateField
      FieldName = 'CAST'
      Origin = '"CAST"'
    end
    object FDQRelAbastecimentoTANQUE_BOMBA: TSmallintField
      FieldName = 'TANQUE_BOMBA'
      Origin = 'TANQUE_BOMBA'
    end
    object FDQRelAbastecimentoDESC_BOMBA: TStringField
      FieldName = 'DESC_BOMBA'
      Origin = 'DESC_BOMBA'
    end
    object FDQRelAbastecimentoNR: TIntegerField
      FieldName = 'NR'
      Origin = 'NR'
      Required = True
    end
  end
end
