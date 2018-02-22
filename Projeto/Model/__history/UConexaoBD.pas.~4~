unit UConexaoBD;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.FB, System.SysUtils, FireDAC.DApt, FireDAC.VCLUI.Wait;

type
  TConexao = class
  private
    FConn: TFDConnection;

    procedure ConfigurarConexao;
  public
    constructor Create;
    destructor Destroy; override;

    function GetConn: TFDConnection;
    function CriarQuery: TFDQuery;
  end;

  const
    PATH_BANCO: string = 'C:\CONTROLIX\BancoDados';

implementation

{ TConexao }

procedure TConexao.ConfigurarConexao;
begin
  FConn.Params.Add('DriverID=FB');
  FConn.Params.Add('DataBase='+PATH_BANCO);
  FConn.Params.Add('UserName=SYSDBA');
  FConn.Params.Add('Password=MSI123');
  FConn.LoginPrompt := False;
end;

constructor TConexao.Create;
begin
  FConn := TFDConnection.Create(nil);

  Self.ConfigurarConexao();
end;

function TConexao.CriarQuery: TFDQuery;
var
  VQuery: TFDQuery;
begin
  VQuery := TFDQuery.Create(nil);
  VQuery.Connection := FConn;

  Result := VQuery;
end;

destructor TConexao.Destroy;
begin
  FConn.Free;

  inherited;
end;

function TConexao.GetConn: TFDConnection;
begin
  Result := FConn;
end;

end.
