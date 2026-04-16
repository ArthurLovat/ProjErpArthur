inherited frmUnidadesMedida: TfrmUnidadesMedida
  Caption = 'Unidades De medida'
  Position = poScreenCenter
  ExplicitWidth = 1100
  ExplicitHeight = 700
  TextHeight = 15
  inherited lblTitulo: TLabel
    Width = 267
    Caption = 'Unidades De Medida'
    ExplicitWidth = 267
  end
  inherited grdListagem: TcxGrid
    inherited tbvListagem: TcxGridDBTableView
      object tbvListagemid: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Options.Editing = False
      end
      object tbvListagemativo: TcxGridDBColumn
        DataBinding.FieldName = 'ativo'
        Options.Editing = False
      end
      object tbvListagemdescricao: TcxGridDBColumn
        DataBinding.FieldName = 'descricao'
        Options.Editing = False
        Width = 788
      end
      object tbvListagemunidade: TcxGridDBColumn
        DataBinding.FieldName = 'unidade'
        Options.Editing = False
        Width = 55
      end
    end
  end
  inherited dsListagem: TDataSource
    DataSet = DMMain.FDTUnidadesMedida
  end
end
