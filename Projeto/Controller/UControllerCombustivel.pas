unit UControllerCombustivel;

interface

uses UClasseCombustivel, UDAOCombustivel;

type
  TControleCombustivel = class

  private
    //funções privadas pra validar algo, um código, CPF por exemplo
    //function ValidarCPF(numCPF: string): boolean;

  public
    //procedimentos publicos pra salvar
    procedure Salvar(const objetoCombustivel: TCombustivel);

  end;

implementation

uses
  StrUtils, SysUtils, UEnumerado;

{ TControleCombustivel }

procedure TControleCombustivel.Salvar(const objetoCombustivel: TCombustivel);
var
  objetoDAOCombustivel : TDAOCombustivel;
begin
  objetoDAOCombustivel := TDAOCombustivel.Create;
  try
    {utilizei exceções para abortar a instrução mas correto um tratamento utilizando try..except, mais amigável.}
    if objetoCombustivel.Descricao = '' then
       raise Exception.Create('Preencha a Descrição do Combustível!');

    //Exemplo
    //if not (ValidarCPF(objetoCliente.CPF)) then
    //   raise Exception.Create('CPF inválido!');

    case objetoCombustivel.Acao of
      uEnumerado.tacInc: objetoDAOCombustivel.Incluir(objetoCombustivel);
      uEnumerado.tacAlt: objetoDAOCombustivel.Alterar(objetoCombustivel);
      uEnumerado.tacExc: objetoDAOCombustivel.Excluir(objetoCombustivel);
    end;

  finally
    FreeAndNil(objetoDAOCombustivel);
  end;
end;

end.
