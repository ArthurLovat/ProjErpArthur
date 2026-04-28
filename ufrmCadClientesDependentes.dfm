inherited frmCadClientesDependentes: TfrmCadClientesDependentes
  Caption = 'Cadastro De Dependentes'
  TextHeight = 15
  inherited lblTitulo: TLabel
    Width = 160
    Caption = 'Dependente'
    ExplicitWidth = 160
  end
  object lblTelefone: TLabel [1]
    Left = 228
    Top = 242
    Width = 74
    Height = 21
    Caption = 'Telefone: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCpfCnpj: TLabel [2]
    Left = 228
    Top = 213
    Width = 78
    Height = 21
    Caption = 'CPF/CNPJ:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNome: TLabel [3]
    Left = 228
    Top = 184
    Width = 51
    Height = 21
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDtCad: TLabel [4]
    Left = 228
    Top = 271
    Width = 134
    Height = 21
    Caption = 'Data de Cadastro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited btnCadastrar: TcxButton
    Top = 302
    TabOrder = 4
    ExplicitTop = 302
  end
  inherited btnCancelar: TcxButton
    Top = 302
    TabOrder = 5
    ExplicitTop = 302
  end
  object DBCheckBox1: TDBCheckBox [7]
    Left = 228
    Top = 161
    Width = 59
    Height = 17
    Caption = 'Ativo'
    DataField = 'ativo'
    DataSource = dsCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ValueUnchecked = 'F'
  end
  object edtNomeFantasia: TcxDBTextEdit [8]
    Left = 383
    Top = 186
    DataBinding.DataField = 'nome'
    DataBinding.DataSource = dsCadastro
    TabOrder = 1
    Width = 209
  end
  object mkedtTelefone: TcxDBMaskEdit [9]
    Left = 383
    Top = 244
    DataBinding.DataField = 'telefone'
    DataBinding.DataSource = dsCadastro
    Properties.EditMask = '!\(99\)00000-0000;1;_'
    TabOrder = 3
    Width = 209
  end
  object mkedtCpfCnpj: TcxDBMaskEdit [10]
    Left = 383
    Top = 215
    DataBinding.DataField = 'cpf_cnpj'
    DataBinding.DataSource = dsCadastro
    Properties.OnChange = mkedtCpfCnpjPropertiesChange
    TabOrder = 2
    Width = 209
  end
  object dptDataCadastro: TcxDBDateEdit [11]
    Left = 383
    Top = 273
    DataBinding.DataField = 'data_cadastro'
    DataBinding.DataSource = dsCadastro
    TabOrder = 6
    Width = 209
  end
  inherited dsCadastro: TDataSource
    DataSet = DMMain.qryCadClientesDependentes
  end
end
