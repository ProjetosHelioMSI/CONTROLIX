unit UViewCombustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UView, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFViewCombustivel = class(TFViewBase)
    procedure BBIncluirClick(Sender: TObject);
    procedure BBAlterarClick(Sender: TObject);
    procedure BBExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FViewCombustivel: TFViewCombustivel;

implementation

{$R *.dfm}

uses UDadosCombustivel, UDMBanco;

procedure TFViewCombustivel.BBAlterarClick(Sender: TObject);
begin
  inherited;
  CriarForm(TFDadosCombustivel, 2);
end;

procedure TFViewCombustivel.BBExcluirClick(Sender: TObject);
begin
  inherited;
  CriarForm(TFDadosCombustivel, 3);
end;

procedure TFViewCombustivel.BBIncluirClick(Sender: TObject);
begin
  inherited;
  CriarForm(TFDadosCombustivel, 1);
end;

end.
