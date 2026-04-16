unit uCadUnidadeMedida;

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
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  cxTextEdit,
  Vcl.Menus,
  Vcl.StdCtrls,
  cxButtons,
  Data.DB,
  uDMMain,
  cxDBEdit,
  Vcl.DBCtrls,
  uUtils,
  uFrmModeloCadPadrao,
  Generics.Collections,
  uValidacao;

type
  TfrmCadUnidadesMedida = class(TfrmModeloCadPadrao)
    lblDescricao: TLabel;
    lblUnidade: TLabel;
    edtDescricao: TcxDBTextEdit;
    edtUnidadeMedida: TcxDBTextEdit;
    dbcbAtivo: TDBCheckBox;
    procedure btnCadastrarClick(Sender: TObject); override;
  private

  protected
    function GetDataSet: TDataSet; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TfrmCadUnidadesMedida.btnCadastrarClick(Sender: TObject);
begin
  var vValidacao: TValidacao := TValidacao.Create;
  try
    vValidacao.RealizarValidacaoBasica(edtDescricao, 'Descrição', edtDescricao.Text);
    vValidacao.RealizarValidacaoBasica(edtUnidadeMedida, 'Unidade de Medida', edtUnidadeMedida.Text);
    vValidacao.ExibirMensagens;
    if (vValidacao.TemErro = False) then
    begin
      GetDataSet.Post;
      ModalResult := mrOk;
    end;
  finally
    vValidacao.Free;
  end
end;

function TfrmCadUnidadesMedida.GetDataSet: TDataSet;
begin
  Result := DMMain.FDTUnidadesMedida;
end;

end.
