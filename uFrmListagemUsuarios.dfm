inherited frmListagemUsuarios: TfrmListagemUsuarios
  Caption = 'Usuarios'
  ClientWidth = 1088
  Position = poScreenCenter
  ExplicitWidth = 1100
  TextHeight = 15
  inherited lblTitulo: TLabel
    Width = 274
    Caption = 'Listagem de Usuarios'
    ExplicitWidth = 274
  end
  inherited grdListagem: TcxGrid
    inherited tbvListagem: TcxGridDBTableView
      object tbvListagemid: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        Options.Editing = False
        Width = 36
      end
      object tbvListagemativo: TcxGridDBColumn
        Caption = 'Ativo'
        DataBinding.FieldName = 'ativo'
        Options.Editing = False
        Width = 38
      end
      object tbvListagemlogin: TcxGridDBColumn
        Caption = 'Login'
        DataBinding.FieldName = 'login'
        Options.Editing = False
        Width = 65
      end
      object tbvListagemsenha: TcxGridDBColumn
        Caption = 'Senha'
        DataBinding.FieldName = 'senha'
        Options.Editing = False
        Width = 69
      end
      object tbvListagemnome: TcxGridDBColumn
        Caption = 'Nome'
        DataBinding.FieldName = 'nome'
        Options.Editing = False
        Width = 118
      end
      object tbvListagememail: TcxGridDBColumn
        Caption = 'Email'
        DataBinding.FieldName = 'email'
        Options.Editing = False
        Width = 145
      end
      object tbvListagemdata_alteracao: TcxGridDBColumn
        Caption = 'Data Altera'#231#227'o'
        DataBinding.FieldName = 'data_alteracao'
        Options.Editing = False
        Width = 115
      end
      object tbvListagemdata_cadastro: TcxGridDBColumn
        Caption = 'Data_Cadastro'
        DataBinding.FieldName = 'data_cadastro'
        Options.Editing = False
        Width = 119
      end
      object tbvListagemid_externo: TcxGridDBColumn
        Caption = 'ID Externo'
        DataBinding.FieldName = 'id_externo'
        Options.Editing = False
        Width = 286
      end
    end
  end
  inherited dsListagem: TDataSource
    DataSet = DMMain.FDTUsuarios
    Left = 144
  end
end
