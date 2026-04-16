inherited frmListagemCidades: TfrmListagemCidades
  Caption = 'Cidades'
  Position = poScreenCenter
  TextHeight = 15
  inherited lblTitulo: TLabel
    Width = 101
    Caption = 'Cidades'
    ExplicitWidth = 101
  end
  inherited grdListagem: TcxGrid
    inherited tbvListagem: TcxGridDBTableView
      object tbvListagemid: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Options.Editing = False
      end
      object tbvListagemnome_cidade: TcxGridDBColumn
        DataBinding.FieldName = 'nome_cidade'
        Options.Editing = False
        Width = 275
      end
      object tbvListagemtestados_id: TcxGridDBColumn
        DataBinding.FieldName = 'testados_id'
        Options.Editing = False
        Width = 75
      end
    end
  end
  inherited dsListagem: TDataSource
    DataSet = DMMain.FDTCidades
  end
end
