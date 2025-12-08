program fluxocaixa;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, zcomponent, uprincipal, uconfigurabanco, ucad_padrao, utabela;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Scaled := True;

  {$PUSH}{$WARN 5044 OFF}
  Application.MainFormOnTaskbar := True;
  {$POP}

  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tfrmcad_padrao, frmcad_padrao);
  Application.CreateForm(TTabGlobal, TabGlobal);
  Application.Run;
end.

