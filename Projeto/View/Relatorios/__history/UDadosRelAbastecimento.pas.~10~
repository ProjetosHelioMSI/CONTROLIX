unit UDadosRelAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDados, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TFDadosRelatorioAbastecimento = class(TFDados)
    DTPInicial: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DTPFinal: TDateTimePicker;
    procedure BBOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDadosRelatorioAbastecimento: TFDadosRelatorioAbastecimento;

implementation

{$R *.dfm}

uses URelAbastecimentos, UDMBanco;

procedure TFDadosRelatorioAbastecimento.BBOKClick(Sender: TObject);
begin
  inherited;
  with TFRelAbastecimentos.Create(Application) do
  try
    DMBanco.FDQRelAbastecimento.Close;
    DMBanco.FDQRelAbastecimento.ParamByName('P01').AsDateTime := DTPInicial.DateTime-1;
    DMBanco.FDQRelAbastecimento.ParamByName('P02').AsDateTime := DTPFinal.DateTime+1;
    DMBanco.FDQRelAbastecimento.Open;
    RLLPeriodo.Caption := FormatDateTime('dd/mm/yyyy',DTPInicial.DateTime)+' à '+FormatDateTime('dd/mm/yyyy',DTPFinal.DateTime);
    RLRRelAbastecimentos.PreviewModal;
  finally
    DMBanco.FDQRelAbastecimento.Close;
    Free;
  end;
end;

end.
