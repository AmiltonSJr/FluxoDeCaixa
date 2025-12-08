unit utabela;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, ZConnection;

type

  { TTabGlobal }

  TTabGlobal = class(TDataModule)
    conexao: TZConnection;
  private

  public

  end;

var
  TabGlobal: TTabGlobal;

implementation

{$R *.lfm}

end.

