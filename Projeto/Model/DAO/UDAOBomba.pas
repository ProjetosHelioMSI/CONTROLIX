unit UDAOBomba;

interface

uses UClasseBomba;

type
   TDAOBomba = class

   private

   public
     procedure Salvar(const objetoCliente: TBomba);

   end;

implementation

{ TDAOCombust�vel }

procedure TDAOBomba.Salvar(const objetoCliente: TBomba);
begin
  //Escrever rotina para salvar no banco de dados, usar FIREDAC
end;

end.
