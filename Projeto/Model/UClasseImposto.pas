unit UClasseImposto;

interface

type
   TImposto = class

   private
     //Atributos da Classe
     AID : ShortInt;
     ADescricao : String;
     AAliquota : Double;

   public
     //Metódos Públicos
     constructor Create;

     //Propriedades (semelhante ao get and set)
     property ID: ShortInt read AID write AID;
     property Descricao: string read ADescricao write ADescricao;
     property Aliquota: Double read AAliquota write AAliquota;
   end;

implementation

uses
  SysUtils;

{ TImposto }

constructor TImposto.Create;
begin
  //Inicialização valores ao objeto
  ADescricao := '';
  AAliquota := 0;
end;

end.
