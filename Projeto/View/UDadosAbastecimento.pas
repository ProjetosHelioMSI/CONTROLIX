unit UDadosAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDados, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, Data.DB;

type
  TFDadosAbastecimento = class(TFDados)
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    LAliquota: TLabel;
    DBLCBBomba: TDBLookupComboBox;
    DTPDataHora: TDateTimePicker;
    cxCEQtd: TcxCurrencyEdit;
    cxCEImposto: TcxCurrencyEdit;
    cxCEPreco: TcxCurrencyEdit;
    DSBomba: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    cxCEValor: TcxCurrencyEdit;
    Label6: TLabel;
    ETipo: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCEQtdPropertiesChange(Sender: TObject);
    procedure DBLCBBombaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDadosAbastecimento: TFDadosAbastecimento;

implementation

{$R *.dfm}

uses UDMBanco;

procedure TFDadosAbastecimento.cxCEQtdPropertiesChange(Sender: TObject);
begin
  inherited;
  cxCEValor.Value := cxCEQtd.Value * cxCEPreco.Value;
  cxCEImposto.Value := cxCEValor.Value * DMBanco.pAliquotaIMPOSTO/100;
end;

procedure TFDadosAbastecimento.DBLCBBombaClick(Sender: TObject);
begin
  inherited;
  cxCEPreco.Value := DMBanco.FDQBombaPRECO_COMBUSTIVEL.Value;
  cxCEValor.Value := cxCEQtd.Value * cxCEPreco.Value;
  cxCEImposto.Value := cxCEValor.Value * DMBanco.pAliquotaIMPOSTO/100;
  ETipo.Text := DMBanco.FDQBombaDESC_COMBUSTIVEL.AsString;
end;

procedure TFDadosAbastecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSBomba.DataSet.Close;
end;

procedure TFDadosAbastecimento.FormShow(Sender: TObject);
begin
  inherited;
  DSBomba.DataSet.Open;
  DBLCBBomba.Enabled := True;
  DTPDataHora.Enabled := False;
  cxCEQtd.Properties.ReadOnly := False;
  cxCEValor.Properties.ReadOnly := False;
  cxCEImposto.Properties.ReadOnly := False;
  cxCEPreco.Properties.ReadOnly := False;
  ETipo.ReadOnly := False;

  if DMBanco.pOperacaoDados = 1 then
  begin
    DBLCBBomba.KeyValue := Null;
    DTPDataHora.DateTime := Now;
    cxCEQtd.Clear;
    cxCEValor.Clear;
    cxCEImposto.Clear;
    cxCEPreco.Clear;
    ETipo.Clear;
  end
  else
  begin
    DBLCBBomba.KeyValue := DMBanco.FDQAbastecimentoBOMBA_ABASTECIMENTO.AsInteger;
    DTPDataHora.DateTime := DMBanco.FDQAbastecimentoDATA_ABASTECIMENTO.AsDateTime;
    cxCEQtd.Value := DMBanco.FDQAbastecimentoLITROS_ABASTECIMENTO.AsFloat;
    cxCEValor.Value := DMBanco.FDQAbastecimentoVALOR_ABASTECIMENTO.AsFloat;
    if cxCEQtd.Value <> 0 then
       cxCEPreco.Value := cxCEValor.Value / cxCEQtd.Value;
    cxCEImposto.Value := DMBanco.FDQAbastecimentoIMPOSTO_ABASTECIMENTO.AsFloat;
    ETipo.Text := DMBanco.FDQAbastecimentoDESC_COMBUSTIVEL.AsString;

    DBLCBBomba.Enabled := False;
    if DMBanco.pOperacaoDados = 3 then
       cxCEQtd.Properties.ReadOnly := True;
  end;

  cxCEValor.Properties.ReadOnly := True;
  cxCEImposto.Properties.ReadOnly := True;
  cxCEPreco.Properties.ReadOnly := True;
  ETipo.ReadOnly := True;

  LAliquota.Caption := LAliquota.Caption + ' ('+FormatFloat('##0.00',DMBanco.pAliquotaIMPOSTO)+'%)';
end;

end.
