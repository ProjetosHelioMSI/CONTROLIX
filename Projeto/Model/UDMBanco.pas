unit UDMBanco;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase;

type
  TDMBanco = class(TDataModule)
    FDConnection1: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDQCombustivel: TFDQuery;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQCombustivelID_COMBUSTIVEL: TSmallintField;
    FDQCombustivelDESC_COMBUSTIVEL: TStringField;
    FDQCombustivelPRECO_COMBUSTIVEL: TFloatField;
    FDQBomba: TFDQuery;
    FDQAbastecimento: TFDQuery;
    FDQBombaID_BOMBA: TSmallintField;
    FDQBombaDESC_BOMBA: TStringField;
    FDQBombaTANQUE_BOMBA: TSmallintField;
    FDQBombaCOMBUSTIVEL_BOMBA: TSmallintField;
    FDQBombaDESC_COMBUSTIVEL: TStringField;
    FDQAbastecimentoID_ABASTECIMENTO: TIntegerField;
    FDQAbastecimentoDATA_ABASTECIMENTO: TSQLTimeStampField;
    FDQAbastecimentoLITROS_ABASTECIMENTO: TCurrencyField;
    FDQAbastecimentoVALOR_ABASTECIMENTO: TFloatField;
    FDQAbastecimentoIMPOSTO_ABASTECIMENTO: TFloatField;
    FDQAbastecimentoBOMBA_ABASTECIMENTO: TSmallintField;
    FDQAbastecimentoID_BOMBA: TSmallintField;
    FDQAbastecimentoDESC_BOMBA: TStringField;
    FDQAbastecimentoTANQUE_BOMBA: TSmallintField;
    FDQAbastecimentoCOMBUSTIVEL_BOMBA: TSmallintField;
    FDQAbastecimentoID_COMBUSTIVEL: TSmallintField;
    FDQAbastecimentoDESC_COMBUSTIVEL: TStringField;
    FDQAbastecimentoPRECO_COMBUSTIVEL: TFloatField;
    FDQRelAbastecimento: TFDQuery;
    FDQBombaPRECO_COMBUSTIVEL: TFloatField;
    FDQAbastecimentoPrecoCalculado: TFloatField;
    FDQRelAbastecimentoVALORTOTAL: TFloatField;
    FDQRelAbastecimentoCAST: TDateField;
    FDQRelAbastecimentoTANQUE_BOMBA: TSmallintField;
    FDQRelAbastecimentoDESC_BOMBA: TStringField;
    FDQRelAbastecimentoNR: TIntegerField;
    procedure FDQAbastecimentoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    pOperacaoDados : Byte;
    pAliquotaIMPOSTO : Double;
  end;

var
  DMBanco: TDMBanco;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMBanco.FDQAbastecimentoCalcFields(DataSet: TDataSet);
begin
  if FDQAbastecimentoLITROS_ABASTECIMENTO.AsFloat <> 0 then
     FDQAbastecimentoPrecoCalculado.AsFloat := FDQAbastecimentoVALOR_ABASTECIMENTO.AsFloat /
                                               FDQAbastecimentoLITROS_ABASTECIMENTO.AsFloat;
end;

end.
