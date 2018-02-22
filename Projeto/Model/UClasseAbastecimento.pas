unit UClasseAbastecimento;

interface

uses UEnumerado;

type
   TAbastecimento = class

   private
     //Atributos da Classe
     AID : ShortInt;
     ADataHora : TDateTime;
     ALitros : Double;
     AValor : Double;
     ABomba : ShortInt;
     AImposto : Double;
     FAcao: TAcao;

   public
     //Metódos Públicos
     constructor Create;

     //Propriedades (semelhante ao get and set)
     property ID: ShortInt read AID write AID;
     property DataHora: TDateTime read ADataHora write ADataHora;
     property Litros: Double read ALitros write ALitros;
     property Valor: Double read AValor write AValor;
     property Bomba: ShortInt read ABomba write ABomba;
     property Imposto: Double read AImposto write AImposto;
     property Acao: TAcao read FAcao write FAcao;
   end;

implementation

uses SysUtils;

{ TAbastecimento }

constructor TAbastecimento.Create;
begin
  //Inicialização valores ao objeto
  ADataHora := Now;
  ALitros := 0;
end;

end.
