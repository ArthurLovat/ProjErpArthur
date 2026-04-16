inherited frmListagemBairros: TfrmListagemBairros
  Caption = 'Bairros'
  Position = poScreenCenter
  ExplicitWidth = 1100
  ExplicitHeight = 700
  TextHeight = 15
  inherited lblTitulo: TLabel
    Width = 257
    Caption = 'Listagem De Bairros'
    ExplicitWidth = 257
  end
  inherited grdListagem: TcxGrid
    inherited tbvListagem: TcxGridDBTableView
      object tbvListagemid: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        Options.Editing = False
      end
      object tbvListagemnome_bairro: TcxGridDBColumn
        Caption = 'Nome Do Bairro'
        DataBinding.FieldName = 'nome_bairro'
        Options.Editing = False
        Width = 868
      end
    end
  end
  inherited dsListagem: TDataSource
    DataSet = DMMain.FDTBairros
  end
end
