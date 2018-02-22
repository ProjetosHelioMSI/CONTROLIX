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
    {utilizei exce��es para abortar a instru��o mas correto um tratamento utilizando try..except, mais amig�vel.}
    if objetoCombustivel.Descricao = '' then
       raise Exception.Create('Preencha a Descri��o do Combust�vel!');

    //Exemplo
    //if not (ValidarCPF(objetoCliente.CPF)) then
    //   raise Exception.Create('CPF inv�lido!');

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
