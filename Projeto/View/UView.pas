unit UView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  TFViewBase = class(TForm)
    Panel1: TPanel;
    BBFechar: TBitBtn;
    BBIncluir: TBitBtn;
    BBAlterar: TBitBtn;
    Panel2: TPanel;
    BBExcluir: TBitBtn;
    DBGrid1: TDBGrid;
    DSView: TDataSource;
    Panel3: TPanel;
    BBPesquisar: TBitBtn;
    procedure BBFecharClick(Sender: TObject);
    procedure BBPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBAlterarClick(Sender: TObject);
    procedure BBExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure pChecaDados;
  public
    { Public declarations }
    procedure CriarForm(const Classe: TFormClass; pTp : Byte);
  end;

var
  FViewBase: TFViewBase;

implementation

{$R *.dfm}

uses UDMBanco;

procedure TFViewBase.BBAlterarClick(Sender: TObject);
begin
  pChecaDados;
end;

procedure TFViewBase.BBExcluirClick(Sender: TObject);
begin
  pChecaDados;
end;

procedure TFViewBase.BBFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFViewBase.BBPesquisarClick(Sender: TObject);
begin
  ShowMessage('Agradecemos o seu teste! Rotina em Desenvolvimento.');
end;

procedure TFViewBase.CriarForm(const Classe: TFormClass; pTp : Byte);
begin
  DMBanco.pOperacaoDados := pTp;
  with Classe.Create(Application) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFViewBase.pChecaDados;
begin
  if DSView.DataSet.Eof then
    raise Exception.Create('Sem dados para efetuar opera��o!');
end;

procedure TFViewBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DSView.DataSet.Close;
end;

procedure TFViewBase.FormShow(Sender: TObject);
begin
  DSView.DataSet.Open;
end;

end.
