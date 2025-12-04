unit uconfigurabanco;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Buttons, IniFiles;

type

  { Tfrmconfigurabanco }

  Tfrmconfigurabanco = class(TForm)
    btnSALVA: TSpeedButton;
    btnCANCELA: TSpeedButton;
    edtBANCO: TEdit;
    edtSERVER: TEdit;
    edtPORTA: TEdit;
    edtUSER: TEdit;
    edtSENHA: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape1: TShape;
    procedure btnSALVAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure salva_ini;
    procedure  ler_ini;
  public

  end;

var
  frmconfigurabanco: Tfrmconfigurabanco;

implementation
uses uprincipal  ;

{$R *.lfm}

{ Tfrmconfigurabanco }

procedure Tfrmconfigurabanco.btnSALVAClick(Sender: TObject);
begin
  salva_ini;
end;

procedure Tfrmconfigurabanco.FormShow(Sender: TObject);
begin
  ler_ini;
end;

procedure Tfrmconfigurabanco.salva_ini;
var
  arqINI : TIniFile  ;
begin
  arqINI := TIniFIle.Create(cfg_arqINI);
  try
    arqINI.WriteString('ConexaoDB','Banco',edtBANCO.Text);
    arqINI.WriteString('ConexaoDB','Server',edtSERVER.Text);
    arqINI.WriteString('ConexaoDB','Porta', IntToStr(StrToIntDef(edtPORTA.Text, 3306)));
    arqINI.WriteString('ConexaoDB','User',edtUSER.Text);
    arqINI.WriteString('ConexaoDB','Senha',edtSENHA.Text);
  finally
    arqINI.Free;
  end;
end;

procedure Tfrmconfigurabanco.ler_ini;
var
  arqINI :TIniFile;
begin
   arqINI := TIniFile.Create(cfg_arqINI) ;
   try
     edtBANCO.Text := arqINI.ReadString ('ConexaoDB','Banco','');
     edtSERVER.Text := arqINI.ReadString ('ConexaoDB','Server','');
     edtPORTA.Text := IntToStr(arqINI.ReadInteger('ConexaoDB', 'Porta', 3306));
     edtUSER.Text := arqINI.ReadString ('ConexaoDB','User','');
     edtSENHA.Text := arqINI.ReadString ('ConexaoDB','Senha','');

   finally
   end;
end;

end.

