unit UControllerAbastecimento;

interface

uses UClasseAbastecimento, UDAOAbastecimento;

type
  TControleAbastecimento = class

  private

  public
    //procedimentos publicos pra salvar
    procedure Salvar(const objetoAbastecimento: TAbastecimento);

  end;

implementation

uses
  StrUtils, SysUtils, UEnumerado;

{ TControleAbastecimento }

procedure TControleAbastecimento.Salvar(const objetoAbastecimento: TAbastecimento);
var
  objetoDAOAbastecimento : TDAOAbastecimento;
begin
  objetoDAOAbastecimento := TDAOAbastecimento.Create;
  try
    {utilizei exceções para abortar a instrução mas correto um tratamento utilizando try..except, mais amigável.}
    if objetoAbastecimento.DataHora = 0 Then
       raise Exception.Create('Preencha a Data/Hora de Abastecimento!');
    if objetoAbastecimento.Litros = 0 then
       raise Exception.Create('Preencha quanto Litros de Abastecimento!');

    case objetoAbastecimento.Acao of
      uEnumerado.tacInc: objetoDAOAbastecimento.Incluir(objetoAbastecimento);
      uEnumerado.tacAlt: objetoDAOAbastecimento.Alterar(objetoAbastecimento);
      uEnumerado.tacExc: objetoDAOAbastecimento.Excluir(objetoAbastecimento);
    end;

  finally
    FreeAndNil(objetoDAOAbastecimento);
  end;
end;

end.





