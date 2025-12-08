unit uprincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btnCFG: TSpeedButton;
    Label1: TLabel;
    pnpEsquerda: TPanel;
    Shape1: TShape;
    btnCONTAS: TSpeedButton;
    btnPLANOS: TSpeedButton;
    btnLCTO: TSpeedButton;
    btnSAIR: TSpeedButton;

    procedure btnCFGClick(Sender: TObject);
    procedure btnCONTASClick(Sender: TObject);
    procedure btnSAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  frmPrincipal: TfrmPrincipal;
  cfg_arqINI: String;

implementation

uses
  uconfigurabanco, ucad_padrao, uDMconexao, IniFiles;

{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnSAIRClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.btnCFGClick(Sender: TObject);
begin
  frmconfigurabanco := Tfrmconfigurabanco.Create(Self);
  try
    frmconfigurabanco.ShowModal;
  finally
    frmconfigurabanco.Free;
  end;
end;

procedure TfrmPrincipal.btnCONTASClick(Sender: TObject);
begin
  frmcad_padrao :=Tfrmcad_padrao.Create(Self);
  try
   frmcad_padrao.ShowModal;
  finally
    FreeAndNil(frmcad_padrao);
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  arqINI: TIniFile;
  banco, server, user, senha: String;
  porta: Integer;
begin
  cfg_arqINI := ChangeFileExt(ParamStr(0), '.ini');

  DataModule1 := TDataModule1.Create(Self);

  if FileExists(cfg_arqINI) then
  begin
    arqINI := TIniFile.Create(cfg_arqINI);
    try
      banco  := arqINI.ReadString('ConexaoDB','Banco','');
      server := arqINI.ReadString('ConexaoDB','Server','localhost');
      porta  := arqINI.ReadInteger('ConexaoDB','Porta',3307);
      user   := arqINI.ReadString('ConexaoDB','User','root');
      senha  := arqINI.ReadString('ConexaoDB','Senha','1234');

      DataModule1.AplicarConfiguracoes(server, banco, user, senha, porta);

    finally
      arqINI.Free;
    end;
  end;

end;

end.

