unit uListagemCidades;

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
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  dxDateRanges,
  dxScrollbarAnnotations,
  Data.DB,
  cxDBData,
  cxButtonEdit,
  Vcl.Menus,
  Vcl.StdCtrls,
  cxButtons,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  uDMMain,
  cxGridLevel,
  uCadCidades,
  ufrmModeloListagemPadrao;

type
  TfrmListagemCidades = class(TfrmModeloListagemPadrao)
    tbvListagemid: TcxGridDBColumn;
    tbvListagemnome_cidade: TcxGridDBColumn;
    tbvListagemtestados_id: TcxGridDBColumn;
  private
    { Private declarations }

  protected
    function GetCaptionFormulario: String; override;
    function GetDataSet: TDataSet; override;
    function GetFormularioCadastro: TFormClass; override;
    function GetNomeCampoFiltro: String; override;
    function GetDataSource: TDataSource; override;

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



{ TfrmListagemCidades }

function TfrmListagemCidades.GetCaptionFormulario: String;
begin
  Result := Self.Caption;
end;

function TfrmListagemCidades.GetDataSet: TDataSet;
begin
  Result := DMMain.FDTCidades;
end;

function TfrmListagemCidades.GetDataSource: TDataSource;
begin
  Result := Self.dsListagem;
end;

function TfrmListagemCidades.GetFormularioCadastro: TFormClass;
begin
  Result := TfrmCadCidades;
end;

function TfrmListagemCidades.GetNomeCampoFiltro: String;
begin
  Result := 'nome_cidade';
end;

end.
