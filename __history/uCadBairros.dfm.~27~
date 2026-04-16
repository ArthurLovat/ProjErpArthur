inherited frmCadBairros: TfrmCadBairros
  Caption = 'Cadastro De Bairros'
  ClientHeight = 462
  ClientWidth = 784
  Font.Height = -13
  ExplicitHeight = 500
  TextHeight = 17
  inherited lblTitulo: TLabel
    Width = 259
    Caption = 'Cadastro De Bairros'
    ExplicitWidth = 259
  end
  object lblBairro: TLabel [1]
    Left = 216
    Top = 189
    Width = 60
    Height = 25
    Caption = 'Bairro:'
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
  object edtDescricao: TcxDBTextEdit [4]
    Left = 379
    Top = 192
    DataBinding.DataField = 'nome_bairro'
    DataBinding.DataSource = dsCadastro
    TabOrder = 0
    Width = 213
  end
  inherited dsCadastro: TDataSource
    DataSet = DMMain.FDTBairros
  end
end
