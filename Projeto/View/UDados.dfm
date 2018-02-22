object FDados: TFDados
  Left = 254
  Top = 259
  BorderIcons = [biSystemMenu]
  Caption = 'Dados'
  ClientHeight = 308
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object PRodape: TPanel
    Left = 0
    Top = 267
    Width = 511
    Height = 41
    Align = alBottom
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      511
      41)
    object BBOK: TBitBtn
      Left = 402
      Top = 5
      Width = 96
      Height = 31
      Anchors = [akTop, akRight]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BBCancelar: TBitBtn
      Left = 297
      Top = 5
      Width = 96
      Height = 31
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end
