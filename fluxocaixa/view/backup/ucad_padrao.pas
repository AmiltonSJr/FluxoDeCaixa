unit ucad_padrao;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  ComCtrls, StdCtrls;

type
  TCliqueBotao =(cbIncluir ,cbAlterar ,cbNome);

  { Tfrmcad_padrao }

  Tfrmcad_padrao = class(TForm)
    btnALTERA: TSpeedButton;
    btnAPAGA: TSpeedButton;
    btnCANCELA: TSpeedButton;
    btnINCLUIR: TSpeedButton;
    btnSALVA: TSpeedButton;
    edPESQUISA: TEdit;
    PageControl1: TPageControl;
    Panel1: TPanel;
    pnpRODAPE: TPanel;
    pnpTITULO: TPanel;
    btnPESQUISA: TSpeedButton;
    tsPESQUISA: TTabSheet;
    tsCADASTRO: TTabSheet;
    procedure btnALTERAClick(Sender: TObject);
    procedure btnAPAGAClick(Sender: TObject);
    procedure btnCANCELAClick(Sender: TObject);
    procedure btnINCLUIRClick(Sender: TObject);
    procedure btnSALVAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure botao_edicao(lFLAG:boolean);

  public

  end;

var
  frmcad_padrao: Tfrmcad_padrao;
  cliqueBotao : TCliqueBotao;

implementation

{$R *.lfm}

{ Tfrmcad_padrao }

procedure Tfrmcad_padrao.FormShow(Sender: TObject);
begin
   botao_edicao(false);
end;

procedure Tfrmcad_padrao.btnINCLUIRClick(Sender: TObject);
begin
  botao_edicao(true);
  cliqueBotao := cbIncluir;
end;

procedure Tfrmcad_padrao.btnSALVAClick(Sender: TObject);
begin
  botao_edicao(false);

end;

procedure Tfrmcad_padrao.btnALTERAClick(Sender: TObject);
begin
  botao_edicao(true);
  cliqueBotao:= cbAlterar;
end;

procedure Tfrmcad_padrao.btnAPAGAClick(Sender: TObject);
begin
  botao_edicao(false);
end;

procedure Tfrmcad_padrao.btnCANCELAClick(Sender: TObject);
begin
  botao_edicao(false);
end;

procedure Tfrmcad_padrao.botao_edicao(lFLAG: boolean);
begin
    btnINCLUIR.Visible:=   not lFLAG;
    btnALTERA.Visible :=   not lFLAG;
    btnAPAGA.Visible  :=   not lFLAG;
    btnSALVA.Visible  :=       lFLAG;
    btnCANCELA.Visible:=       lFLAG;
end;

end.

