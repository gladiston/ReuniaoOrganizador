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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnMouseDown = PermitirArrastarjanela
  PixelsPerInch = 96
  TextHeight = 13
  object lblLegenda: TLabel
    Left = 0
    Top = 359
    Width = 608
    Height = 44
    Cursor = crSizeAll
    Align = alBottom
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
    OnMouseDown = PermitirArrastarjanela
    ExplicitTop = 368
    ExplicitWidth = 852
  end
  object Navegador: TEdgeBrowser
    Left = 0
    Top = 0
    Width = 608
    Height = 359
    Cursor = crHandPoint
    ParentCustomHint = False
    Align = alClient
    TabOrder = 0
    OnFrameNavigationStarting = NavegadorFrameNavigationStarting
    OnFrameNavigationCompleted = NavegadorFrameNavigationCompleted
    ExplicitTop = -6
  end
end
