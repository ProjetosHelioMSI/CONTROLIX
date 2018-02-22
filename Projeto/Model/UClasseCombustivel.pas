unit UClasseCombustivel;

interface

type
   TCombustivel = class

   private
     //Atributos da Classe
     AID : ShortInt;
     ADescricao : String;
     APreco : Double;

   public
     //Met�dos P�blicos
     constructor Create;

     //Propriedades (semelhante ao get and set)
     property ID: ShortInt read AID write AID;
     property Descricao: string read ADescricao write ADescricao;
     property Preco: Double read APreco write APreco;
   end;

implementation

uses
  SysUtils;

{ TCombustivel }

constructor TCombustivel.Create;
begin
  //Inicializa��o valores ao objeto
  ADescricao := '';
  APreco := 0;
end;

end.
