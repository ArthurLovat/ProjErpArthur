object frmModeloListagemPadrao: TfrmModeloListagemPadrao
  Left = 0
  Top = 0
  Caption = 'Inserir nome da listagem'
  ClientHeight = 661
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnDestroy = FormDestroy
  TextHeight = 15
  object lblTitulo: TLabel
    Left = 8
    Top = 32
    Width = 76
    Height = 37
    Caption = 'Titulo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxbtnNovo: TcxButton
    Left = 915
    Top = 176
    Width = 165
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
    OnClick = cxbtnNovoClick
  end
  object cxBtnPesquisar: TcxButton
    Left = 223
    Top = 176
    Width = 106
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = cxBtnPesquisarClick
  end
  object edtPesquisar: TEdit
    Left = 8
    Top = 176
    Width = 209
    Height = 23
    TabOrder = 2
    OnKeyDown = edtPesquisarKeyDown
  end
  object grdListagem: TcxGrid
    Left = 8
    Top = 207
    Width = 1072
    Height = 447
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object tbvListagem: TcxGridDBTableView
      OnCellDblClick = tbvListagemCellDblClick
      DataController.DataSource = dsListagem
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      object tbvListagemExcluir: TcxGridDBColumn
        Caption = 'Excluir'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001974455874536F6674776172650041646F626520496D616765526561
              647971C9653C0000000C744558745469746C650054726173683B649A356D0000
              024249444154785E75924F6BD44018C69FD9CC36E976975D28A52DDA562DB1C5
              2FE021C52FE04128C52A28BD7810912E5814113D78F0E4A907BD0852C4434FF5
              50B4071145DB83081E2C45BBBBAD8AF51F8B6CDBD5CD6EE69F99A181B0A40F09
              79923CEFF07BDF19AA94429BC8D9A96B6FFA7ABB3DC7B10128B45A0C3F7E5657
              E61FDD1D439B28122484F06AB5DDD9B907776E025053176EDC9652CE2041D475
              5D63CAE532C6CF14970921DED0E14184CFE2E973578A1A7060E8204252FD5FE3
              AE2CCCCF8EE9BA38013935397DFFD8E8B037E21E427F5F0F0AF91CD21D142CE0
              A8FFFD87ED9D3A46DD419437BE7961F61E80CB9A8EEA62002925E5C542EF01EC
              0629A4EB01489AC39104CD264775BB893FB526FC264177FF004AA5CD4B00A601
              C888C0924262F9C54B8D0E4A2DA42905491128A9C03807E7C2B4111BBA151118
              ADAF3ECF1F3F31BE3331711241AB85ADEFBF313A321C12F82855BEE2A87B04BE
              DFC0D2D22BBC7DBD5068DF05012050522293C982520A100BD95C0E969582440A
              99AE2C0801A410D0598D1F23302F4C2A820EDB41486E2663DBB62E306D394E67
              E83974265A2022507BDB2826CFCF98FE95A4900A86C40A6F2194FEAE7D442012
              0F92101C003197E01ACA583D40E3A24C5C541FA04882F3A8084CA3EF2DC6431F
              CF542A15E3955271021D94918D500D03E73C2193D402E7D50FAB6B3D9D8E6D82
              1B9B9FC1183733F8F8691D8D860FC1D9D6BE0B1025E79E3E59BCDA95CDA090CF
              E3D7970A1817085A0C6BEFDF210818A8957EBC2FC1B3C587D701DC8A9D0D2BC1
              33C4F41F3E8F1596C01C0CF00000000049454E44AE426082}
            Kind = bkGlyph
          end>
        Properties.ViewStyle = vsButtonsOnly
        Properties.OnButtonClick = tbvListagemExcluirPropertiesButtonClick
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.ShowEditButtons = isebAlways
        Options.ExpressionEditing = False
      end
      object tbvListagemEditar: TcxGridDBColumn
        Caption = 'Editar'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000B744558745469746C6500456469743B6535AC440000007B49444154
              785E9D93210E80400C040FC78B30BC0124AFC0A2215870F0987B161F38A06D42
              36A9622B46CE744D53B766964938854A9D88FC285F840DEC268383B93CBBC82D
              8CDC6C443695D561641F310819B35D202283A00C823208CB3ED0F2320283500B
              0B272370091911C87F03C5AE22D230FF91DCEC9E7DEF17E6DCCD046CE136C900
              00000049454E44AE426082}
            Kind = bkGlyph
          end>
        Properties.MaxLength = 0
        Properties.ViewStyle = vsButtonsOnly
        Properties.OnButtonClick = tbvListagemEditarPropertiesButtonClick
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.ShowEditButtons = isebAlways
        Options.ExpressionEditing = False
      end
    end
    object lvlListagem: TcxGridLevel
      GridView = tbvListagem
    end
  end
  object dsListagem: TDataSource
    Left = 96
  end
end
