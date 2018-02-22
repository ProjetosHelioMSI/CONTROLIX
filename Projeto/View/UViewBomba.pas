unit UViewBomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UView, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFViewBomba = class(TFViewBase)
    procedure BBIncluirClick(Sender: TObject);
    procedure BBAlterarClick(Sender: TObject);
    procedure BBExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FViewBomba: TFViewBomba;

implementation

{$R *.dfm}

uses UDadosBomba, UDMBanco;

procedure TFViewBomba.BBAlterarClick(Sender: TObject);
begin
  inherited;
  CriarForm(TFDadosBomba, 2);
end;

procedure TFViewBomba.BBExcluirClick(Sender: TObject);
begin
  inherited;
  CriarForm(TFDadosBomba, 3);
end;

procedure TFViewBomba.BBIncluirClick(Sender: TObject);
begin
  inherited;
  CriarForm(TFDadosBomba, 1);
end;

end.
