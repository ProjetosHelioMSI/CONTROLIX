object FRelAbastecimentos: TFRelAbastecimentos
  Left = 319
  Top = 185
  Caption = 'Relat'#243'rio de Abastecimentos'
  ClientHeight = 441
  ClientWidth = 853
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLRRelAbastecimentos: TRLReport
    Left = 32
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DSRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 46
        Top = 11
        Width = 132
        Height = 29
        Caption = 'Posto ABC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 49
        Top = 44
        Width = 223
        Height = 19
        Caption = 'Relat'#243'rio de Abastecimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 651
        Top = 9
        Width = 60
        Height = 16
        Alignment = taRightJustify
        Info = itFullDate
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 598
        Top = 48
        Width = 112
        Height = 16
        Alignment = taRightJustify
        Info = itLastPageNumber
        Text = ''
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 630
        Top = 29
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 275
        Top = 20
        Width = 277
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CONTROLIX'
      end
      object RLImage1: TRLImage
        Left = 9
        Top = 15
        Width = 36
        Height = 44
        Picture.Data = {
          055449636F6E0000010002002020100000000000E80200002600000010101000
          00000000280100000E0300002800000020000000400000000100040000000000
          8002000000000000000000000000000000000000000000000000800000800000
          0080800080000000800080008080000080808000C0C0C0000000FF0000FF0000
          00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000000000000000
          000000000000088888888888888870000000000000000F8FFFFFFFFFFF887000
          0000000000000878F888888888F870700000000000000F7F8F88888888F87770
          0000000000000878F8F8888888F877700000000000000F7F8F8F888888F87770
          0000000000000878F8F8F88888F8777000000000000008788F8F8F8888F87770
          000000000000087888F8F8F888F877700000000000000878888F8F8F88F87770
          00000000000008788888F8F8F8F8777000000000000008877777777777887770
          0000000000000888888888F8F8F8777000000000000000000000000000000770
          000000000000FFFFFFFFFFFFFFFFF0700000000000007F8888F8F888888FF700
          0000000000007888888F8F888888F71111100000000078888888F8F88888F708
          9990000000007888F0F0F0F0F888F7008990000000007888FFFFFFFFF888F700
          8990000000007888888888F8F888F70899000000000078888888888F8F88F799
          9900000000007888FFF0F0F0F8F8F703B000000000007888FFFFFFFFFF8FF703
          B0000000000078888888888888F8F703B00000000000788888888888888FF03B
          0000000000007777777777777777F70B0000000000000F8F8F8F8F8F8F8F8770
          00000000000000F8F8F8F8F8F8F8F877000000000000000F8F8F8F8F8F8F8F87
          0000000000000000000000000000000000000000F00007FFF000001FF0000007
          F00000C3F00000F3F00000F3F00000E7F00000C7F00000CFF000008FF000009F
          F000009FF000009FF000009FF000009FE000009FE000009FE000001FE000000F
          E000000FE000000FE000001FE000001FE000003FE000003FE000003FE000007F
          E000007FF000007FF800007FFC00007FFE0000FF280000001000000020000000
          0100040000000000C00000000000000000000000000000000000000000000000
          00008000008000000080800080000000800080008080000080808000C0C0C000
          0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000
          00000000000888888800000000087FFFF8700000000878888F70000000087888
          8F700000000887777F70000000088888887000000000000000000000007FFFFF
          FFF000000078000088F010000078888888F010000078800088F3000000777777
          77FB0000000000000000000000088888888000000000000000000000C0070000
          C0030000C00D0000C0090000C00B0000C00B0000C00B00008003000080030000
          8003000080030000800300008007000080070000C0070000E0070000}
      end
      object RLLPeriodo: TRLLabel
        Left = 275
        Top = 42
        Width = 277
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = '99/99/9999 a 99/99/9999'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 105
      Width = 718
      Height = 22
      BandType = btHeader
      object RLPanel1: TRLPanel
        Left = 0
        Top = 0
        Width = 145
        Height = 22
        Align = faLeft
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel5: TRLLabel
          Left = 1
          Top = 0
          Width = 144
          Height = 21
          Align = faClient
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel2: TRLPanel
        Left = 380
        Top = 0
        Width = 187
        Height = 22
        Align = faLeft
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel6: TRLLabel
          Left = 1
          Top = 0
          Width = 186
          Height = 21
          Align = faClient
          Alignment = taCenter
          Caption = 'Quantidade Abastecimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel3: TRLPanel
        Left = 145
        Top = 0
        Width = 71
        Height = 22
        Align = faLeft
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel7: TRLLabel
          Left = 1
          Top = 0
          Width = 70
          Height = 21
          Align = faClient
          Alignment = taCenter
          Caption = 'Tanque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel4: TRLPanel
        Left = 567
        Top = 0
        Width = 151
        Height = 22
        Align = faClient
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLLabel8: TRLLabel
          Left = 1
          Top = 0
          Width = 149
          Height = 21
          Align = faClient
          Alignment = taRightJustify
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel5: TRLPanel
        Left = 216
        Top = 0
        Width = 164
        Height = 22
        Align = faLeft
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel9: TRLLabel
          Left = 1
          Top = 0
          Width = 163
          Height = 21
          Align = faClient
          Alignment = taCenter
          Caption = 'Bomba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 127
      Width = 718
      Height = 21
      DataFields = 'CAST;TANQUE_BOMBA;DESC_BOMBA'
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 20
        object RLPanel6: TRLPanel
          Left = 0
          Top = 0
          Width = 145
          Height = 20
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDBText1: TRLDBText
            Left = 1
            Top = 0
            Width = 144
            Height = 19
            Align = faClient
            DataField = 'CAST'
            DataSource = DSRel
            Text = ''
          end
        end
        object RLPanel7: TRLPanel
          Left = 380
          Top = 0
          Width = 187
          Height = 20
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDBText5: TRLDBText
            Left = 1
            Top = 0
            Width = 186
            Height = 19
            Align = faClient
            Alignment = taCenter
            DataField = 'NR'
            DataSource = DSRel
            Text = ''
          end
        end
        object RLPanel8: TRLPanel
          Left = 145
          Top = 0
          Width = 71
          Height = 20
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDBText2: TRLDBText
            Left = 1
            Top = 0
            Width = 70
            Height = 19
            Align = faClient
            Alignment = taCenter
            DataField = 'TANQUE_BOMBA'
            DataSource = DSRel
            Text = ''
          end
        end
        object RLPanel9: TRLPanel
          Left = 216
          Top = 0
          Width = 164
          Height = 20
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDBText3: TRLDBText
            Left = 1
            Top = 0
            Width = 163
            Height = 19
            Align = faClient
            Alignment = taCenter
            DataField = 'DESC_BOMBA'
            DataSource = DSRel
            Text = ''
          end
        end
        object RLPanel10: TRLPanel
          Left = 567
          Top = 0
          Width = 151
          Height = 20
          Align = faClient
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLDBText4: TRLDBText
            Left = 1
            Top = 0
            Width = 149
            Height = 19
            Align = faClient
            Alignment = taRightJustify
            DataField = 'VALORTOTAL'
            DataSource = DSRel
            Text = ''
          end
        end
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 148
      Width = 718
      Height = 21
      BandType = btFooter
      object RLLabel10: TRLLabel
        Left = 474
        Top = 1
        Width = 92
        Height = 19
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel11: TRLPanel
        Left = 568
        Top = 0
        Width = 150
        Height = 21
        Align = faRight
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLDBResult1: TRLDBResult
          Left = 1
          Top = 0
          Width = 148
          Height = 20
          Align = faClientBottom
          Alignment = taRightJustify
          DataField = 'VALORTOTAL'
          DataSource = DSRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v4.0 \251 Copyright '#169' 1999-2014 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 696
    Top = 248
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 696
    Top = 200
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 629
    Top = 248
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 627
    Top = 200
  end
  object DSRel: TDataSource
    DataSet = DMBanco.FDQRelAbastecimento
    Left = 432
    Top = 248
  end
end
