unit UDAOCombustivel;

interface

uses UClasseCombustivel;

type
   TDAOCombustivel = class

   private

   public
     procedure Salvar(const objetoCliente: TCombustivel);

   end;

implementation

{ TDAOCombust�vel }

procedure TDAOCombustivel.Salvar(const objetoCliente: TCombustivel);
begin
  //Escrever rotina para salvar no banco de dados, usar FIREDAC
end;

end.
