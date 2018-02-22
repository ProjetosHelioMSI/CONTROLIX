unit UControllerBomba;

interface

uses UClasseBomba, UDAOBomba;

type
  TControleBomba = class

  private
    //funções privadas pra validar algo, um código, CPF por exemplo
    //function ValidarCPF(numCPF: string): boolean;

  public
    //procedimentos publicos pra salvar
    procedure Salvar(const objetoBomba: TBomba);

  end;

implementation

uses
  StrUtils, SysUtils, UEnumerado;

{ TControleBomba }

procedure TControleBomba.Salvar(const objetoBomba: TBomba);
var
  objetoDAOBomba : TDAOBomba;
begin
  objetoDAOBomba := TDAOBomba.Create;
  try
    {utilizei exceções para abortar a instrução mas correto um tratamento utilizando try..except, mais amigável.}
    if objetoBomba.Descricao = '' then
       raise Exception.Create('Informe o Nome da Bomba!');

    //Exemplo
    //if not (ValidarCPF(objetoCliente.CPF)) then
    //   raise Exception.Create('CPF inválido!');

    case objetoBomba.Acao of
      uEnumerado.tacInc: objetoDAOBomba.Incluir(objetoBomba);
      uEnumerado.tacAlt: objetoDAOBomba.Alterar(objetoBomba);
      uEnumerado.tacExc: objetoDAOBomba.Excluir(objetoBomba);
    end;

  finally
    FreeAndNil(objetoDAOBomba);
  end;
end;

end.



