program CONTROLIX;

uses
  Vcl.Forms,
  UViewTelaPrincipal in 'View\UViewTelaPrincipal.pas' {FViewTelaPrincipal},
  UClasseCombustivel in 'Model\UClasseCombustivel.pas',
  UClasseBomba in 'Model\UClasseBomba.pas',
  UClasseAbastecimento in 'Model\UClasseAbastecimento.pas',
  UClasseImposto in 'Model\UClasseImposto.pas',
  UControllerCombustivel in 'Controller\UControllerCombustivel.pas',
  UDAOCombustivel in 'Model\DAO\UDAOCombustivel.pas',
  UDAOImposto in 'Model\DAO\UDAOImposto.pas',
  UDAOAbastecimento in 'Model\DAO\UDAOAbastecimento.pas',
  UDAOBomba in 'Model\DAO\UDAOBomba.pas',
  UView in 'View\UView.pas' {FViewBase},
  UViewAbastecimento in 'View\UViewAbastecimento.pas' {FViewAbastecimento},
  UViewBomba in 'View\UViewBomba.pas' {FViewBomba},
  UViewCombustivel in 'View\UViewCombustivel.pas' {FViewCombustivel},
  UViewImposto in 'View\UViewImposto.pas' {FViewImposto},
  UDados in 'View\UDados.pas' {FDados},
  UDadosAbastecimento in 'View\UDadosAbastecimento.pas' {FDadosAbastecimento},
  UDMBanco in 'Model\UDMBanco.pas' {DMBanco: TDataModule},
  UDadosBomba in 'View\UDadosBomba.pas' {FDadosBomba},
  UDadosCombustivel in 'View\UDadosCombustivel.pas' {FDadosCombustivel},
  UControllerBomba in 'Controller\UControllerBomba.pas',
  UControllerAbastecimento in 'Controller\UControllerAbastecimento.pas',
  UDadosImposto in 'View\UDadosImposto.pas' {FDadosImposto},
  URelAbastecimentos in 'View\Relatorios\URelAbastecimentos.pas' {FRelAbastecimentos},
  UDadosRelAbastecimento in 'View\Relatorios\UDadosRelAbastecimento.pas' {FDadosRelatorioAbastecimento},
  UConexaoBD in 'Model\UConexaoBD.pas',
  UControllerSistema in 'Controller\UControllerSistema.pas',
  UEnumerado in 'Model\UEnumerado.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'CONTROLIX';
  Application.CreateForm(TDMBanco, DMBanco);
  Application.CreateForm(TFViewTelaPrincipal, FViewTelaPrincipal);
  Application.Run;
end.
