inherited FViewCombustivel: TFViewCombustivel
  Caption = 'Cadastro Tipo de Combustivel'
  ExplicitWidth = 606
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BBIncluir: TBitBtn
      OnClick = BBIncluirClick
      ExplicitLeft = 6
      ExplicitTop = -5
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_COMBUSTIVEL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_COMBUSTIVEL'
        Title.Caption = 'Descri'#231#227'o'
        Width = 246
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_COMBUSTIVEL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Pre'#231'o Litro Atual'
        Width = 89
        Visible = True
      end>
  end
  inherited DSView: TDataSource
    DataSet = DMBanco.FDQCombustivel
  end
end
