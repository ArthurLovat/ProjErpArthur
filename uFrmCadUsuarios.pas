unit uFrmCadUsuarios;

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
  uFrmModeloCadPadrao,
  cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  Vcl.Menus, cxControls,
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
  uValidacao;

type
  TfrmCadUsuarios = class(TfrmModeloCadPadrao)
    lblNome: TLabel;
    dbcbAtivo: TDBCheckBox;
    edtNome: TcxDBTextEdit;
    lblEmail: TLabel;
    edtEmail: TcxDBTextEdit;
    lblLogin: TLabel;
    edtLogin: TcxDBTextEdit;
    lblSenha: TLabel;
    edtSenha: TcxDBTextEdit;

  procedure btnCadastrarClick(Sender: TObject); override;

  protected
    function GetDataSet: TDataSet; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


{ TfrmCadUsuarios }

procedure TfrmCadUsuarios.btnCadastrarClick(Sender: TObject);
begin
    var vValidacao: TValidacao := TValidacao.Create;
    try
      vValidacao.RealizarValidacaoBasica(edtNome, 'Nome', edtNome.Text);
      vValidacao.RealizarValidacaoBasica(edtlogin, 'Login', edtlogin.Text);
      vValidacao.RealizarValidacaoBasica(edtSenha, 'Senha', edtSenha.Text);
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

function TfrmCadUsuarios.GetDataSet: TDataSet;
begin
  Result := DMMain.FDTUsuarios;
end;

end.
