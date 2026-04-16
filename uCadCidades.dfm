inherited frmCadCidades: TfrmCadCidades
  Caption = 'Cadastro De Cidades'
  ClientWidth = 788
  Font.Height = -13
  OnCreate = FormCreate
  TextHeight = 17
  inherited lblTitulo: TLabel
    Width = 268
    Caption = 'Cadastro De Cidades'
    ExplicitWidth = 268
  end
  object lblCidade: TLabel [1]
    Left = 216
    Top = 166
    Width = 66
    Height = 25
    Caption = 'Cidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblUF: TLabel [2]
    Left = 216
    Top = 205
    Width = 29
    Height = 25
    Caption = 'UF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited btnCadastrar: TcxButton
    TabOrder = 2
  end
  inherited btnCancelar: TcxButton
    TabOrder = 3
  end
  object edtDescricao: TcxDBTextEdit [5]
    Left = 383
    Top = 166
    DataBinding.DataField = 'nome_cidade'
    DataBinding.DataSource = dsCadastro
    TabOrder = 0
    Width = 209
  end
  object lkUF: TDBLookupComboBox [6]
    Left = 383
    Top = 203
    Width = 209
    Height = 25
    DataField = 'testados_id'
    DataSource = dsCadastro
    KeyField = 'id'
    ListField = 'nome_estado'
    ListSource = dsListagem
    TabOrder = 1
  end
  inherited dsCadastro: TDataSource
    DataSet = DMMain.FDTCidades
  end
  object dsListagem: TDataSource
    DataSet = DMMain.FDTEstados
    Left = 40
  end
end
