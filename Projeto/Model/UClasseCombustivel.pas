unit UClasseCombustivel;

interface

uses uEnumerado;

type
   TCombustivel = class

   private
     //Atributos da Classe
     AID : ShortInt;
     ADescricao : String;
     APreco : Double;
     FAcao: TAcao;

   public
     //Metódos Públicos
     constructor Create;

     //Propriedades (semelhante ao get and set)
     property ID: ShortInt read AID write AID;
     property Descricao: string read ADescricao write ADescricao;
     property Preco: Double read APreco write APreco;
     property Acao: TAcao read FAcao write FAcao;
   end;

implementation

uses
  SysUtils;

{ TCombustivel }

constructor TCombustivel.Create;
begin
  //Inicialização valores ao objeto
  ADescricao := '';
  APreco := 0;
end;

end.
