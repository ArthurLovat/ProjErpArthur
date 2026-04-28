inherited frmListagemProdutos: TfrmListagemProdutos
  Caption = 'Listagem De Produtos'
  ClientWidth = 1084
  Position = poScreenCenter
  TextHeight = 15
  inherited lblTitulo: TLabel
    Width = 118
    Caption = 'Produtos'
    ExplicitWidth = 118
  end
  inherited grdListagem: TcxGrid
    Top = 206
    ExplicitTop = 206
    inherited tbvListagem: TcxGridDBTableView
      object tbvListagemid: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        Options.Editing = False
        Width = 34
      end
      object tbvListagemativo: TcxGridDBColumn
        Caption = 'Ativo'
        DataBinding.FieldName = 'ativo'
        Options.Editing = False
      end
      object tbvListagemdescricao: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'descricao'
        Options.Editing = False
        Width = 108
      end
      object tbvListagemcodigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'codigo'
        Options.Editing = False
        Width = 82
      end
      object tbvListagemdata_cadastro: TcxGridDBColumn
        Caption = 'Data De Cadastro'
        DataBinding.FieldName = 'data_cadastro'
        Options.Editing = False
        Width = 122
      end
      object tbvListagemdata_alteracao: TcxGridDBColumn
        Caption = 'Data De Altera'#231#227'o'
        DataBinding.FieldName = 'data_alteracao'
        Options.Editing = False
        Width = 133
      end
      object tbvListagempreco_custo: TcxGridDBColumn
        Caption = 'Pre'#231'o de Custo'
        DataBinding.FieldName = 'preco_custo'
        Options.Editing = False
      end
      object tbvListagempreco_venda: TcxGridDBColumn
        Caption = 'Pre'#231'o De Venda'
        DataBinding.FieldName = 'preco_venda'
        Options.Editing = False
      end
      object tbvListagemobservacao: TcxGridDBColumn
        Caption = 'Observa'#231#227'o'
        DataBinding.FieldName = 'observacao'
        Options.Editing = False
        Width = 198
      end
      object tbvListagemtunidade_medida_id: TcxGridDBColumn
        Caption = 'ID Da Unidade de Medida'
        DataBinding.FieldName = 'tunidade_medida_id'
        Options.Editing = False
      end
    end
  end
  inherited dsListagem: TDataSource
    DataSet = DMMain.FDTProdutos
  end
end
