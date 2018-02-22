unit UDAOImposto;

interface

uses UClasseImposto;

type
   TDAOImposto = class

   private

   public
     procedure Salvar(const objetoImposto: TImposto);

   end;

implementation

{ TDAOCombustível }

procedure TDAOImposto.Salvar(const objetoImposto: TImposto);
begin
  //Escrever rotina para salvar no banco de dados, usar FIREDAC
end;

end.
