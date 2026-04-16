unit uCadCidades;

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
  cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  Vcl.Menus,
  cxControls,
  cxContainer,
  cxEdit,
  Data.DB,
  Vcl.DBCtrls,
  cxTextEdit,
  cxDBEdit,
  Vcl.StdCtrls,
  cxButtons,
  uDMMain,
  uUtils,
  Generics.Collections,
  uFrmModeloCadPadrao,
  uValidacao;

type
  TfrmCadCidades = class(TfrmModeloCadPadrao)
    lblCidade: TLabel;
    lblUF: TLabel;
    edtDescricao: TcxDBTextEdit;
    lkUF: TDBLookupComboBox;
    dsListagem: TDataSource;

    procedure btnCadastrarClick(Sender: TObject); override;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction); override;

  public
  private

  protected
    function GetDataSet: TDataSet; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



{ TfrmCadCidades }

procedure TfrmCadCidades.btnCadastrarClick(Sender: TObject);
begin
  var vValidacao: TValidacao := TValidacao.Create;
    try
      vValidacao.RealizarValidacaoBasica(edtDescricao, 'Descrição', edtDescricao.Text);
      vValidacao.RealizarValidacaoBasica(lkUF, 'UF', lkUF.Text);
      vValidacao.ExibirMensagens;
      if (vValidacao.TemErro = False) then
      begin
        GetDataSet.Post;
        ModalResult := mrOk;
      end;
    finally
      vValidacao.Free;
    end;

end;

procedure TfrmCadCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DMMain.FDTEstados.Close;
end;

procedure TfrmCadCidades.FormCreate(Sender: TObject);
begin
  inherited;
  DMMAin.FDTEstados.Open;
end;

function TfrmCadCidades.GetDataSet: TDataSet;
begin
  Result := DMMAin.FDTCidades;
end;

end.
