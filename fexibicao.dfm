object fmExibicao: TfmExibicao
  Left = 0
  Top = 0
  Cursor = crSizeAll
  Caption = 'Exibi'#231#227'o'
  ClientHeight = 403
  ClientWidth = 608
  Color = clBlack
  CustomTitleBar.SystemHeight = False
  CustomTitleBar.ShowCaption = False
  CustomTitleBar.ShowIcon = False
  CustomTitleBar.SystemColors = False
  CustomTitleBar.SystemButtons = False
  CustomTitleBar.BackgroundColor = clWhite
  CustomTitleBar.ForegroundColor = 65793
  CustomTitleBar.InactiveBackgroundColor = clWhite
  CustomTitleBar.InactiveForegroundColor = 10066329
  CustomTitleBar.ButtonForegroundColor = 65793
  CustomTitleBar.ButtonBackgroundColor = clWhite
  CustomTitleBar.ButtonHoverForegroundColor = 65793
  CustomTitleBar.ButtonHoverBackgroundColor = 16053492
  CustomTitleBar.ButtonPressedForegroundColor = 65793
  CustomTitleBar.ButtonPressedBackgroundColor = 15395562
  CustomTitleBar.ButtonInactiveForegroundColor = 10066329
  CustomTitleBar.ButtonInactiveBackgroundColor = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnMouseDown = PermitirArrastarjanela
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 356
    Width = 608
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 0
    ExplicitWidth = 359
  end
  object Navegador: TEdgeBrowser
    Left = 0
    Top = 0
    Width = 608
    Height = 356
    Cursor = crHandPoint
    ParentCustomHint = False
    Align = alClient
    TabOrder = 0
    OnNavigationStarting = NavegadorNavigationStarting
    OnNavigationCompleted = NavegadorNavigationCompleted
  end
  object pnlLegenda: TPanel
    Left = 0
    Top = 359
    Width = 608
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnlLegenda'
    TabOrder = 1
    object BtnActPrincipal_Hide: TSpeedButton
      Left = 585
      Top = 0
      Width = 23
      Height = 44
      Cursor = crHandPoint
      Action = fmPrincipal.ActPrincipal_Hide
      Align = alRight
      Images = fmPrincipal.ImageList1
      Flat = True
      ParentShowHint = False
      ShowHint = True
      ExplicitTop = 3
    end
    object lblLegenda: TLabel
      Left = 0
      Top = 0
      Width = 585
      Height = 44
      Cursor = crHandPoint
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 
        'Sua for'#231'a est'#225' em permanecerem calmos e terem confian'#231'a - Isa'#237'as' +
        ' 30:50'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
      OnClick = lblLegendaClick
      OnDblClick = lblLegendaDblClick
      OnMouseDown = PermitirArrastarjanela
      ExplicitTop = 3
    end
  end
  object ActionList1: TActionList
    Left = 508
    Top = 120
    object actMedia_Legenda: TAction
      Category = 'Media'
      Caption = 'Legenda'
      Hint = 'Incluir ou remover a legenda para a m'#237'dia selecionada'
      ImageIndex = 9
      OnExecute = actMedia_LegendaExecute
    end
    object actMedia_Ir_Anterior: TAction
      Category = 'Media'
      Caption = 'Anterior'
      Hint = 'Ir para a m'#237'dia anterior'
      ImageIndex = 10
      SecondaryShortCuts.Strings = (
        'Ctrl+Q')
      ShortCut = 16421
      OnExecute = actMedia_Ir_AnteriorExecute
    end
    object actMedia_Ir_Proximo: TAction
      Category = 'Media'
      Caption = 'Pr'#243'ximo'
      Hint = 'Ir para a pr'#243'xima m'#237'dia'
      ImageIndex = 11
      SecondaryShortCuts.Strings = (
        'Ctrl+W')
      ShortCut = 16423
      OnExecute = actMedia_Ir_ProximoExecute
    end
    object actMedia_Proporcional: TAction
      Category = 'Media'
      Caption = 'Propor'#231#227'o'
      Hint = 'Propor'#231#227'o vertial ou horizontal'
      ImageIndex = 7
      OnExecute = actMedia_ProporcionalExecute
    end
    object actMedia_Bordas: TAction
      Category = 'Media'
      Caption = 'Bordas'
      Hint = 
        'Exibe ou oculta as bordas para permitir redimensionar a janela d' +
        'e visualiza'#231#227'o'
      ImageIndex = 16
      ShortCut = 16450
      OnExecute = actMedia_BordasExecute
    end
    object actMedia_Stop: TAction
      Category = 'Media'
      Caption = 'Parar'
      Hint = 'Parar qualquer exibi'#231#227'o em andamento'
      ImageIndex = 12
      ShortCut = 16464
      OnExecute = actMedia_StopExecute
    end
    object ActPrincipal_Hide: TAction
      Category = 'Media'
      Caption = 'Esconder/Mostrar'
      Hint = 'Esconder ou mostrar a janela principal'
      ImageIndex = 8
      SecondaryShortCuts.Strings = (
        'Ctrl+F9'
        'H')
      ShortCut = 16456
      OnExecute = ActPrincipal_HideExecute
    end
  end
end
