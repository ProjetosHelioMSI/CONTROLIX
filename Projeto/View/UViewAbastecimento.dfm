inherited FViewAbastecimento: TFViewAbastecimento
  Left = 143
  Caption = 'Abastecimentos'
  ClientWidth = 958
  ExplicitLeft = 143
  ExplicitWidth = 974
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Left = 872
    ExplicitLeft = 812
    inherited BBIncluir: TBitBtn
      OnClick = BBIncluirClick
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 872
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_ABASTECIMENTO'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_ABASTECIMENTO'
        Width = 136
        Visible = True
      end
      item
        Color = 14540253
        Expanded = False
        FieldName = 'LITROS_ABASTECIMENTO'
        Title.Alignment = taRightJustify
        Width = 97
        Visible = True
      end
      item
        Color = 15204302
        Expanded = False
        FieldName = 'VALOR_ABASTECIMENTO'
        Title.Alignment = taRightJustify
        Width = 87
        Visible = True
      end
      item
        Color = 14145535
        Expanded = False
        FieldName = 'IMPOSTO_ABASTECIMENTO'
        Title.Alignment = taRightJustify
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOMBA_ABASTECIMENTO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_BOMBA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DESC_BOMBA'
        Width = 91
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TANQUE_BOMBA'
        Title.Alignment = taCenter
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMBUSTIVEL_BOMBA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_COMBUSTIVEL'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DESC_COMBUSTIVEL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_COMBUSTIVEL'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PrecoCalculado'
        Title.Alignment = taRightJustify
        Title.Caption = 'Pre'#231'o (litro)'
        Width = 86
        Visible = True
      end>
  end
  inherited DSView: TDataSource
    DataSet = DMBanco.FDQAbastecimento
  end
end
