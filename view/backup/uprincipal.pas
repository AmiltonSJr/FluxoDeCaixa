unit uprincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, uconfigurabanco;

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
    procedure btnSAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;
  cfg_arqINI : String;

implementation

{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnSAIRClick(Sender: TObject);
begin
  ShowMessage('Até logo');
  Application.Terminate;
end;

procedure TfrmPrincipal.btnCFGClick(Sender: TObject);
begin
   frmconfigurabanco := Tfrmconfigurabanco.Create(self);
   try
     frmconfigurabanco.ShowModal;
   finally
     FreeAndNil(frmconfigurabanco);
   end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  {$IFDEF LINUX}
  CurrencyString    := 'R$';
  CurrencyFormat    := 2;   // R$ 1,234.56 (padrão inglês)
  DecimalSeparator  := '.';
  ThousandSeparator := ',';

  DateSeparator     := '-';
  ShortDateFormat   := 'yyyy-mm-dd';
  {$ENDIF}

  {$IFDEF MSWINDOWS}  // preferível no Free Pascal / Lazarus
  CurrencyString    := 'R$';
  CurrencyFormat    := 2;    // R$ 1.234,56
  DecimalSeparator  := ',';
  ThousandSeparator := '.';

  DateSeparator     := '/';
  ShortDateFormat   := 'dd/mm/yyyy';
  {$ENDIF}
  cfg_arqINI := ChangeFileExt(ParamStr(0),'.ini');
  ShowMessage(cfg_arqINI);

end;

end.

