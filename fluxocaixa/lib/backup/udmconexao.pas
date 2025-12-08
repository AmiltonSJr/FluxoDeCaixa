unit uDMconexao;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, ZConnection;

type
  TDataModule1 = class(TDataModule)
    ZConnection1: TZConnection;
    procedure ZConnection1AfterConnect(Sender: TObject);
  public
    procedure AplicarConfiguracoes(Server, Banco, User, Senha: String; Porta: Integer);
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

procedure TDataModule1.AplicarConfiguracoes(Server, Banco, User, Senha: String; Porta: Integer);
begin
  if ZConnection1.Connected then
    ZConnection1.Disconnect;

  ZConnection1.Protocol := 'mysql-5'; // importante!
  ZConnection1.HostName := Server;
  ZConnection1.Database := Banco;
  ZConnection1.User     := User;
  ZConnection1.Password := Senha;
  ZConnection1.Port     := Porta;

  try
    ZConnection1.Connect;
  except
    on E: Exception do
      raise Exception.Create('Erro ao tentar conectar: ' + E.Message);
  end;
end;

procedure TDataModule1.ZConnection1AfterConnect(Sender: TObject);
begin
end;

end.

