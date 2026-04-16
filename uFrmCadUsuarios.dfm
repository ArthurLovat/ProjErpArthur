inherited frmCadUsuarios: TfrmCadUsuarios
  Caption = 'Cadastro De Usuarios'
  ClientWidth = 784
  ExplicitWidth = 796
  TextHeight = 15
  inherited lblTitulo: TLabel
    Width = 100
    Caption = 'Usuario'
    ExplicitWidth = 100
  end
  object lblNome: TLabel [1]
    Left = 216
    Top = 176
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
  object lblEmail: TLabel [2]
    Left = 216
    Top = 205
    Width = 47
    Height = 21
    Caption = 'Email:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblLogin: TLabel [3]
    Left = 216
    Top = 234
    Width = 47
    Height = 21
    Caption = 'Login:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSenha: TLabel [4]
    Left = 216
    Top = 263
    Width = 55
    Height = 21
    Caption = 'Senha: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited btnCadastrar: TcxButton
    Top = 294
    ExplicitTop = 294
  end
  inherited btnCancelar: TcxButton
    Top = 294
    ExplicitTop = 294
  end
  object dbcbAtivo: TDBCheckBox [7]
    Left = 533
    Top = 155
    Width = 59
    Height = 17
    Caption = 'Ativo'
    DataField = 'ativo'
    DataSource = dsCadastro
    TabOrder = 2
    ValueChecked = 'T'
    ValueUnchecked = 'F'
  end
  object edtNome: TcxDBTextEdit [8]
    Left = 383
    Top = 178
    DataBinding.DataField = 'nome'
    DataBinding.DataSource = dsCadastro
    TabOrder = 3
    Width = 209
  end
  object edtEmail: TcxDBTextEdit [9]
    Left = 383
    Top = 207
    DataBinding.DataField = 'email'
    DataBinding.DataSource = dsCadastro
    TabOrder = 4
    Width = 209
  end
  object edtLogin: TcxDBTextEdit [10]
    Left = 383
    Top = 236
    DataBinding.DataField = 'login'
    DataBinding.DataSource = dsCadastro
    TabOrder = 5
    Width = 209
  end
  object edtSenha: TcxDBTextEdit [11]
    Left = 383
    Top = 265
    DataBinding.DataField = 'senha'
    DataBinding.DataSource = dsCadastro
    TabOrder = 6
    Width = 209
  end
  inherited dsCadastro: TDataSource
    DataSet = DMMain.FDTUsuarios
  end
end
