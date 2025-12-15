unit utabela;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, ZConnection;

type

  { TTabGlobal }

  TTabGlobal = class(TDataModule)
    conexao: TZConnection;
    procedure conexaoAfterConnect(Sender: TObject);
    procedure conexaoBeforeConnect(Sender: TObject);
  private

  public
    procedure AplicarConfiguracoes(servidor, banco, usuario, senha: String; porta: Integer);
  end;

var
  TabGlobal: TTabGlobal;
  cfg_banco, cfg_servidor, cfg_usuario, cfg_senha: String;
  cfg_porta: Integer;

implementation

{$R *.lfm}

{ TTabGlobal }

procedure TTabGlobal.AplicarConfiguracoes(servidor, banco, usuario, senha: String; porta: Integer);
begin
  cfg_servidor := servidor;
  cfg_banco    := banco;
  cfg_usuario  := usuario;
  cfg_senha    := senha;
  cfg_porta    := porta;
end;

procedure TTabGlobal.conexaoBeforeConnect(Sender: TObject);
begin
  conexao.Database   := cfg_banco;
  conexao.HostName   := cfg_servidor;
  conexao.User       := cfg_usuario;
  conexao.Password   := cfg_senha;
  conexao.Port       := cfg_porta;
  conexao.AutoCommit := true;
end;

procedure TTabGlobal.conexaoAfterConnect(Sender: TObject);
begin
  // Aqui vai código que deve executar após conectar, se houver
end;

end.

