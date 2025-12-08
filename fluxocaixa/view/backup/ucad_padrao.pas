unit ucad_padrao;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  ComCtrls, StdCtrls;

type

  { Tfrmcad_padrao }

  Tfrmcad_padrao = class(TForm)
    btnALTERA: TSpeedButton;
    btnAPAGA: TSpeedButton;
    btnSALVA: TSpeedButton;
    btnCANCELA: TSpeedButton;
    edPESQUISA: TEdit;
    PageControl1: TPageControl;
    Panel1: TPanel;
    pnpTITULO: TPanel;
    pnpRODAPE: TPanel;
    btnINCLUIR: TSpeedButton;
    btnPESQUISA: TSpeedButton;
    tsPESQUISA: TTabSheet;
    tsCADASTRO: TTabSheet;
  private
    procedure botao_edicao(1FLAG:boolean);

  public

  end;

var
  frmcad_padrao: Tfrmcad_padrao;

implementation

{$R *.lfm}

end.

