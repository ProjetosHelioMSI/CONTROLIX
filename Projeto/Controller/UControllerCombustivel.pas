unit UControllerCombustivel;

interface

uses UClasseCombustivel, UDAOCombustivel;

type
  TControleCombustivel = class

  private
    //fun��es privadas pra validar algo, um c�digo, CPF por exemplo
    //function ValidarCPF(numCPF: string): boolean;

  public
    //procedimentos publicos pra salvar
    procedure Salvar(const objetoCliente: TCombustivel);

  end;

implementation

uses
  StrUtils, SysUtils;

{ TControleCombustivel }

procedure TControleCombustivel.Salvar(const objetoCliente: TCombustivel);
var
  objetoDAOCombustivel : TDAOCombustivel;
begin
  objetoDAOCombustivel := TDAOCombustivel.Create;
  try
    {utilizei exce��es para abortar a instru��o mas correto um tratamento utilizando try..except, mais amig�vel.}
    if objetoCliente.Descricao= '' then
       raise Exception.Create('Preencha a Descri��o do Combust�vel!');

    //Exemplo
    //if not (ValidarCPF(objetoCliente.CPF)) then
    //   raise Exception.Create('CPF inv�lido!');

    objetoDAOCombustivel.Salvar(objetoCliente);
  finally
    FreeAndNil(objetoDAOCombustivel);
  end;
end;

end.
