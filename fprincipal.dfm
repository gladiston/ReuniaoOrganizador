object fmPrincipal: TfmPrincipal
  Left = 0
  Top = 0
  Caption = 'fmPrincipal'
  ClientHeight = 538
  ClientWidth = 838
  Color = clWindow
  Constraints.MinHeight = 240
  Constraints.MinWidth = 320
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object BtnactFixar: TSpeedButton
    Left = 224
    Top = 3
    Width = 20
    Height = 22
    Hint = 'Clique aqui para fixar ou permitir a auto-oculta'#231#227'o'
    AllowAllUp = True
    GroupIndex = 2
    Down = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000078787878E5E5E5E51414
      1414000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007E7E7E7EE6E6E6E71414
      1414000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808081E9E9E9E91414
      1414000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000081818181E8E8E8E91414
      1414000000000000000000000000000000000000000000000000000000000000
      0000747474747C7C7C7C7E7E7E7E7E7E7E7E7E7E7E7EC1C1C1C1F5F5F5F58989
      89897E7E7E7E7E7E7E7E7E7E7E7E7C7C7C7C1212121200000000000000000000
      0000FEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFFFEFEFEFFFFFF
      FFFFFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFF6A6A6A6A00000000000000000000
      00001C1C1C1CCBCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBCB0000000000000000000000000000
      0000000000001E1E1E1EFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFFFEFEFEFFFFFF
      FFFFFEFEFEFFFFFFFFFFD0D0D0D11E1E1E1E0000000000000000000000000000
      000000000000000000007E7E7E7EFFFFFFFF4444444444444444FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      000000000000000000007E7E7E7EFFFFFFFF0606060616161616FEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFF00000000000000000000000000000000000000000000
      000000000000000000007E7E7E7EFFFFFFFF0404040414141414FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      000000000000000000007E7E7E7EFFFFFFFF0404040414141414FEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFF00000000000000000000000000000000000000000000
      000000000000000000007E7E7E7EFFFFFFFF0606060616161616FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      000000000000000000007E7E7E7EFFFFFFFF1010101018181818FEFEFEFFFFFF
      FFFFFEFEFEFFFFFFFFFF00000000000000000000000000000000000000000000
      00000000000066666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF686868680000000000000000000000000000
      00000000000034343434EEEEEEEFF0F0F0F1F1F1F1F1F3F3F3F3F1F1F1F1F1F1
      F1F1F1F1F1F1F1F1F1F1E1E1E1E1343434340000000000000000}
    Layout = blGlyphTop
    ParentShowHint = False
    ShowHint = True
  end
  object Lista_Arquivos: TListView
    Left = 0
    Top = 0
    Width = 250
    Height = 538
    Align = alLeft
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Columns = <>
    ColumnClick = False
    FlatScrollBars = True
    ReadOnly = True
    RowSelect = True
    PopupMenu = Menu_Arquivos
    ShowColumnHeaders = False
    TabOrder = 0
    ViewStyle = vsReport
    OnCustomDrawItem = Lista_ArquivosCustomDrawItem
    OnDblClick = actCopiarLocalizacaoParaClipboardExecute
    OnDragDrop = Lista_ArquivosDragDrop
    OnDragOver = Lista_ArquivosDragOver
    OnMouseDown = Lista_ArquivosMouseDown
    OnSelectItem = Lista_ArquivosSelectItem
    ExplicitHeight = 521
  end
  object Paginas: TPageControl
    Left = 250
    Top = 0
    Width = 588
    Height = 538
    ActivePage = TabFigura
    Align = alClient
    TabOrder = 1
    OnChange = PaginasChange
    OnMouseEnter = PaginasMouseEnter
    ExplicitTop = -6
    ExplicitHeight = 521
    object TabFigura: TTabSheet
      Caption = 'TabFigura'
      ExplicitHeight = 489
      DesignSize = (
        580
        506)
      object Figura: TImage
        Left = 0
        Top = 0
        Width = 580
        Height = 489
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Stretch = True
        Transparent = True
        OnDblClick = FiguraDblClick
        OnMouseDown = PermitirArrastarJanela
        ExplicitLeft = -37
        ExplicitTop = 21
        ExplicitHeight = 480
      end
      object pnlLegenda: TLabel
        Left = 0
        Top = 489
        Width = 580
        Height = 17
        Align = alBottom
        WordWrap = True
        OnMouseDown = PermitirArrastarJanela
        ExplicitWidth = 4
      end
      object BtnBorderStyle: TSpeedButton
        Left = 554
        Top = 488
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Action = actShowBorder
        AllowAllUp = True
        Anchors = [akTop, akRight]
        GroupIndex = 3
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Wingdings'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
    end
    object TabMedia: TTabSheet
      Caption = 'TabMedia'
      ImageIndex = 1
      ExplicitHeight = 489
      object WebBrowser1: TWebBrowser
        Left = 0
        Top = 0
        Width = 580
        Height = 506
        Align = alClient
        TabOrder = 0
        OnBeforeNavigate2 = WebBrowser1BeforeNavigate2
        OnNavigateComplete2 = WebBrowser1NavigateComplete2
        OnDocumentComplete = WebBrowser1DocumentComplete
        ExplicitHeight = 480
        ControlData = {
          4C000000F23B00004C3400000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E12620B000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object TabPDF: TTabSheet
      Caption = 'TabPDF'
      ImageIndex = 2
      ExplicitHeight = 489
    end
    object TabAjuda: TTabSheet
      Caption = 'TabAjuda'
      ImageIndex = 3
      ExplicitHeight = 489
      object ScrollBox1: TScrollBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 574
        Height = 500
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        OnMouseDown = ScrollBox1MouseDown
        ExplicitHeight = 483
        object pnlExplica_Arquivos: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 568
          Height = 94
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 562
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = 'Gerenciamento de arquivos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 169
          end
          object lblExplicacao: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 26
            Width = 562
            Height = 65
            Align = alClient
            Caption = '...'
            WordWrap = True
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 9
            ExplicitHeight = 17
          end
        end
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 439
          Width = 568
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 150
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'F1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            OnMouseDown = PermitirArrastarJanela
            ExplicitTop = 6
          end
          object Label4: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 3
            Width = 406
            Height = 16
            Align = alClient
            Caption = 'Mostra essa tela de ajuda'
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 152
            ExplicitHeight = 17
          end
        end
        object Panel3: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 411
          Width = 568
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 150
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'H ou Ctrl+H'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            OnMouseDown = PermitirArrastarJanela
            ExplicitLeft = -4
          end
          object Label6: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 3
            Width = 406
            Height = 16
            Align = alClient
            Caption = 'Mostrar ou n'#227'o o painel de arquivos'
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 216
            ExplicitHeight = 17
          end
        end
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 383
          Width = 568
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 150
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'W ou Ctrl+W'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            OnMouseDown = PermitirArrastarJanela
            ExplicitLeft = -4
          end
          object Label8: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 3
            Width = 406
            Height = 16
            Align = alClient
            Caption = '(ou a rodinha do mouse) Ir para a midia posterior'
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 294
            ExplicitHeight = 17
          end
        end
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 355
          Width = 568
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          object Label9: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 150
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Q ou Ctrl+Q'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            OnMouseDown = PermitirArrastarJanela
            ExplicitLeft = -4
          end
          object Label10: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 3
            Width = 406
            Height = 16
            Align = alClient
            Caption = '(ou a rodinha do mouse) Ir para a midia anterior'
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 286
            ExplicitHeight = 17
          end
        end
        object Panel6: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 327
          Width = 568
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 5
          object Label11: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 150
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ctrl+A'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            OnMouseDown = PermitirArrastarJanela
            ExplicitLeft = -4
          end
          object Label12: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 3
            Width = 406
            Height = 16
            Align = alClient
            Caption = 'Abrir uma lista de arquivos'
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 158
            ExplicitHeight = 17
          end
        end
        object Panel7: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 299
          Width = 568
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 6
          object Label13: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 150
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ctrl+S'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            OnMouseDown = PermitirArrastarJanela
            ExplicitLeft = -4
            ExplicitTop = 6
          end
          object Label14: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 3
            Width = 406
            Height = 16
            Align = alClient
            Caption = 'Salvar a lista atual'
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 105
            ExplicitHeight = 17
          end
        end
        object Panel8: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 271
          Width = 568
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 7
          object Label15: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 150
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ctrl+Down'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            OnMouseDown = PermitirArrastarJanela
            ExplicitLeft = -4
          end
          object Label16: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 3
            Width = 406
            Height = 16
            Align = alClient
            Caption = 'Mover o arquivo selecionado para baixo'
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 239
            ExplicitHeight = 17
          end
        end
        object Panel9: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 243
          Width = 568
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 8
          OnMouseDown = PermitirArrastarJanela
          object Label17: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 150
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ctrl+Up'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            OnMouseDown = PermitirArrastarJanela
            ExplicitLeft = -4
          end
          object Label18: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 3
            Width = 406
            Height = 16
            Align = alClient
            Caption = 'Mover o arquivo selecionado para cima'
            ExplicitWidth = 234
            ExplicitHeight = 17
          end
        end
        object Panel10: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 215
          Width = 568
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 9
          object Label19: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 150
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ctrl+Del ou Delete'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            OnMouseDown = PermitirArrastarJanela
            ExplicitTop = 6
          end
          object Label20: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 3
            Width = 406
            Height = 16
            Align = alClient
            Caption = 'Remover o arquivo selecionado'
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 186
            ExplicitHeight = 17
          end
        end
        object Panel11: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 187
          Width = 568
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 10
          object Label21: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 150
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ctrl+L'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            OnMouseDown = PermitirArrastarJanela
            ExplicitTop = 6
          end
          object Label22: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 3
            Width = 406
            Height = 16
            Align = alClient
            Caption = 'Incluir ou alterar a legenda'
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 157
            ExplicitHeight = 17
          end
        end
        object Panel12: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 159
          Width = 568
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 11
          object Label23: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 150
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ctrl+E'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            OnMouseDown = PermitirArrastarJanela
            ExplicitLeft = -4
          end
          object Label24: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 3
            Width = 406
            Height = 16
            Align = alClient
            Caption = 'Localizar o arquivo usando o gerenciador de arquivos'
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 318
            ExplicitHeight = 17
          end
        end
        object Panel14: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 131
          Width = 568
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 12
          object Label27: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 150
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ctrl+C'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            OnMouseDown = PermitirArrastarJanela
            ExplicitLeft = -4
          end
          object Label28: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 3
            Width = 406
            Height = 16
            Align = alClient
            Caption = 'Copiar a localiza'#231#227'o para a '#225'rea de clipboard'
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 269
            ExplicitHeight = 17
          end
        end
        object Panel15: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 103
          Width = 568
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 13
          object Label29: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 150
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ctrl+Insert'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            OnMouseDown = PermitirArrastarJanela
            ExplicitLeft = -4
          end
          object Label30: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 3
            Width = 406
            Height = 16
            Align = alClient
            Caption = 'Adicionar um ou mais arquivos '#224' lista'
            OnMouseDown = PermitirArrastarJanela
            ExplicitWidth = 219
            ExplicitHeight = 17
          end
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 312
    Top = 152
  end
  object ImageList1: TImageList
    BlendColor = clWhite
    BkColor = clWhite
    Left = 496
    Top = 384
    Bitmap = {
      494C010113001800040010001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078787878E5E5E5E514141414000000000000
      0000000000000000000000000000000000000101010005050500000000000303
      0300010101000000000000000000010101000101010000000000000000000101
      010003030300000000000505050001010100F7F7F700FFFFFF00FFFFFF00F9F9
      F900FFFFFF00A5A5A5003F3F3F00131313000808080064646400F6F6F600FBFB
      FB00FFFFFF00F6F6F600FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007E7E7E7EE6E6E6E714141414000000000000
      0000000000000000000000000000000000000000000000000000040404000000
      0000060606000303030003030300040404000404040003030300030303000606
      060000000000040404000000000000000000FBFBFB00FFFFFF00FFFFFF007575
      7500030303000A0A0A0000000000000000000101010000000000050505000505
      0500EAEAEA00F8F8F800FAFAFA00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808081E9E9E9E914141414000000000000
      0000000000000000000000000000000000000202020000000000FFFFFF00FFFF
      FF00000000000202020000000000000000000000000000000000020202000000
      0000FFFFFF00FFFFFF000000000002020200FFFFFF00FDFDFD00141414000000
      00000000000000000000030303000E0E0E000000000000000000080808000909
      090010101000D5D5D500F9F9F900FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000081818181E8E8E8E914141414000000000000
      0000000000000000000000000000000000000000000004040400FFFFFF00FAFA
      FA00FFFFFF00000000000808080000000000000000000808080000000000FFFF
      FF00FAFAFA00FFFFFF000404040000000000FFFFFF0033333300000000000101
      0100040404000000000000000000C1C1C1003D3D3D000B0B0B00000000000909
      09000303030010101000E9E9E900F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000747474747C7C
      7C7C7E7E7E7E7E7E7E7E7E7E7E7EC1C1C1C1F5F5F5F5898989897E7E7E7E7E7E
      7E7E7E7E7E7E7C7C7C7C1212121200000000000000000707070000000000FFFF
      FF00FFFFFF00F9F9F90000000000020202000202020000000000F9F9F900FFFF
      FF00FFFFFF00000000000707070000000000DADADA0009090900000000000000
      0000010101000909090047474700F2F2F200FFFFFF000C0C0C00000000000000
      0000070707000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFFFF
      FFFFFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFFFEFEFEFFFFFF
      FFFFFEFEFEFFFFFFFFFF6A6A6A6A000000000000000001010100000000000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000001010100000000001818180002020200000000000404
      0400030303000000000000000000A2A2A20038383800030303000C0C0C000000
      0000000000000000000000000000E5E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C1CCBCB
      CBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCBCBCBCB00000000000000000505050000000000000000000909
      090000000000F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F1000000
      00000909090000000000000000000505050000000000000000000E0E0E000000
      00000000000000000000090909000F0F0F001414140000000000000000000303
      03000000000000000000080808006F6F6F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001E1E
      1E1EFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFFFEFEFEFFFFFF
      FFFFD0D0D0D11E1E1E1E00000000000000000000000000000000060606000000
      00000505050003030300FEFEFE00FBFBFB00FBFBFB00FEFEFE00030303000505
      0500000000000606060000000000000000000000000002020200000000000404
      0400080808000000000000000000B3B3B300292929000D0D0D000D0D0D000404
      04000000000004040400000000001F1F1F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7E7E7EFFFFFFFF4444444444444444FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000060606000000
      00000505050003030300FEFEFE00FBFBFB00FBFBFB00FEFEFE00030303000505
      0500000000000606060000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C00F3F3F3004E4E4E00000000000000
      000004040400020202000A0A0A00191919000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7E7E7EFFFFFFFF0606060616161616FEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFF000000000000000000000000000000000505050000000000000000000909
      090000000000F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F1000000
      0000090909000000000000000000050505000404040007070700000000000808
      080000000000000000000D0D0D00000000009F9F9F00FAFAFA000F0F0F000404
      04000000000000000000000000003C3C3C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7E7E7EFFFFFFFF0404040414141414FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000001010100000000000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000001010100000000000000000000000000090909000000
      00000000000000000000595959000C0C0C0020202000FFFFFF00969696000000
      0000010101000000000007070700BABABA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7E7E7EFFFFFFFF0404040414141414FEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFF00000000000000000000000000000000000000000707070000000000FFFF
      FF00FFFFFF00F9F9F90000000000020202000202020000000000F9F9F900FFFF
      FF00FFFFFF000000000007070700000000008080800007070700000000000202
      0200000000003B3B3B00FFFFFF000000000024242400FCFCFC00777777000000
      0000000000000101010000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7E7E7EFFFFFFFF0606060616161616FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000004040400FFFFFF00FAFA
      FA00FFFFFF00000000000808080000000000000000000808080000000000FFFF
      FF00FAFAFA00FFFFFF000404040000000000FFFFFF0009090900010101000000
      00000404040000000000BCBCBC00FFFFFF00FFFFFF00AFAFAF00000000000000
      000000000000000000007C7C7C00F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7E7E7EFFFFFFFF1010101018181818FEFEFEFFFFFFFFFFFEFEFEFFFFFF
      FFFF000000000000000000000000000000000202020000000000FFFFFF00FFFF
      FF00000000000202020000000000000000000000000000000000020202000000
      0000FFFFFF00FFFFFF000000000002020200F2F2F200F0F0F000000000000000
      000000000000000000000C0C0C0000000000000000000B0B0B00000000000000
      00000B0B0B0023232300FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006666
      6666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6868686800000000000000000000000000000000040404000000
      0000060606000303030003030300040404000404040003030300030303000606
      060000000000040404000000000000000000FFFFFF00FFFFFF00E6E6E6001111
      1100000000000000000002020200000000000909090002020200000000000000
      00003C3C3C00FFFFFF00F7F7F700FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003434
      3434EEEEEEEFF0F0F0F1F1F1F1F1F3F3F3F3F1F1F1F1F1F1F1F1F1F1F1F1F1F1
      F1F1E1E1E1E13434343400000000000000000101010005050500000000000303
      0300010101000000000000000000010101000101010000000000000000000101
      010003030300000000000505050001010100FFFFFF00FAFAFA00FCFCFC00FFFF
      FF007D7D7D00000000000000000007070700060606000000000021212100D6D6
      D600FFFFFF00F8F8F800ECECEC00F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002A2A2A2ABBBBBBBB16161616000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000016161616BBBBBBBB2A2A
      2A2A000000000000000000000000000000000000000000000000000000000000
      0000A5A5A5A5F5F5F5F5F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F5F5F5F5B3B3
      B3B300000000000000000000000000000000EFEFEFEFF7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7EFEFEFEF0000000000000000000000002C2C
      2C2CE9E9E9E9FFFFFFFFD3D3D3D3161616160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000016161616D3D3D3D3FFFFFFFFE9E9
      E9E92E2E2E2E0000000000000000000000000000000000000000000000000000
      00000000000010101010C1C1C1C1FFFFFFFFFFFFFFFFD3D3D3D3121212120000
      000000000000000000000000000000000000F7F7F7F7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7000000000000000022222222EBEB
      EBEBFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3D31616161600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000016161616D3D3D3D3FFFFFFFFFFFFFFFFFFFF
      FFFFEBEBEBEB2222222200000000000000000000000000000000000000000000
      00000000000000000000AFAFAFAFFFFFFFFFFFFFFFFFC9C9C9C9000000000000
      000000000000000000000000000000000000F7F7F7F7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8383
      8383060606060C0C0C0CFFFFFFFFF7F7F7F7000000000000000004040404A7A7
      A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3D314141414000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014141414D3D3D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA7A7A7A70404040400000000000000000000000000000000000000000000
      00000000000000000000AFAFAFAFFFFFFFFFFFFFFFFFC9C9C9C9000000000000
      000000000000000000000000000000000000F7F7F7F7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383830000
      00000000000006060606FFFFFFFFF7F7F7F70000000000000000000000000404
      0404A9A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D1141414140000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000014141414D1D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9
      A9A9040404040000000000000000000000000000000000000000000000000000
      00000000000000000000AFAFAFAFFFFFFFFFFFFFFFFFC9C9C9C9000000000000
      000000000000000000000000000000000000F7F7F7F7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83838383000000000000
      00000000000083838383FFFFFFFFF7F7F7F70000000000000000000000000000
      000004040404A9A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D11414
      1414000000000000000000000000000000000000000000000000000000000000
      000014141414D1D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A90404
      0404000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AFAFAFAFFFFFFFFFFFFFFFFFC9C9C9C9000000000000
      000000000000000000000000000000000000F7F7F7F7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8383838300000000000000000000
      000083838383FFFFFFFFFFFFFFFFF7F7F7F70000000000000000000000000000
      00000000000004040404A9A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCF
      CFCF121212120000000000000000000000000000000000000000000000001212
      1212CFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A9040404040000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AFAFAFAFFFFFFFFFFFFFFFFFC7C7C7C7000000000000
      000000000000000000000000000000000000F7F7F7F7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF838383830000000000000000000000008383
      8383FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F70000000000000000000000000000
      0000000000000000000004040404ABABABABFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCDCDCDCD121212120000000000000000000000000000000012121212CDCD
      CDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADADADAD04040404000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AFAFAFAFFFFFFFFFFFFFFFFFC7C7C7C7000000000000
      000000000000000000000000000000000000F7F7F7F7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8383838300000000000000000000000083838383FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F70000000000000000000000000000
      0000000000000000000004040404ADADADADFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCFCFCFCF121212120000000000000000000000000000000012121212CFCF
      CFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADADADAD04040404000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AFAFAFAFFFFFFFFFFFFFFFFFC7C7C7C7000000000000
      000000000000000000000000000000000000F7F7F7F7FFFFFFFF81818181FFFF
      FFFFFFFFFFFF838383830000000000000000000000000000000083838383FFFF
      FFFFFFFFFFFF81818181FFFFFFFFF7F7F7F70000000000000000000000000000
      00000000000004040404A9A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCF
      CFCF121212120000000000000000000000000000000000000000000000001212
      1212CFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A9040404040000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AFAFAFAFFFFFFFFFFFFFFFFFC7C7C7C7000000000000
      000000000000000000000000000000000000F7F7F7F7FFFFFFFF060606067A7A
      7A7A838383830000000000000000000000000000000000000000000000008383
      83837A7A7A7A06060606FFFFFFFFF7F7F7F70000000000000000000000000000
      000004040404A7A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D11414
      1414000000000000000000000000000000000000000000000000000000000000
      000014141414CFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A90404
      0404000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AFAFAFAFFFFFFFFFFFFFFFFFC7C7C7C7000000000000
      000000000000000000000000000000000000F7F7F7F7FFFFFFFF060606060000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000006060606FFFFFFFFF7F7F7F70000000000000000000000000404
      0404A9A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D1141414140000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000014141414D1D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9
      A9A90404040400000000000000000000000000000000383838381E1E1E1E0000
      00000000000000000000AFAFAFAFFFFFFFFFFFFFFFFFC7C7C7C7000000000000
      000000000000161616164242424200000000F7F7F7F7FFFFFFFF060606060000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000006060606FFFFFFFFF7F7F7F7000000000000000004040404A9A9
      A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D114141414000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014141414D1D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA9A9A9A9040404040000000000000000000000008B8B8B8B838383830000
      00000000000000000000AFAFAFAFFFFFFFFFFFFFFFFFC5C5C5C5000000000000
      000000000000747474749D9D9D9D00000000F7F7F7F7FFFFFFFF060606060000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000006060606FFFFFFFFF7F7F7F7000000000000000022222222EBEB
      EBEBFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3D31414141400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000014141414D1D1D1D1FFFFFFFFFFFFFFFFFFFF
      FFFFEBEBEBEB242424240000000000000000000000009D9D9D9DE1E1E1E10202
      02020000000000000000AFAFAFAFFFFFFFFFFFFFFFFFC5C5C5C5000000000000
      000000000000D5D5D5D5ADADADAD00000000F7F7F7F7FFFFFFFF0C0C0C0C0606
      0606060606060606060606060606060606060606060606060606060606060606
      0606060606060C0C0C0CFFFFFFFFF7F7F7F70000000000000000000000002C2C
      2C2CE9E9E9E9FFFFFFFFD3D3D3D3161616160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014141414D3D3D3D3FFFFFFFFE9E9
      E9E92C2C2C2C00000000000000000000000000000000ABABABABFFFFFFFF6464
      64643636363636363636C1C1C1C1FFFFFFFFFFFFFFFFD3D3D3D3363636363636
      363658585858FFFFFFFFB9B9B9B900000000F7F7F7F7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F70000000000000000000000000000
      00002A2A2A2AB9B9B9B914141414000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014141414B9B9B9B92A2A
      2A2A0000000000000000000000000000000000000000ADADADADF7F7F7F7F7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7F7F7F7F7B9B9B9B900000000EFEFEFEFF7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7EFEFEFEF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000095959595F5F5F5F57E7E7E7E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008F8F8F8FF1F1F1F1787878780000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C6C6C6CB1B1B1B16A6A6A6A2828
      282834343434A7A7A7A7959595953030303034343434A7A7A7A7999999993636
      36362C2C2C2C72727272B3B3B3B36E6E6E6E6C6C6C6CB1B1B1B16A6A6A6A2828
      282834343434A7A7A7A7959595953030303034343434A7A7A7A7999999993636
      36362C2C2C2C72727272B3B3B3B36E6E6E6EF1F1F1F1FFFFFFFFFFFFFFFF8989
      8989000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F1F1FFFFFFFFFFFFFFFF8181
      8181000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9E9E9E9FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9E9E9E9E9E9FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9E970707070FFFFFFFFFFFFFFFFFFFF
      FFFF898989890000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000076767676FFFFFFFFFFFFFFFFFFFF
      FFFF838383830000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008B8B8B8BEDEDEDED1E1E1E1E1212
      121210101010101010100E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E101010101010
      1010121212121E1E1E1EEDEDEDED8D8D8D8D8B8B8B8BEDEDEDED1E1E1E1E1212
      121210101010101010100E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E101010101010
      1010121212121E1E1E1EEDEDEDED8D8D8D8D0000000078787878FFFFFFFFFFFF
      FFFFFFFFFFFF8B8B8B8B000000001010101054545454747474746A6A6A6A3636
      363600000000000000000000000000000000000000007E7E7E7EFFFFFFFFFFFF
      FFFFFFFFFFFF85858585000000000C0C0C0C4E4E4E4E6C6C6C6C626262623030
      30300000000000000000000000000000000054545454DDDDDDDD000000000000
      0000000000000000000016161616ABABABABABABABAB16161616000000000000
      00000000000000000000DDDDDDDD5454545454545454DDDDDDDD000000000000
      0000000000000000000002020202000000000000000002020202000000000000
      00000000000000000000DDDDDDDD54545454000000000000000078787878FFFF
      FFFFFFFFFFFFFFFFFFFFBDBDBDBDF5F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD1D1D1D13A3A3A3A0000000000000000000000000000000081818181FFFF
      FFFFFFFFFFFFFFFFFFFFB5B5B5B5F3F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCBCBCBCB36363636000000000000000085858585DDDDDDDD000000000000
      0000000000000000000036363636FFFFFFFFFFFFFFFF36363636000000000000
      00000000000000000000DBDBDBDB8585858585858585DDDDDDDD000000000000
      00000000000091919191D7D7D7D71C1C1C1C18181818D5D5D5D5919191910000
      00000000000000000000DBDBDBDB858585850000000000000000000000007A7A
      7A7AFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5E5818181815454545460606060ADAD
      ADADFDFDFDFDF9F9F9F94E4E4E4E000000000000000000000000000000008181
      8181FFFFFFFFFFFFFFFFFFFFFFFFE9E9E9E9898989895C5C5C5C68686868B3B3
      B3B3FFFFFFFFF9F9F9F94A4A4A4A00000000C3C3C3C3DBDBDBDB000000000000
      0000161616163A3A3A3A6A6A6A6AFFFFFFFFFFFFFFFF6A6A6A6A3A3A3A3A1818
      18180000000000000000DBDBDBDBC3C3C3C3C3C3C3C3DBDBDBDB000000000000
      000002020202CFCFCFCFFFFFFFFFDBDBDBDBD7D7D7D7FFFFFFFFD3D3D3D30202
      02020000000000000000DBDBDBDBC3C3C3C30000000000000000000000000000
      0000B3B3B3B3FFFFFFFFBDBDBDBD0E0E0E0E0000000000000000000000000000
      00004A4A4A4AF7F7F7F7F1F1F1F11A1A1A1A0000000000000000000000000000
      0000B3B3B3B3FFFFFFFFC1C1C1C1121212120000000000000000000000000000
      000050505050F9F9F9F9EFEFEFEF18181818EDEDEDEDDBDBDBDB000000000000
      0000A7A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9
      A9A90000000000000000DBDBDBDBEDEDEDEDEDEDEDEDDBDBDBDB000000000000
      00000000000014141414D1D1D1D1FFFFFFFFFFFFFFFFD5D5D5D5161616160000
      00000000000000000000DBDBDBDBEDEDEDED0000000000000000000000000E0E
      0E0EF3F3F3F3E7E7E7E710101010000000000A0A0A0AD1D1D1D16E6E6E6E0000
      0000000000006E6E6E6EFFFFFFFF8B8B8B8B0000000000000000000000000C0C
      0C0CF1F1F1F1E9E9E9E912121212000000000000000000000000000000000000
      00000000000072727272FFFFFFFF8B8B8B8BEDEDEDEDDBDBDBDB000000000000
      0000A5A5A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7
      A7A70000000000000000DBDBDBDBEDEDEDEDEDEDEDEDDBDBDBDB000000000000
      00000000000018181818D7D7D7D7FFFFFFFFFFFFFFFFDBDBDBDB1C1C1C1C0000
      00000000000000000000DBDBDBDBEDEDEDED0000000000000000000000004E4E
      4E4EFFFFFFFF87878787000000000C0C0C0C40404040FFFFFFFFB3B3B3B32020
      20200000000008080808F5F5F5F5D5D5D5D50000000000000000000000004C4C
      4C4CFFFFFFFF8989898900000000080808081E1E1E1E1E1E1E1E1E1E1E1E1818
      1818000000000A0A0A0AF5F5F5F5D5D5D5D5C1C1C1C1DBDBDBDB000000000000
      0000121212123030303060606060FFFFFFFFFFFFFFFF62626262303030301212
      12120000000000000000DBDBDBDBC1C1C1C1C1C1C1C1DBDBDBDB000000000000
      000002020202D3D3D3D3FFFFFFFFD5D5D5D5D1D1D1D1FFFFFFFFD7D7D7D70202
      02020000000000000000DBDBDBDBC1C1C1C10000000000000000000000006C6C
      6C6CFFFFFFFF5C5C5C5C00000000CBCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5454545400000000D3D3D3D3F5F5F5F50000000000000000000000006C6C
      6C6CFFFFFFFF5E5E5E5E00000000C9C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5252525200000000D3D3D3D3F3F3F3F385858585DDDDDDDD000000000000
      0000000000000000000034343434FFFFFFFFFFFFFFFF36363636000000000000
      00000000000000000000DBDBDBDB8383838385858585DDDDDDDD000000000000
      00000000000087878787D1D1D1D11616161614141414CDCDCDCD878787870000
      00000000000000000000DBDBDBDB838383830000000000000000000000006060
      6060FFFFFFFF6A6A6A6A0000000062626262A9A9A9A9FFFFFFFFDDDDDDDD9999
      99991E1E1E1E00000000E1E1E1E1E9E9E9E90000000000000000000000006262
      6262FFFFFFFF6A6A6A6A0000000068686868A3A3A3A3A3A3A3A3A3A3A3A39F9F
      9F9F2222222200000000DFDFDFDFEBEBEBEB54545454DDDDDDDD000000000000
      0000000000000000000014141414A1A1A1A1A1A1A1A114141414000000000000
      00000000000000000000DDDDDDDD5252525254545454DDDDDDDD000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DDDDDDDD525252520000000000000000000000002C2C
      2C2CFFFFFFFFB9B9B9B9000000000000000018181818FFFFFFFF9F9F9F9F0000
      00000000000030303030FFFFFFFFB5B5B5B50000000000000000000000002E2E
      2E2EFFFFFFFFB7B7B7B700000000000000000000000000000000000000000000
      0000000000002C2C2C2CFFFFFFFFB7B7B7B791919191EFEFEFEF2A2A2A2A1E1E
      1E1E1C1C1C1C1A1A1A1A1A1A1A1A1A1A1A1A18181818181818181A1A1A1A1A1A
      1A1A1C1C1C1C28282828EFEFEFEF9191919191919191EFEFEFEF2A2A2A2A1E1E
      1E1E1C1C1C1C1A1A1A1A1A1A1A1A1A1A1A1A18181818181818181A1A1A1A1A1A
      1A1A1C1C1C1C28282828EFEFEFEF919191910000000000000000000000000000
      0000C7C7C7C7FFFFFFFF5656565600000000000000004A4A4A4A1C1C1C1C0000
      000008080808C7C7C7C7FFFFFFFF505050500000000000000000000000000000
      0000C9C9C9C9FFFFFFFF52525252000000000000000000000000000000000000
      000006060606C1C1C1C1FFFFFFFF54545454E9E9E9E9FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBEBE9E9E9E9FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBEB0000000000000000000000000000
      000030303030F5F5F5F5F9F9F9F97C7C7C7C0E0E0E0E00000000000000003434
      3434C7C7C7C7FFFFFFFFAFAFAFAF000000000000000000000000000000000000
      000032323232F7F7F7F7F9F9F9F9747474740A0A0A0A00000000000000002C2C
      2C2CC1C1C1C1FFFFFFFFB5B5B5B50000000064646464A9A9A9A9666666662020
      20202A2A2A2A8D8D8D8D9D9D9D9D2828282822222222898989899D9D9D9D2828
      28281C1C1C1C60606060A7A7A7A76464646464646464A9A9A9A9666666662020
      20202A2A2A2A8D8D8D8D9D9D9D9D2828282822222222898989899D9D9D9D2828
      28281C1C1C1C60606060A7A7A7A7646464640000000000000000000000000000
      00000000000042424242EBEBEBEBFFFFFFFFF9F9F9F9DBDBDBDBE9E9E9E9FFFF
      FFFFFFFFFFFFADADADAD0A0A0A0A000000000000000000000000000000000000
      00000000000046464646EDEDEDEDFFFFFFFFF5F5F5F5D3D3D3D3E1E1E1E1FFFF
      FFFFFFFFFFFFB5B5B5B50C0C0C0C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001414141481818181CDCDCDCDEBEBEBEBE1E1E1E1AFAF
      AFAF4C4C4C4C0000000000000000000000000000000000000000000000000000
      000000000000000000001818181887878787D5D5D5D5F3F3F3F3E9E9E9E9B7B7
      B7B75454545400000000000000000000000056565656EBEBEBEBA5A5A5A59999
      9999999999999999999999999999999999999999999999999999585858580606
      06068B8B8B8B9F9F9F9F04040404000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3E3E3E3E3E3E3E3000000000000
      0000000000000000000000000000000000000000000000000000121212127272
      727287878787D7D7D7D78B8B8B8B000000000000000000000000BDBDBDBDF7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7BDBDBDBD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F1F1DFDFDFDF000000000000
      0000000000000000000000000000000000000000000010101010CBCBCBCBC7C7
      C7C78F8F8F8F87878787464646460E0E0E0E0000000032323232FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF32323232000000000000000000000000262626260404
      0404000000000000000000000000000000000000000000000000000000000000
      0000060606062424242400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F5F5DFDFDFDF000000000000
      0000000000000000000000000000000000000E0E0E0EC9C9C9C9FFFFFFFFFFFF
      FFFFC5C5C5C53434343418181818CDCDCDCD0000000087878787FFFFFFFF9797
      9797060606060606060606060606060606060606060606060606060606060606
      060697979797FFFFFFFF87878787000000000000000030303030EDEDEDEDADAD
      ADAD040404040000000000000000000000000000000000000000000000000606
      0606AFAFAFAFEBEBEBEB2E2E2E2E000000000000000000000000000000000000
      0000000000000000000000000000878787878B8B8B8B00000000000000000000
      000000000000000000000000000000000000F5F5F5F5E1E1E1E1000000000000
      000000000000000000000000000000000000B5B5B5B5FFFFFFFFFFFFFFFFFDFD
      FDFD6060606000000000BFBFBFBFF7F7F7F700000000DBDBDBDBFFFFFFFF4040
      4040000000000000000000000000000000000000000000000000000000000000
      000040404040FFFFFFFFDBDBDBDB000000002E2E2E2EEBEBEBEBFFFFFFFFFFFF
      FFFFADADADAD040404040000000000000000000000000000000006060606AFAF
      AFAFFFFFFFFFFFFFFFFFEBEBEBEB2C2C2C2C0000000000000000000000000000
      000000000000000000008B8B8B8BFFFFFFFFFFFFFFFF8B8B8B8B000000000000
      000000000000000000000000000000000000F7F7F7F7E1E1E1E1000000000000
      0000000000000000000000000000202020208181818170707070FDFDFDFD6464
      64640000000000000000D7D7D7D7F7F7F7F732323232FFFFFFFFE7E7E7E70202
      0202000000000000000000000000000000000000000000000000000000000000
      000002020202E7E7E7E7FFFFFFFF32323232B7B7B7B7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFADADADAD04040404000000000000000006060606AFAFAFAFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B5B50000000000000000000000000000
      0000000000008D8D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8D8D8D0000
      000000000000000000000000000000000000F7F7F7F7E3E3E3E3000000000000
      000000000000000000000000000068686868BBBBBBBBA1A1A1A15C5C5C5C0000
      00000000000000000000D7D7D7D7F7F7F7F787878787FFFFFFFF959595950000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000095959595FFFFFFFF8787878712121212CFCFCFCFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFADADADAD0606060606060606AFAFAFAFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCDCDCDCD121212120000000000000000000000000000
      00008F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8D
      8D8D00000000000000000000000000000000F7F7F7F7EDEDEDED0E0E0E0E0606
      06060606060606060606060606062E2E2E2E2828282806060606060606060606
      0606060606060C0C0C0CE5E5E5E5F7F7F7F7D9D9D9D9FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9D90000000012121212CDCDCDCDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1B1B3B3B3B3FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCDCDCDCD12121212000000000000000000000000000000009191
      9191FFFFFFFFFFFFFFFFFFFFFFFFB5B5B5B5B5B5B5B5FFFFFFFFFFFFFFFFFFFF
      FFFF8F8F8F8F000000000000000000000000F7F7F7F7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7C1C1C1C1FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1C1000000000000000012121212CDCD
      CDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCDCDCDCD121212120000000000000000000000000000000091919191FFFF
      FFFFFFFFFFFFFFFFFFFFB3B3B3B30606060606060606B3B3B3B3FFFFFFFFFFFF
      FFFFFFFFFFFF919191910000000000000000F7F7F7F7FFFFFFFFFFFFFFFFE9E9
      E9E9D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D7D7
      D7D7FDFDFDFDFFFFFFFFFFFFFFFFF7F7F7F70000000000000000F9F9F9F9FFFF
      FFFF040404040000000000000000000000000000000000000000000000000606
      0606FFFFFFFFF9F9F9F900000000000000000000000000000000000000001212
      1212CDCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCB
      CBCB121212120000000000000000000000000000000091919191FFFFFFFFFFFF
      FFFFFFFFFFFFB1B1B1B106060606000000000000000006060606B1B1B1B1FFFF
      FFFFFFFFFFFFFFFFFFFF9191919100000000F7F7F7F7FFFFFFFFFFFFFFFF2222
      222200000000000000000000000000000000000000006A6A6A6A8B8B8B8B0A0A
      0A0AB5B5B5B5FFFFFFFFFFFFFFFFF7F7F7F70000000000000000F9F9F9F9FFFF
      FFFF040404040000000000000000000000000000000004040404040404040A0A
      0A0AFFFFFFFFF9F9F9F900000000000000000000000000000000000000000000
      000012121212CBCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBCB1010
      1010000000000000000000000000000000008F8F8F8FFFFFFFFFFFFFFFFFFFFF
      FFFFB1B1B1B1060606060000000000000000000000000000000006060606AFAF
      AFAFFFFFFFFFFFFFFFFFFFFFFFFF91919191F5F5F5F5FFFFFFFFFFFFFFFF1818
      18180000000000000000000000000000000000000000C3C3C3C3FFFFFFFF1414
      1414ADADADADFFFFFFFFFFFFFFFFF7F7F7F70000000000000000F9F9F9F9FFFF
      FFFF04040404000000000000000000000000CDCDCDCDFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9F900000000000000000000000000000000000000000000
      00000000000010101010CBCBCBCBFFFFFFFFFFFFFFFFC9C9C9C9101010100000
      00000000000000000000000000000000000062626262FDFDFDFDFFFFFFFFAFAF
      AFAF060606060000000000000000000000000000000000000000000000000606
      0606ADADADADFFFFFFFFFDFDFDFD60606060F5F5F5F5FFFFFFFFFFFFFFFF1818
      18180000000000000000000000000000000000000000C3C3C3C3FFFFFFFF1414
      1414ADADADADFFFFFFFFFFFFFFFFF3F3F3F30000000000000000F9F9F9F9FFFF
      FFFF0A0A0A0A060606060606060606060606FFFFFFFFFFFFFFFFFBFBFBFBFBFB
      FBFBFBFBFBFBBFBFBFBF00000000000000000000000000000000000000000000
      0000000000000000000010101010CBCBCBCBC7C7C7C70E0E0E0E000000000000
      0000000000000000000000000000000000000000000066666666A9A9A9A90404
      0404000000000000000000000000000000000000000000000000000000000000
      000004040404A9A9A9A96464646400000000F1F1F1F1FFFFFFFFFFFFFFFF1A1A
      1A1A0000000000000000000000000000000000000000C3C3C3C3FFFFFFFF1414
      1414ADADADADFFFFFFFFFFFFFFFF767676760000000000000000F9F9F9F9FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000101010100E0E0E0E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3E3E3E3FFFFFFFFFFFFFFFF1C1C
      1C1C000000000000000000000000000000000000000091919191C1C1C1C10E0E
      0E0EB1B1B1B1FFFFFFFF8B8B8B8B000000000000000000000000BDBDBDBDF7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7C1C1C1C1000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000052525252E5E5E5E5F5F5F5F5B9B9
      B9B99D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9DA1A1
      A1A1E5E5E5E57474747400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022222222EBEBEBEBF7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7EDEDEDED2626262600000000000000002A2A2A2AE5E5E5E5F7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7E7E7E7E732323232000000000000000002020202080808080808
      0808080808080808080808080808080808080808080808080808080808080808
      08080808080808080808020202020000000056565656E9E9E9E9A5A5A5A59B9B
      9B9B999999999999999999999999999999999999999999999999999999999999
      99999B9B9B9BA3A3A3A3EBEBEBEB5E5E5E5E0000000040404040FFFFFFFFDBDB
      DBDBBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
      BDBDDBDBDBDBFFFFFFFF46464646000000000000000074747474FFFFFFFFD7D7
      D7D7ADADADADADADADADADADADADADADADADADADADADADADADADADADADADADAD
      ADADD5D5D5D5FFFFFFFF767676760000000066666666F9F9F9F9FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF9F9F9F966666666E3E3E3E3E3E3E3E3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D9D9D9D9EDEDEDED0000000040404040FFFFFFFF7474
      7474000000000000000000000000000000000000000000000000000000000000
      000070707070FFFFFFFF46464646000000000000000074747474FFFFFFFF3A3A
      3A3A000000000000000000000000000000000000000000000000000000000000
      000030303030FFFFFFFF7676767600000000E9E9E9E9787878782A2A2A2A2A2A
      2A2A282828282828282828282828282828282828282828282828282828282828
      28282A2A2A2A2A2A2A2A78787878E9E9E9E9F1F1F1F1DFDFDFDF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D7D7D7F7F7F7F70000000040404040FFFFFFFF7474
      7474000000000000000000000000000000000000000000000000000000000000
      000070707070FFFFFFFF46464646000000000000000074747474FFFFFFFF3636
      36360606060697979797ABABABABABABABABABABABABABABABAB9B9B9B9B0808
      08082C2C2C2CFFFFFFFF7676767600000000F5F5F5F542424242000000000000
      0000020202020202020202020202020202020202020202020202020202020202
      0202000000000000000040404040F7F7F7F7F5F5F5F5DFDFDFDF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D7D7D7F7F7F7F70000000040404040FFFFFFFF7474
      7474000000000000000000000000000000000000000000000000000000000000
      000070707070FFFFFFFF46464646000000000000000074747474FFFFFFFF3636
      363610101010EBEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEF1818
      18182C2C2C2CFFFFFFFF7676767600000000F7F7F7F740404040000000003838
      3838FBFBFBFBFDFDFDFDF1F1F1F19F9F9F9F9F9F9F9FF1F1F1F1FDFDFDFDFBFB
      FBFB383838380000000040404040F7F7F7F7F5F5F5F5DFDFDFDF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D7D7D7F7F7F7F70000000040404040FFFFFFFF7474
      7474000000000000000000000000000000000000000000000000000000000000
      000070707070FFFFFFFF46464646000000000000000074747474FFFFFFFF3636
      3636000000000000000000000000000000000000000000000000000000000000
      00002C2C2C2CFFFFFFFF7676767600000000F7F7F7F740404040000000004A4A
      4A4AFFFFFFFFEFEFEFEF38383838919191919191919138383838EFEFEFEFFFFF
      FFFF4C4C4C4C000000003E3E3E3EF7F7F7F7F7F7F7F7DFDFDFDF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D7D7D7F7F7F7F70000000040404040FFFFFFFF7474
      7474000000000000000000000000000000000000000000000000000000000000
      000070707070FFFFFFFF46464646000000000000000074747474FFFFFFFF3636
      3636060606069B9B9B9BADADADADADADADADADADADADADADADAD9D9D9D9D0A0A
      0A0A2C2C2C2CFFFFFFFF7676767600000000F7F7F7F740404040000000004A4A
      4A4AFFFFFFFF9595959595959595202020201E1E1E1E9595959593939393FFFF
      FFFF4C4C4C4C000000003E3E3E3EF7F7F7F7F7F7F7F7E1E1E1E1000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D9D9D9D9F7F7F7F7626262628D8D8D8DFFFFFFFF7474
      7474000000000000000000000000000000000000000000000000000000000000
      000070707070FFFFFFFF91919191626262620000000074747474FFFFFFFF3636
      363610101010E9E9E9E9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBEBEBEBEB1616
      16162C2C2C2CFFFFFFFF7676767600000000F5F5F5F540404040000000004A4A
      4A4AFFFFFFFF8D8D8D8D9B9B9B9B10101010101010109B9B9B9B8D8D8D8DFFFF
      FFFF4C4C4C4C0000000040404040F5F5F5F5F7F7F7F7EDEDEDED101010100606
      0606060606060404040404040404040404040404040404040404060606060606
      0606060606060C0C0C0CE5E5E5E5F7F7F7F7E3E3E3E3FFFFFFFFFFFFFFFF7474
      7474000000000000000000000000000000000000000000000000000000000000
      000070707070FFFFFFFFFFFFFFFFE3E3E3E30000000074747474FFFFFFFF3636
      3636000000000000000000000000000000000000000000000000000000000000
      00002C2C2C2CFFFFFFFF7676767600000000F5F5F5F540404040000000004A4A
      4A4AFFFFFFFFE5E5E5E5383838389F9F9F9F9F9F9F9F38383838E5E5E5E5FFFF
      FFFF4C4C4C4C0000000040404040F5F5F5F5F7F7F7F7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F72E2E2E2EE9E9E9E9FFFFFFFF9393
      9393000000000000000000000000000000000000000000000000000000000000
      000091919191FFFFFFFFE9E9E9E92E2E2E2E0000000074747474FFFFFFFF3636
      3636000000000000000000000000000000000000000000000000000000000000
      00002C2C2C2CFFFFFFFF7676767600000000F5F5F5F542424242000000004040
      4040FFFFFFFFFFFFFFFFE3E3E3E38181818181818181E1E1E1E1FFFFFFFFFFFF
      FFFF424242420000000040404040F5F5F5F5F7F7F7F7FFFFFFFFFFFFFFFFE9E9
      E9E9D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D7D7
      D7D7FDFDFDFDFFFFFFFFFFFFFFFFF7F7F7F70000000028282828E5E5E5E5FFFF
      FFFF767676760000000000000000000000000000000000000000000000007676
      7676FFFFFFFFE5E5E5E528282828000000000000000074747474FFFFFFFF3636
      3636000000000000000008080808080808080808080808080808000000000000
      00002C2C2C2CFFFFFFFF7676767600000000F5F5F5F542424242000000000000
      00001C1C1C1C202020208D8D8D8DBDBDBDBDBBBBBBBB8D8D8D8D1E1E1E1E1C1C
      1C1C000000000000000040404040F3F3F3F3F7F7F7F7FFFFFFFFFFFFFFFF2222
      222200000000000000000000000000000000000000006A6A6A6A8B8B8B8B0A0A
      0A0AB5B5B5B5FFFFFFFFFFFFFFFFF7F7F7F7000000000000000022222222DFDF
      DFDFFFFFFFFF818181810000000000000000000000000000000081818181FFFF
      FFFFE1E1E1E12222222200000000000000000000000074747474FFFFFFFF3A3A
      3A3A0000000060606060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6A6A6A0000
      000030303030FFFFFFFF7676767600000000F3F3F3F3626262620E0E0E0E0C0C
      0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0E0E0E0E0E0E
      0E0E0E0E0E0E0E0E0E0E5C5C5C5CEDEDEDEDF5F5F5F5FFFFFFFFFFFFFFFF1818
      18180000000000000000000000000000000000000000C3C3C3C3FFFFFFFF1414
      1414ADADADADFFFFFFFFFFFFFFFFF7F7F7F70000000000000000000000001E1E
      1E1EDBDBDBDBFFFFFFFF89898989000000000000000089898989FFFFFFFFFFFF
      FFFF8F8F8F8F0000000000000000000000000000000074747474FFFFFFFFDBDB
      DBDBB3B3B3B3D7D7D7D7FFFFFFFFD5D5D5D5D1D1D1D1FFFFFFFFDBDBDBDBB3B3
      B3B3D9D9D9D9FFFFFFFF7676767600000000F3F3F3F3FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF81818181F5F5F5F5FFFFFFFFFFFFFFFF1818
      18180000000000000000000000000000000000000000C3C3C3C3FFFFFFFF1414
      1414ADADADADFFFFFFFFFFFFFFFFF3F3F3F30000000000000000000000000000
      00001A1A1A1AD5D5D5D5FFFFFFFF9393939393939393FFFFFFFFE7E7E7E7FFFF
      FFFF8F8F8F8F0000000000000000000000000000000028282828DFDFDFDFF5F5
      F5F5F5F5F5F5F9F9F9F9FFFFFFFF4040404036363636FFFFFFFFF9F9F9F9F5F5
      F5F5F5F5F5F5E3E3E3E33030303000000000E9E9E9E9FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC5C5C5C5363636363434343432323232323232323030
      3030303030302E2E2E2E2020202000000000F1F1F1F1FFFFFFFFFFFFFFFF1A1A
      1A1A0000000000000000000000000000000000000000C3C3C3C3FFFFFFFF1414
      1414ADADADADFFFFFFFFFFFFFFFF767676760000000000000000000000000000
      00000000000016161616CFCFCFCFFFFFFFFFFFFFFFFFCFCFCFCF3A3A3A3AFFFF
      FFFF8F8F8F8F0000000000000000000000000000000000000000000000000000
      0000000000003A3A3A3AFFFFFFFFE1E1E1E1DDDDDDDDFFFFFFFF444444440000
      0000000000000000000000000000000000005E5E5E5EF3F3F3F3FFFFFFFFFFFF
      FFFFFFFFFFFFE7E7E7E73A3A3A3A000000000000000000000000000000000000
      000000000000000000000000000000000000E3E3E3E3FFFFFFFFFFFFFFFF1C1C
      1C1C000000000000000000000000000000000000000091919191C1C1C1C10E0E
      0E0EB1B1B1B1FFFFFFFF8B8B8B8B000000000000000000000000000000000000
      0000000000000000000012121212C3C3C3C3C3C3C3C31212121210101010E1E1
      E1E1646464640000000000000000000000000000000000000000000000000000
      0000000000000000000068686868E1E1E1E1E3E3E3E370707070000000000000
      0000000000000000000000000000000000000000000002020202060606060808
      0808060606060202020200000000000000000000000000000000000000000000
      00000000000000000000000000000000000052525252E5E5E5E5F5F5F5F5B9B9
      B9B99D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9DA1A1
      A1A1E5E5E5E5747474740000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object TrayIcon1: TTrayIcon
    Left = 408
    Top = 312
  end
  object Menu_Arquivos: TPopupMenu
    Images = ImageList1
    Left = 632
    Top = 176
    object Adicionarumoumaisarquivoslista1: TMenuItem
      Action = actArquivos_Adicionar
    end
    object Copiaralocalizaoparaareadeclipboard1: TMenuItem
      Action = actCopiarLocalizacaoParaClipboard
    end
    object Localizaroarquivousandooexplroer1: TMenuItem
      Action = actAbrirLocalizacaoParaExplorer
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object actArquivosLegendaImagem1: TMenuItem
      Action = actArquivos_Legenda_Imagem
    end
    object actArquivosRemover1: TMenuItem
      Action = actArquivos_Remover
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object actArquivosMoverPCima1: TMenuItem
      Action = actArquivos_MoverPCima
    end
    object actArquivosMoverPBaixo1: TMenuItem
      Action = actArquivos_MoverPBaixo
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Abrirumalistadearquivos1: TMenuItem
      Action = actArquivos_Carregar_Lista
    end
    object actArquivosSalvarLista1: TMenuItem
      Action = actArquivos_Salvar_Lista
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 576
    Top = 296
    object actArquivos_Adicionar: TAction
      Caption = 'Adicionar um ou mais arquivos '#224' lista'
      Hint = 'Adicionar um ou mais arquivos '#224' lista'
      ImageIndex = 8
      ShortCut = 16429
      OnExecute = actArquivos_AdicionarExecute
    end
    object actCopiarLocalizacaoParaClipboard: TAction
      Caption = 'Copiar a localiza'#231#227'o para a '#225'rea de clipboard'
      Hint = 'Copiar a localiza'#231#227'o para a '#225'rea de clipboard'
      ImageIndex = 1
      ShortCut = 16451
      OnExecute = actCopiarLocalizacaoParaClipboardExecute
    end
    object actAbrirLocalizacaoParaExplorer: TAction
      Caption = 'Localizar o arquivo usando o gerenciador de arquivos'
      ImageIndex = 2
      ShortCut = 16453
      OnExecute = actAbrirLocalizacaoParaExplorerExecute
    end
    object actArquivos_Legenda_Imagem: TAction
      Caption = 'Incluir ou alterar a legenda'
      Hint = 'Incluir ou alterar a legenda'
      ImageIndex = 14
      ShortCut = 16460
      OnExecute = actArquivos_Legenda_ImagemExecute
    end
    object actArquivos_Remover: TAction
      Caption = 'Remover o arquivo selecionado'
      Hint = 'Remover o arquivo selecionado'
      ImageIndex = 9
      SecondaryShortCuts.Strings = (
        'DEL')
      ShortCut = 16430
      OnExecute = actArquivos_RemoverExecute
    end
    object actArquivos_MoverPCima: TAction
      Caption = 'Mover o arquivo selecionado para cima'
      Hint = 'Mover o arquivo selecionado para cima'
      ImageIndex = 6
      ShortCut = 16422
      OnExecute = actArquivos_MoverPCimaExecute
    end
    object actArquivos_MoverPBaixo: TAction
      Caption = 'Mover o arquivo selecionado para baixo'
      Hint = 'Mover o arquivo selecionado para baixo'
      ImageIndex = 7
      ShortCut = 16424
      OnExecute = actArquivos_MoverPBaixoExecute
    end
    object actArquivos_Salvar_Lista: TAction
      Caption = 'Salvar a lista atual'
      Hint = 'Salvar a lista atual'
      ImageIndex = 4
      ShortCut = 16467
      OnExecute = actArquivos_Salvar_ListaExecute
    end
    object actArquivos_Carregar_Lista: TAction
      Caption = 'Abrir uma lista de arquivos'
      Hint = 'Abrir uma lista de arquivos'
      ImageIndex = 5
      ShortCut = 16449
      OnExecute = actArquivos_Carregar_ListaExecute
    end
    object actParaMidiaAnterior: TAction
      Caption = 'Ir para a midia anterior'
      ImageIndex = 13
      SecondaryShortCuts.Strings = (
        'Ctrl+Q')
      ShortCut = 81
      OnExecute = actParaMidiaAnteriorExecute
    end
    object actParaMidiaPosterior: TAction
      Caption = 'Ir para a midia posterior'
      ImageIndex = 12
      SecondaryShortCuts.Strings = (
        'Ctrl+W')
      ShortCut = 87
      OnExecute = actParaMidiaPosteriorExecute
    end
    object actMostrarListaOuNao: TAction
      Caption = 'Mostrar ou n'#227'o o painel de arquivos'
      SecondaryShortCuts.Strings = (
        'Ctrl+H')
      ShortCut = 72
      OnExecute = actMostrarListaOuNaoExecute
    end
    object actAjuda: TAction
      Caption = 'Ajuda'
      Hint = 'Ajuda'
      ImageIndex = 18
      ShortCut = 112
      OnExecute = actAjudaExecute
    end
    object actShowBorder: TAction
      GroupIndex = 3
      Hint = 'Clique aqui para "pregar" as bordas e titulo de janela'
      ImageIndex = 16
      OnExecute = actShowBorderExecute
    end
  end
  object BalloonHint1: TBalloonHint
    Left = 416
    Top = 272
  end
end
