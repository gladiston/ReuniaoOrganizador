object fmQuero_Resposta: TfmQuero_Resposta
  Left = 0
  Top = 0
  Caption = 'fmQuero_Resposta'
  ClientHeight = 411
  ClientWidth = 624
  Color = clWhite
  Constraints.MaxHeight = 480
  Constraints.MaxWidth = 640
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object lblPrompt: TLabel
    Left = 0
    Top = 0
    Width = 624
    Height = 21
    Align = alTop
    Caption = 'lblPrompt'
    ExplicitWidth = 69
  end
  object memoTexto: TMemo
    Left = 0
    Top = 21
    Width = 624
    Height = 349
    Align = alClient
    BorderStyle = bsNone
    Lines.Strings = (
      'memoTexto')
    TabOrder = 0
    ExplicitLeft = 144
    ExplicitTop = 120
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object Panel1: TPanel
    Left = 0
    Top = 370
    Width = 624
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 376
    object BtnConfirmar: TBitBtn
      Left = 376
      Top = 0
      Width = 248
      Height = 41
      Align = alRight
      Caption = 'Confirmar'
      Default = True
      TabOrder = 0
      OnClick = BtnConfirmarClick
      ExplicitTop = 6
    end
  end
end
