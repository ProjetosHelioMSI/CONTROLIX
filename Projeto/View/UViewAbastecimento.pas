unit UViewAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UView, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFViewAbastecimento = class(TFViewBase)
    procedure BBIncluirClick(Sender: TObject);
    procedure BBAlterarClick(Sender: TObject);
    procedure BBExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FViewAbastecimento: TFViewAbastecimento;

implementation

{$R *.dfm}

uses UDadosAbastecimento, UDMBanco;

procedure TFViewAbastecimento.BBAlterarClick(Sender: TObject);
begin
  inherited;
  CriarForm(TFDadosAbastecimento, 2);
end;

procedure TFViewAbastecimento.BBExcluirClick(Sender: TObject);
begin
  inherited;
  CriarForm(TFDadosAbastecimento, 3);
end;

procedure TFViewAbastecimento.BBIncluirClick(Sender: TObject);
begin
  inherited;
  CriarForm(TFDadosAbastecimento, 1);
end;


end.
