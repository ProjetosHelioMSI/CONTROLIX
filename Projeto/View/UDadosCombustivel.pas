unit UDadosCombustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDados, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit;

type
  TFDadosCombustivel = class(TFDados)
    Label1: TLabel;
    EDesc: TEdit;
    Label2: TLabel;
    cxCEPreco: TcxCurrencyEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDadosCombustivel: TFDadosCombustivel;

implementation

{$R *.dfm}

uses UDMBanco;

procedure TFDadosCombustivel.FormShow(Sender: TObject);
begin
  inherited;
  EDesc.ReadOnly := False;
  cxCEPreco.Properties.ReadOnly  := False;
  if DMBanco.pOperacaoDados = 1 then
  begin
    EDesc.Clear;
    cxCEPreco.Clear;
  end
  else
  begin
    EDesc.Text := DMBanco.FDQCombustivelDESC_COMBUSTIVEL.AsString;
    cxCEPreco.Value := DMBanco.FDQCombustivelPRECO_COMBUSTIVEL.AsFloat;
    if DMBanco.pOperacaoDados = 3 then
    begin
      EDesc.ReadOnly := True;
      cxCEPreco.Properties.ReadOnly := True;
    end;
  end;
end;

end.
