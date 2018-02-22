unit UDadosBomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDados, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB;

type
  TFDadosBomba = class(TFDados)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EDesc: TEdit;
    ETanque: TEdit;
    DBLCBTipoComb: TDBLookupComboBox;
    DSCombustivel: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDadosBomba: TFDadosBomba;

implementation

{$R *.dfm}

uses UDMBanco;

procedure TFDadosBomba.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DSCombustivel.DataSet.Close;
end;

procedure TFDadosBomba.FormShow(Sender: TObject);
begin
  inherited;
  DSCombustivel.DataSet.Open;
  EDesc.ReadOnly := False;
  ETanque.ReadOnly := False;
  DBLCBTipoComb.ReadOnly := False;
  if DMBanco.pOperacaoDados = 1 then
  begin
    EDesc.Clear;
    ETanque.Clear;
    DBLCBTipoComb.KeyValue := Null;
  end
  else
  begin
    EDesc.Text := DMBanco.FDQBombaDESC_BOMBA.AsString;
    ETanque.Text := DMBanco.FDQBombaTANQUE_BOMBA.AsString;
    DBLCBTipoComb.KeyValue := DMBanco.FDQBombaCOMBUSTIVEL_BOMBA.AsString;
    if DMBanco.pOperacaoDados = 3 then
    begin
      EDesc.ReadOnly := True;
      ETanque.ReadOnly := True;
      DBLCBTipoComb.ReadOnly := True;
    end;
  end;
end;

end.
