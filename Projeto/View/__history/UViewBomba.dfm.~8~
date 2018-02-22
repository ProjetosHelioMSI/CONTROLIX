inherited FViewBomba: TFViewBomba
  Left = 377
  Top = 106
  Caption = 'Cadastro das Bombas'
  ClientWidth = 700
  ExplicitLeft = 377
  ExplicitTop = 106
  ExplicitWidth = 716
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Left = 614
    ExplicitLeft = 614
    inherited BBIncluir: TBitBtn
      OnClick = BBIncluirClick
    end
    inherited BBExcluir: TBitBtn
      ExplicitLeft = 6
      ExplicitTop = 123
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 614
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_BOMBA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_BOMBA'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TANQUE_BOMBA'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COMBUSTIVEL_BOMBA'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_COMBUSTIVEL'
        Width = 225
        Visible = True
      end>
  end
  inherited DSView: TDataSource
    DataSet = DMBanco.FDQBomba
  end
end
