unit UControllerAbastecimento;

interface

uses UClasseAbastecimento, UDAOAbastecimento;

type
  TControleAbastecimento = class

  private

  public
    procedure Salvar(const objetoCliente: TAbastecimento);

  end;

implementation

uses
  StrUtils, SysUtils;

{ TControleCombustivel }

procedure TControleAbastecimento.Salvar(const objetoCliente: TAbastecimento);
var
  objetoDAOAbastecimento : TDAOAbastecimento;
begin
  objetoDAOAbastecimento := TDAOAbastecimento.Create;
  try
    if objetoCliente.DataHora = 0 Then
       raise Exception.Create('Preencha a Data/Hora de Abastecimento!');
    if objetoCliente.Litros = 0 then
       raise Exception.Create('Preencha quanto Litros de Abastecimento!');

    objetoDAOAbastecimento.Salvar(objetoCliente);
  finally
    FreeAndNil(objetoDAOAbastecimento);
  end;
end;

end.
