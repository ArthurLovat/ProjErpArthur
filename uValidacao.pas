unit uValidacao;

interface

uses
  Vcl.Forms,
  System.Classes,
  System.SysUtils,
  System.Generics.Collections,
  Vcl.Controls, Winapi.Windows,
  uUtils, Rtti;


 Type
  TValidarRequerido = class(TCustomAttribute)
    Private
      FNomeCampo: String;
    Public
      constructor Create(ANomeCampo: String);
      property NomeCampo: String read FNomeCampo;
  end;

  Type
   TValidarDocumento = class(TCustomAttribute)
     Private
      FNomeCampo: String;
     Public
      Constructor Create(ANomeCampo: String);
      property NomeCampo: String read FNomeCampo;
   end;


 Type
  TValidacao = Class
  private
    FCamposValidar: TDictionary<TWinControl, String>;
  public
    procedure AfterConstruction; override;
    destructor Destroy; override;
    procedure AdicionarMensagem(AComponent: TWinControl; AMessage: String);
    procedure ExibirMensagens;
    function TemErro: boolean;
    procedure RealizarValidacaoBasica(AComponent: TWinControl; ACampo, ATexto: String);
    procedure ValidarFormularioAutomatico(AForm: TForm);
  End;

implementation

{ TValidacao }

constructor TValidarDocumento.Create(ANomeCampo: String);
begin
  FNomeCampo := ANomeCampo;
end;

constructor TValidarRequerido.Create(ANomeCampo: String);
begin
  FNomeCampo := ANomeCampo;
end;

procedure TValidacao.AdicionarMensagem(AComponent: TWinControl; AMessage: String);
begin
  FCamposValidar.AddOrSetValue(AComponent, AMessage);
end;

procedure TValidacao.AfterConstruction;
begin
  inherited;
  FCamposValidar := TDictionary<TWinControl, String>.Create;
end;

destructor TValidacao.Destroy;
begin
  FCamposValidar.Free;
  inherited;
end;

procedure TValidacao.ExibirMensagens;
begin
  var vListaMensagens: TStringList := TStringList.Create;
  var vComponent: TWinControl := nil;
  try
    for var vCampo: TPair<TWinControl, String> in FCamposValidar do
    begin
      vListaMensagens.Add(' - ' + vCampo.Value);
      if (vComponent = nil) then
      begin
        vComponent := vCampo.Key;
      end;
    end;

    if (vListaMensagens.Count > 0) then
    begin
      vListaMensagens.Insert(0, '');
      vListaMensagens.Insert(0, 'Corrija os problemas relatados abaixo:');
      Application.MessageBox(PWideChar(vListaMensagens.Text), 'Aviso:', MB_ICONQUESTION + MB_OK);
      TUtils.DarSetFocus(vComponent);
    end;
  finally
    vListaMensagens.Free;
  end;
end;

procedure TValidacao.RealizarValidacaoBasica(AComponent: TWinControl; ACampo, ATexto: String);
begin
  if (Trim(ATexto) = '') then
  begin
    AdicionarMensagem(AComponent, ACampo + ' precisa ser preenchido(a)!');
  end
  else if(Length(ATexto) < 2) then
  begin
    AdicionarMensagem(AComponent, ACampo + ' tem que ter mais de 3 caracteres!');
  end;
end;

function TValidacao.TemErro: boolean;
begin
  Result := (FCamposValidar.Count > 0);
end;

procedure TValidacao.ValidarFormularioAutomatico(AForm: TForm);
begin
  var vContexto: TRttiContext;
  var vTipo: TRttiType;
  var vCampo: TRttiField;
  var vAtributo: TCustomAttribute;
  var vComponente: TWinControl;
  var vTexto: String;

  vTipo := vContexto.GetType(AForm.ClassType);
  for vCampo in vTipo.GetFields do
  begin
    for vAtributo in vCampo.GetAttributes do
    begin
      if (vAtributo is TValidarRequerido) then
      begin
        vComponente := vCampo.GetValue(AForm).AsObject as TWinControl;
        vTexto := vContexto.GetType(vComponente.ClassType).GetProperty('Text').GetValue(vComponente).AsString;
        RealizarValidacaoBasica(vComponente, TValidarRequerido(vAtributo).NomeCampo, vTexto);
      end;
      if (vAtributo is TValidarDocumento) then
      begin
        vComponente := vCampo.GetValue(AForm).AsObject as TwinControl;
        vTexto := vContexto.GetType(vComponente.ClassType).GetProperty('Text').GetValue(vComponente).AsString;
        if ((Trim(vTexto) <> '') and (not TUtils.ValidarDocumento(vTexto))) then
        begin
          AdicionarMensagem(vComponente, TValidarDocumento(vAtributo).NomeCampo + ' informado é inválido!');
        end;
      end;
    end;
  end;
end;

{ TValidarRequerido }


end.
