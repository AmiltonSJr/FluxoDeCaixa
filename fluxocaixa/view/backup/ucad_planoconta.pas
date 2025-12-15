unit ucad_planoconta;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls,utabela, Graphics, Dialogs, StdCtrls, DBGrids,
  ZDataset, ZAbstractRODataset, ucad_padrao;

type

  { Tfrmcad_planoconta }

  Tfrmcad_planoconta = class(Tfrmcad_padrao)
    cmbTipo: TComboBox;
    dsPESQ: TDataSource;
    DBGrid1: TDBGrid;
    edtCODIGO: TEdit;
    edtDESCRICAO: TEdit;
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    lblTIpo: TLabel;
    qrPESQ: TZQuery;
    qrPESQdescricao: TZRawStringField;
    qrPESQid_planos: TZIntegerField;
    qrPESQtipo: TZRawStringField;
    procedure btnPESQUISAClick(Sender: TObject);
    procedure cmbTipoChange(Sender: TObject);
    procedure edPESQUISAChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private

  public

  end;

var
  frmcad_planoconta: Tfrmcad_planoconta;

implementation

{$R *.lfm}

{ Tfrmcad_planoconta }

procedure Tfrmcad_planoconta.PageControl1Change(Sender: TObject);
begin

end;

procedure Tfrmcad_planoconta.cmbTipoChange(Sender: TObject);
begin

end;

procedure Tfrmcad_planoconta.edPESQUISAChange(Sender: TObject);
begin

end;

procedure Tfrmcad_planoconta.btnPESQUISAClick(Sender: TObject);
begin
  if qrPESQ.Active then qrPESQ.Close;
  qrPESQ.SQL.CLEAR;
  qrPESQ.sql.Add('Select * from planos');
  qrPESQ.sql.Add('where descricao like:cPESQ ');
  qrPESQ.ParamByName('cPESQ').AsString:='%'+trim(edPESQUISA.Text+'%');
  try
    qrPESQ.Open;
  except
    on e: exception do
       ShowMessage('Erro ao realizar a pesquisa'+sLineBreak+e.ClassName+sLineBreak+e.Message);
  end;
  if qrPESQ.RecordCount <= 0; then
     ShowMessage('Nenhum registro encontrado!');
end;

end.

