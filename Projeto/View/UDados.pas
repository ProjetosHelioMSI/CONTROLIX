unit UDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFDados = class(TForm)
    PRodape: TPanel;
    BBOK: TBitBtn;
    BBCancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    { constructor Create(AOwner: TComponent); overload; }
  end;

var
  FDados: TFDados;

implementation

{$R *.dfm}

uses UDMBanco;

{ TFDados }


{
constructor TFDados.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;
}

procedure TFDados.FormShow(Sender: TObject);
begin
  case DMBanco.pOperacaoDados of
     1: Caption := Caption + ' - Inclus�o';
     2: Caption := Caption + ' - Altera��o';
     3: Caption := Caption + ' - Exclus�o';
  end;
  Caption;

end;

end.
