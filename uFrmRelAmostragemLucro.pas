unit uFrmRelAmostragemLucro;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  uFrmModeloRelatorioPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxGeometry, dxFramedControl, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, AdvGlowButton, cxGroupBox, dxGDIPlusClasses,
  Vcl.ExtCtrls, Vcl.StdCtrls, dxPanel, Vcl.DBCtrls, uDMMain, cxTextEdit,
  cxMaskEdit, cxSpinEdit, uUtils;

type
  TFrmRelAmostragemLucro = class(TFrmModeloRelatorioPadrao)
    lblSituacao: TLabel;
    lblCodigo: TLabel;
    lblDesc: TLabel;
    lblUnidadeMedida: TLabel;
    edtCodigo: TEdit;
    edtDescricao: TEdit;
    cbxSituacao: TComboBox;
    lkUnidade: TDBLookupComboBox;
    grdListagemVwativo: TcxGridDBColumn;
    grdListagemVwdescricao: TcxGridDBColumn;
    grdListagemVwcodigo: TcxGridDBColumn;
    grdListagemVwpreco_custo: TcxGridDBColumn;
    dsListagem: TDataSource;
    lblPorcentagem: TLabel;
    Label1: TLabel;
    grdListagemVwPorcent: TcxGridDBColumn;
    grdListagemVwPrecoVenda: TcxGridDBColumn;
    dsListagemUn: TDataSource;
    spedtPorcentagem: TcxSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private

  protected
    Function FazerPesquisa: boolean; override;
    function GetDataSource: TDataSource; override;
    function GetNomeArquivoFr3: String; override;
    procedure VincularDadosRelatorio; override;

  public

  end;


implementation

{$R *.dfm}

{ TFrmRelAmostragemLucro }


function TFrmRelAmostragemLucro.FazerPesquisa: boolean;
begin
  if (spedtPorcentagem.value > 0) then
  begin
    DMMain.FDQRelAmostragemLucro.Close;
    var vSql: string := 'Select p.ativo, p.codigo, p.descricao, p.preco_custo, cast(:percentual as numeric(10,4)) as percentual_lucro' +
                       ', cast(p.preco_custo + (p.preco_custo * :percentual /100) as numeric(10,4)) as preco_venda' +
                       ' from tprodutos as p' +
                       ' where 1=1';

    if (Trim(edtCodigo.Text) <> '') then
    begin
      vSql := vSql + ' and p.codigo = ' + QuotedStr(edtCodigo.Text);
    end;
    if (Trim(edtDescricao.Text) <> '') then
    begin
      vSql := vSql + ' and ' + MontarSqlILike('p.descricao', edtDescricao.Text);
    end;
    if (Trim(cbxSituacao.Text) <> 'Ambos') then
    begin
      if (Trim(cbxSituacao.Text) = 'Ativo') then
      begin
        vSql := vSql + ' and p.ativo = true';
      end
      else
      begin
        vSql := vSql + ' and p.ativo = false';
      end;
    end;
    if (Trim(lkUnidade.Text) <> '') then
    begin
      vSql := vSql + ' and un.unidade ILIKE ' + QuotedStr('%' + lkUnidade.Text + '%');
    end;
    vSql := vSql + ' ORDER BY p.descricao';

    DMMain.FDQRelAmostragemLucro.SQL.Text := vSql;
    DMMain.FDQRelAmostragemLucro.ParamByName('percentual').AsFloat := spedtPorcentagem.Value;
    DMMain.FDQRelAmostragemLucro.Open;
    Result := not DMMain.FDQRelAmostragemLucro.IsEmpty;
  end
  else
  begin
    Application.MessageBox('É necessario informar uma porcentagem para prosseguir!', 'Aviso', MB_IconWarning + MB_OK);
    TUtils.DarSetFocus(spedtPorcentagem.InnerControl);
    Result := True;
  end;
end;

procedure TFrmRelAmostragemLucro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DMMain.FDQRelUnidade.Close;
  DMMain.FDQRelAmostragemLucro.Close;
end;

procedure TFrmRelAmostragemLucro.FormCreate(Sender: TObject);
begin
  inherited;
  DMMain.FDQRelUnidade.Open;
end;

function TFrmRelAmostragemLucro.GetDataSource: TDataSource;
begin
  Result := Self.dsListagem;
end;

function TFrmRelAmostragemLucro.GetNomeArquivoFr3: String;
begin
  Result := 'RelAmostragemLucro.fr3';
end;

procedure TFrmRelAmostragemLucro.VincularDadosRelatorio;
begin
  Relatorios.frxDBDataSet.DataSource := GetDataSource;
end;

end.
