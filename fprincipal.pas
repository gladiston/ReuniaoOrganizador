unit fprincipal;

{
  AcroPDFLib_TLB é um ActiveX importado do AdobeReader instalado no Windows. Por isso,
  só funciona se este programa tiver sido instalado, caso contrário, não abrirá PDFs.
}

interface

uses
  ShellAPI,
  Jpeg, pngimage, GIFImg,
  AcroPDFLib_TLB,
  SHDocVw,
  WinInet,
  ShLwApi,
  // MSHTML,
  ActiveX,
  System.Win.ComObj,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.OleCtrls, Vcl.StdCtrls, System.ImageList, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.Menus;

type
  TfmPrincipal = class(TForm)
    OpenDialog1: TOpenDialog;
    Lista_Arquivos: TListView;
    Paginas: TPageControl;
    TabFigura: TTabSheet;
    TabMedia: TTabSheet;
    TabPDF: TTabSheet;
    Figura: TImage;
    WebBrowser1: TWebBrowser;
    ImageList1: TImageList;
    TrayIcon1: TTrayIcon;
    Menu_Arquivos: TPopupMenu;
    ActionList1: TActionList;
    actArquivos_Adicionar: TAction;
    actArquivos_Remover: TAction;
    actArquivos_MoverPCima: TAction;
    actArquivos_MoverPBaixo: TAction;
    actArquivos_Salvar_Lista: TAction;
    actArquivos_Carregar_Lista: TAction;
    actArquivos_Legenda_Imagem: TAction;
    actCopiarLocalizacaoParaClipboard: TAction;
    actAbrirLocalizacaoParaExplorer: TAction;
    StatusBar1: TStatusBar;
    Timer_TurnOFF_Status: TTimer;
    Adicionarumoumaisarquivoslista1: TMenuItem;
    Copiaralocalizaoparaareadeclipboard1: TMenuItem;
    Localizaroarquivousandooexplroer1: TMenuItem;
    N1: TMenuItem;
    actArquivosRemover1: TMenuItem;
    actArquivosLegendaImagem1: TMenuItem;
    N2: TMenuItem;
    actArquivosMoverPCima1: TMenuItem;
    actArquivosMoverPBaixo1: TMenuItem;
    N3: TMenuItem;
    actArquivosSalvarLista1: TMenuItem;
    Abrirumalistadearquivos1: TMenuItem;
    actParaMidiaAnterior: TAction;
    actParaMidiaPosterior: TAction;
    actMostrarListaOuNao: TAction;
    actAjuda: TAction;
    TabAjuda: TTabSheet;
    ScrollBox1: TScrollBox;
    pnlExplica_Arquivos: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Panel5: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Panel6: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Panel7: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Panel8: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Panel9: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Panel10: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Panel11: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Panel12: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Panel14: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Panel15: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    lblExplicacao: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormResize(Sender: TObject);
    procedure actArquivos_Legenda_ImagemExecute(Sender: TObject);
    procedure actArquivos_Salvar_ListaExecute(Sender: TObject);
    procedure actArquivos_AdicionarExecute(Sender: TObject);
    procedure actArquivos_RemoverExecute(Sender: TObject);
    procedure actArquivos_MoverPCimaExecute(Sender: TObject);
    procedure actArquivos_MoverPBaixoExecute(Sender: TObject);
    procedure actArquivos_Carregar_ListaExecute(Sender: TObject);
    procedure actCopiarLocalizacaoParaClipboardExecute(Sender: TObject);
    procedure actAbrirLocalizacaoParaExplorerExecute(Sender: TObject);
    procedure Timer_TurnOFF_StatusTimer(Sender: TObject);
    procedure Lista_ArquivosSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Lista_ArquivosCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure actParaMidiaPosteriorExecute(Sender: TObject);
    procedure actParaMidiaAnteriorExecute(Sender: TObject);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure WebBrowser1BeforeNavigate2(ASender: TObject;
      const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure WebBrowser1NavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Lista_ArquivosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Lista_ArquivosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Lista_ArquivosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actMostrarListaOuNaoExecute(Sender: TObject);
    procedure PaginasMouseEnter(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FiguraDblClick(Sender: TObject);
    procedure actAjudaExecute(Sender: TObject);
  private
    { Private declarations }
    FWebBrowserComplete: Boolean;
    FMediaAtual: String;
    FConfigFile: String;
    FModificado: Boolean;
    FMenuAberto: Boolean;
    FListaAtual: String;
    FLegendas: TStringList;
    FMeuPDF: TAcroPDF;
    FStatusMsg: String;
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
    function FilePathToURL(const FilePath: string): string;
    function HTML_View(AArquivo: String; AIE: Boolean = false): String;
    procedure WMExitSizeMove(var Message: TMessage); message WM_EXITSIZEMOVE;
    procedure AutoStart(var Message: TMessage); message wm_user;
    //
    procedure SetConfigFile(const Value: String);
    procedure SetLegendas(const Value: TStringList);
    procedure SetListaAtual(const Value: String);
    procedure SetMediaAtual(const Value: String);
    procedure SetMenuAberto(const Value: Boolean);
    procedure SetStatusMsg(const Value: String);
  public
    { Public declarations }
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  published
    property MenuAberto: Boolean read FMenuAberto write SetMenuAberto;
    property Legendas: TStringList read FLegendas write SetLegendas;
    property ConfigFile: String read FConfigFile write SetConfigFile;
    property ListaAtual: String read FListaAtual write SetListaAtual;
    property MediaAtual: String read FMediaAtual write SetMediaAtual;
    property StatusMsg: String read FStatusMsg write SetStatusMsg;
    property WebBrowserComplete: Boolean read FWebBrowserComplete
      write FWebBrowserComplete default false;
    property Modificado: Boolean read FModificado;
    function IsImage(AArquivo: String): Boolean;
    function IsVideo(AArquivo: String): Boolean;
    function IsPDF(AArquivo: String): Boolean;
    function IsFileAcceptable(AArquivo: String): Boolean;
    function Arquivo_Adicionar(AArquivo: String;
      ACanDuplicate: Boolean = false): String;
    function Arquivo_Lista_Salvar(AArquivo: String): String;
    function Arquivo_Lista_Carregar(AArquivo: String): String;
    function Arquivo_Lengenda_Set(AArquivo, ALegenda: String): String;
    procedure ReadConfig;
    procedure WriteConfig;
    procedure Adequar_Figura;
    procedure Adequar_Video;
    procedure Lista_ArquivosAutoWidth;
    procedure SendTrayMessage(ACaption, AText:String);
    //procedure MoverMousePara(Controle:TWinControl);
    procedure MoverMousePara(APosX, APosY:Integer);
  end;

const
  _APP_EXT = '.reuniao';
  _APP_EXT_VIDEO = '|.avi|.mp3|.mp4|';
  _APP_EXT_FIG = '|.bmp|.png|.jpeg|.jpg|';
  _APP_EXT_PDF = '|.pdf|';
  _FWidth_Min = 320;
  _FHeight_Min = 240;
  _FWidth_Max = 852; // 480p = 852×
  _FHeight_Max = 480;


var
  fmPrincipal: TfmPrincipal;

implementation

uses
  IniFiles,
  Math,
  strUtils,
  ClipBrd;


{$R *.dfm}

procedure WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string);
var
  sl: TStringList;
  ms: TMemoryStream;
begin
  WebBrowser.Navigate('about:blank');
  while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

  if Assigned(WebBrowser.Document) then
  begin
    sl := TStringList.Create;
    try
      ms := TMemoryStream.Create;
      try
        sl.Text := HTMLCode;
        sl.SaveToStream(ms);
        ms.Seek(0, 0);
        (WebBrowser.Document as IPersistStreamInit)
          .Load(TStreamAdapter.Create(ms));
      finally
        ms.Free;
      end;
    finally
      sl.Free;
    end;
  end;
end;

function MsgDlg(AMsg: String; ATitle: String; ADlgType: TMsgDlgType;
  AButtons: TMsgDlgButtons; ACod_Ajuda: Integer = 0): TModalResult;
var
  i: Integer;
begin
  With CreateMessageDialog(AMsg, ADlgType, AButtons) Do
    Try
      Caption := ATitle;
      HelpContext := ACod_Ajuda;

      for i := 0 To ComponentCount - 1 Do
        If Components[i] Is TButton Then
          Case (Components[i] As TButton).ModalResult Of
            mrNone:
              (Components[i] As TButton).Caption := '&Ajuda';
            mrAbort:
              (Components[i] As TButton).Caption := 'Abortar';
            mrAll:
              (Components[i] As TButton).Caption := '&Todos';
            mrCancel:
              (Components[i] As TButton).Caption := '&Cancelar';
            mrIgnore:
              (Components[i] As TButton).Caption := '&Ignorar';
            mrNo:
              (Components[i] As TButton).Caption := '&Não';
            mrNoToAll:
              (Components[i] As TButton).Caption := 'Não para todos';
            mrOk:
              (Components[i] As TButton).Caption := '&Ok';
            mrRetry:
              (Components[i] As TButton).Caption := '&Repetir';
            mrYes:
              (Components[i] As TButton).Caption := '&Sim';
            mrYesToAll:
              (Components[i] As TButton).Caption := 'Sim para todos';
    End;

  RESULT := ShowModal;
Finally
  Free;
End;
end;

function VertScrollBarVisible(WindowHandle: THandle): Boolean;
begin
  RESULT := (GetWindowlong(WindowHandle, GWL_STYLE) AND WS_VSCROLL) <> 0
end;

procedure TfmPrincipal.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := Params.Style or WS_THICKFRAME;
end;

procedure TfmPrincipal.actAbrirLocalizacaoParaExplorerExecute(Sender: TObject);
var
  sArquivo: String;
  sArquivoCaption: String;
  ItemAtual: TListItem;
  sys_last_error: String;
begin
  sys_last_error := '';
  if Lista_Arquivos.ItemIndex < 0 then
    sys_last_error := 'Selecione um arquivo para executar esta operação.';
  if sys_last_error = '' then
  begin
    ItemAtual := Lista_Arquivos.Items[Lista_Arquivos.ItemIndex];
    sArquivoCaption := ItemAtual.Caption;
    sArquivo := ItemAtual.SubItems[0];
    if not FileExists(sArquivo) then
    begin
      sys_last_error := 'Arquivo não encontrado: ' + sArquivo;
    end;
  end;

  if (sys_last_error = '') then
  begin
    // ShellExecute(0, nil, 'explorer.exe', '/select,C:\WINDOWS\explorer.exe', nil, SW_SHOWNORMAL)
    ShellExecute(0, nil, 'explorer.exe', pWideChar('/select,' + sArquivo), nil,
      SW_SHOWNORMAL);
    StatusMsg := 'A pasta de ' + sArquivoCaption +
      ' foi aberta e o arquivo selecionado.';
  end;

  if sys_last_error <> '' then
  begin
    StatusMsg := sys_last_error;
  end;

end;

procedure TfmPrincipal.actAjudaExecute(Sender: TObject);
const
  _explicacao=
    'Arraste ou use o mouse para adicionar arquivos a lista. '+
    'São permitidos arquivos de imagem, vídeos ou PDFs. '+
    'O painel de arquivos é ocultado automaticamente quando alguma mídia é '+
    'exibida, para exibir o painel novamente apenas aponte o mouse '+
    'para o extremo esquerdo desta janela. '+
    'Para maior produtividade use as teclas de atalho:';

var
  Button:TButton;
begin
  Paginas.ActivePage:=TabAjuda;
  lblExplicacao.Caption:=_explicacao;
  MenuAberto:=false;
  //SetCursorPos(lblExplicacao.Left+lblExplicacao.Width, lblExplicacao.Top);
  //MoverMousePara(0, lblExplicacao.Top+lblExplicacao.Height);
  {Button:=TButton.Create(Self);
  Button.Parent:=Self;
  Button.Align:=alLeft;
  Button.Width:=10;
  Button.Caption:=' ';
  MoverMousePara(Button);
  Button.Free;}

end;

procedure TfmPrincipal.actArquivos_AdicionarExecute(Sender: TObject);
var
  sArquivo: String;
  i: Integer;
  sListaParaAbrir: String;
begin
  // adicionando arquivos
  sListaParaAbrir := StringReplace(_APP_EXT_VIDEO + _APP_EXT_FIG + _APP_EXT_PDF,
    '|', ';*', [rfReplaceAll]);
  if LeftStr(sListaParaAbrir, 1) = ';' then
    while LeftStr(sListaParaAbrir, 1) = ';' do
      sListaParaAbrir := RightStr(sListaParaAbrir, Length(sListaParaAbrir) - 1);
  if RightStr(sListaParaAbrir, 1) = '*' then
    while RightStr(sListaParaAbrir, 1) = '*' do
      sListaParaAbrir := LeftStr(sListaParaAbrir, Length(sListaParaAbrir) - 1);
  if RightStr(sListaParaAbrir, 1) = ';' then
    while RightStr(sListaParaAbrir, 1) = ';' do
      sListaParaAbrir := LeftStr(sListaParaAbrir, Length(sListaParaAbrir) - 1);
  try
    OpenDialog1.Filter := 'Arquivos suportados|' + sListaParaAbrir;
    OpenDialog1.FileName := FMediaAtual;
    OpenDialog1.Options := [TOpenOption.ofHideReadOnly,
      TOpenOption.ofAllowMultiSelect, TOpenOption.ofEnableSizing];
    if OpenDialog1.Execute() then
    begin
      for i := 0 to OpenDialog1.Files.Count - 1 do
      begin
        sArquivo := OpenDialog1.FileName[i];
        if IsFileAcceptable(sArquivo) then
          Arquivo_Adicionar(sArquivo);
      end;
    end;

  finally
  end;

end;

procedure TfmPrincipal.actArquivos_Carregar_ListaExecute(Sender: TObject);
begin
  // Carregar lista
  OpenDialog1.Filter := 'Lista de reuniões|*' + _APP_EXT;
  OpenDialog1.FileName := ListaAtual;
  if OpenDialog1.Execute() then
  begin
    if FileExists(OpenDialog1.FileName) then
    begin
      ListaAtual := OpenDialog1.FileName;
    end;
  end;
end;

procedure TfmPrincipal.actArquivos_Legenda_ImagemExecute(Sender: TObject);
var
  sArquivoCaption: String;
  sArquivo: String;
  sLegenda: String;
  ItemAtual: TListItem;
begin
  if Lista_Arquivos.ItemIndex >= 0 then
  begin
    ItemAtual := Lista_Arquivos.Items[Lista_Arquivos.ItemIndex];
    sArquivoCaption := ItemAtual.Caption;
    sArquivo := ItemAtual.SubItems[0];
    sLegenda := FLegendas.Values[sArquivo];
    if InputQuery('Qual a legenda para a imagem "' + sArquivo + '"?',
      'Legenda:', sLegenda) then
    begin
      sLegenda := Trim(sLegenda);
      if sLegenda <> '' then
      begin
        if not SameText(FLegendas.Values[sArquivo], sLegenda) then
        begin
          Arquivo_Lengenda_Set(sArquivo, sLegenda);
          FModificado := true;
        end;
      end;
    end;
  end;

end;

procedure TfmPrincipal.actArquivos_MoverPBaixoExecute(Sender: TObject);
var
  i: Integer;
  ItemPosterior: String;
  ItemAtual: String;
begin
  // mover para baixo
  i := Lista_Arquivos.ItemIndex;
  if i < Pred(Lista_Arquivos.Items.Count) then
  begin
    try
      ItemPosterior := Lista_Arquivos.Items[i + 1].SubItems[0];
      ItemAtual := Lista_Arquivos.Items[i].SubItems[0];
      Lista_Arquivos.Items[i + 1].Caption := ExtractFileName(ItemAtual);
      Lista_Arquivos.Items[i + 1].SubItems[0] := ItemAtual;
      Lista_Arquivos.Items[i].Caption := ExtractFileName(ItemPosterior);
      Lista_Arquivos.Items[i].SubItems[0] := ItemPosterior;
      Lista_Arquivos.ItemIndex := i + 1;
      FModificado := true;
      StatusMsg :=
        'Dica: Você pode usar as teclas Ctrl+ins para incluir ou Ctrl+DEL para remover arquivos da lista.';
    finally

    end;
  end;
end;

procedure TfmPrincipal.actArquivos_MoverPCimaExecute(Sender: TObject);
var
  i: Integer;
  ItemAnterior: String;
  ItemAtual: String;
begin
  // mover para cima
  i := Lista_Arquivos.ItemIndex;
  if i > 0 then
  begin
    try
      ItemAnterior := Lista_Arquivos.Items[i - 1].SubItems[0];
      ItemAtual := Lista_Arquivos.Items[i].SubItems[0];
      Lista_Arquivos.Items[i - 1].Caption := ExtractFileName(ItemAtual);
      Lista_Arquivos.Items[i - 1].SubItems[0] := ItemAtual;
      Lista_Arquivos.Items[i].Caption := ExtractFileName(ItemAnterior);
      Lista_Arquivos.Items[i].SubItems[0] := ItemAnterior;
      Lista_Arquivos.ItemIndex := i - 1;
      FModificado := true;
      StatusMsg :=
        'Dica: Você pode usar as teclas Ctrl+ins para incluir ou Ctrl+DEL para remover arquivos da lista.';
    finally

    end;
  end;

end;

procedure TfmPrincipal.actArquivos_RemoverExecute(Sender: TObject);
var
  i: Integer;
  sArquivoCaption: String;
  ItemAtual: TListItem;
begin
  // Remover
  i := Lista_Arquivos.ItemIndex;
  if i >= 0 then
  begin
    ItemAtual := Lista_Arquivos.Items[i];
    sArquivoCaption := ItemAtual.Caption;
    if SameText(MediaAtual, sArquivoCaption) then
    begin
      Figura.Picture := nil;
    end;
    try
      Lista_Arquivos.DeleteSelected;
      StatusMsg := 'Media excluída: ' + sArquivoCaption;
      FModificado := true;
      if i <= Pred(Lista_Arquivos.Items.Count) then
      begin
        Lista_Arquivos.ItemIndex := i;
      end
      else
      begin
        if i - 1 <= Pred(Lista_Arquivos.Items.Count) then
          Lista_Arquivos.ItemIndex := i - 1;
      end;
    finally

    end;

  end;
end;

procedure TfmPrincipal.actArquivos_Salvar_ListaExecute(Sender: TObject);
begin
  // salvar lista atual
  Arquivo_Lista_Salvar(ListaAtual);
end;

procedure TfmPrincipal.actCopiarLocalizacaoParaClipboardExecute
  (Sender: TObject);
var
  sArquivo: String;
  sExt: String;
  bSeVideo: Boolean;
  sys_last_error: String;
  sMsg: String;
begin
  sys_last_error := '';
  bSeVideo := false;
  if Lista_Arquivos.ItemIndex < 0 then
    sys_last_error := 'Nenhum arquivo selecionado!';

  if sys_last_error = '' then
  begin
    sArquivo := Lista_Arquivos.Items[Lista_Arquivos.ItemIndex].SubItems[0];
    sExt := ExtractFileExt(sArquivo);
    bSeVideo := ContainsText(_APP_EXT_VIDEO, sExt);
    sMsg := '';
    if not FileExists(sArquivo) then
    begin
      sys_last_error := 'Arquivo não encontrado: ' + sLineBreak + sArquivo;
    end;
  end;

  if (sys_last_error = '') then
  begin
    try
      Clipboard.AsText := sArquivo;
    except
      on e: exception do
        sys_last_error := e.Message;
    end;
  end;

  if (sys_last_error = '') then
  begin
    try
      sMsg := ExtractFileName(sArquivo) +
        ' foi copiado para clipboard, agora dê ctrl+v ' +
        'na jenela de seleção de arquivo.';
      StatusMsg := sMsg;
      if (actCopiarLocalizacaoParaClipboard.Tag <= 0) then
        SendTrayMessage(ExtractFileName(sArquivo), sMsg);
      actCopiarLocalizacaoParaClipboard.Tag := 1;
    finally

    end;
  end
  else
  begin
    StatusMsg := sys_last_error;
  end;

end;

procedure TfmPrincipal.actMostrarListaOuNaoExecute(Sender: TObject);
begin
  MenuAberto:=(not MenuAberto);
end;

procedure TfmPrincipal.actParaMidiaAnteriorExecute(Sender: TObject);
var
  sArquivoCaption: String;
  sArquivo: String;
  ItemAtual: TListItem;
begin
  if Lista_Arquivos.ItemIndex >= 0 then
  begin
    Lista_Arquivos.ItemIndex := Lista_Arquivos.ItemIndex - 1;
    ItemAtual := Lista_Arquivos.Selected;
    sArquivoCaption := ItemAtual.Caption;
    sArquivo := ItemAtual.SubItems[0];
    MediaAtual := sArquivo;
  end;
end;

procedure TfmPrincipal.actParaMidiaPosteriorExecute(Sender: TObject);
var
  sArquivoCaption: String;
  sArquivo: String;
  ItemAtual: TListItem;
begin
  if Lista_Arquivos.ItemIndex >= 0 then
  begin
    if Lista_Arquivos.ItemIndex < Pred(Lista_Arquivos.Items.Count) then
    begin
      Lista_Arquivos.ItemIndex := Lista_Arquivos.ItemIndex + 1;
      ItemAtual := Lista_Arquivos.Selected;
      sArquivoCaption := ItemAtual.Caption;
      sArquivo := ItemAtual.SubItems[0];
      MediaAtual := sArquivo;
    end;
  end;
end;

function TfmPrincipal.Arquivo_Adicionar(AArquivo: String;
  ACanDuplicate: Boolean): String;
var
  bSePDF: Boolean;
  bSeVideo: Boolean;
  bSeFigura: Boolean;
  bElegivel: Boolean;
  i: Integer;
  sCurArquivo: String;
  Item: TListItem;
begin
  RESULT := '';
  if FileExists(AArquivo) then
  begin
    bElegivel := true;
    //Lista_Arquivos.Items.BeginUpdate;
    if not ACanDuplicate then
    begin
      i := 0;
      while (i <= Pred(Lista_Arquivos.Items.Count)) and (bElegivel) do
      begin
        // sCurArquivo:=Lista_Arquivos.Items[i].Data['ARQUIVO'].AsString;
        sCurArquivo := Lista_Arquivos.Items[i].SubItems[0];
        if (SameText(sCurArquivo, AArquivo)) then
          bElegivel := false;
        Inc(i);
      end;
    end;
    if bElegivel then
    begin
      try
        Item := Lista_Arquivos.Items.Add;
        Item.Caption := ExtractFileName(AArquivo);
        // Item.Data['ARQUIVO'] := AArquivo;
        Item.SubItems.Add(AArquivo);
        Arquivo_Lengenda_Set(Item.Caption, FLegendas.Values[Item.Caption]);
        // Item.Detail:=AArquivo;
        bSePDF := IsPDF(AArquivo);
        bSeVideo := IsVideo(AArquivo);
        bSeFigura := IsImage(AArquivo);
        if bSePDF then
          Item.ImageIndex := 17
        else if bSeVideo then
          Item.ImageIndex := 18
        else
          Item.ImageIndex := -1; // 19;
        FModificado := true;
      except
        on e: exception do
          RESULT := e.Message;

      end;
    end;
    //Lista_Arquivos.Items.EndUpdate;
  end;

end;

function TfmPrincipal.Arquivo_Lengenda_Set(AArquivo, ALegenda: String): String;
var
  sLegendaAutoName: String;
  i: Integer;
  function RemoverPadroesDeFinalDeArquivo(AValue: String): String;
  var
    ii: Integer;
    iiPos: Integer;
    ssPadrao: String;
    arrayEndOfWords: array of string;
  begin
    RESULT := AValue;
    arrayEndOfWords := ['r1080', '1080', 'r720', '720', 'r480', '480', 'r540',
      '540', 'r234', '234', 'r360', '360', 'r240', '240'];
    for ii := Low(arrayEndOfWords) to High(arrayEndOfWords) do
    begin
      ssPadrao := arrayEndOfWords[ii];
      iiPos := Pos(ssPadrao, RESULT);
      if iiPos > 0 then
        RESULT := LeftStr(RESULT, iiPos - 1);
    end;
  end;

begin
  ALegenda := Trim(ALegenda);
  if (ALegenda = '') then
    ALegenda := ChangeFileExt(ExtractFileName(AArquivo), '');

  sLegendaAutoName := ChangeFileExt(ExtractFileName(AArquivo), '');

  if SameText(ALegenda, sLegendaAutoName) then
  begin
    // a legenda foi automatica e não definida pelo usuario
    // então posso mudar. as vezes deixam a qualidade da resolução ao final
    // do nome do arquivo então retiramos
    ALegenda := RemoverPadroesDeFinalDeArquivo(ALegenda);
    ALegenda := StringReplace(ALegenda, '_', ' ', [rfReplaceAll]);
    ALegenda := Trim(ALegenda);
  end;
  FLegendas.Values[ExtractFileName(AArquivo)] := ALegenda;
  if SameText(ExtractFileName(MediaAtual),ExtractFileName(AArquivo)) then
    Caption:=ALegenda;
end;

function TfmPrincipal.Arquivo_Lista_Carregar(AArquivo: String): String;
var
  sArquivoNew: String;
  i: Integer;
  L: TStringList;
begin
  RESULT := '';
  L := TStringList.Create;
  if FileExists(AArquivo) then
  begin
    L.LoadFromFile(AArquivo);
    i := 0;
    while (i <= Pred(L.Count)) do
    begin
      sArquivoNew := L[i];
      if (sArquivoNew <> emptyStr) and (FileExists(sArquivoNew)) then
      begin
        try
          Arquivo_Adicionar(sArquivoNew);
        except
          on e: exception do
            RESULT := e.Message;

        end;

      end;
      Inc(i);
    end;
    if Result = emptyStr then
    begin
      FModificado := false;
      Lista_ArquivosAutoWidth;
    end;
  end;
  if Assigned(L) then
    FreeAndNil(L);

end;

function TfmPrincipal.Arquivo_Lista_Salvar(AArquivo: String): String;
var
  i: Integer;
  sArqLegendas: String;
  sCurArquivo: String;
  L: TStringList;
  SaveDialog1: TSaveDialog;
begin
  RESULT := '';
  L := TStringList.Create;
  SaveDialog1 := TSaveDialog.Create(Self);
  if AArquivo = '' then
    AArquivo := ListaAtual;
  SaveDialog1.Filter := 'Lista de tópicos|*' + _APP_EXT;
  SaveDialog1.FileName := AArquivo;
  if SaveDialog1.Execute() then
  begin
    FListaAtual := SaveDialog1.FileName;
    if ExtractFileExt(FListaAtual) = '' then
      FListaAtual := FListaAtual + _APP_EXT;
    if Pos('..' + _APP_EXT, FListaAtual) > 0 then
      FListaAtual := StringReplace(FListaAtual, '..' + _APP_EXT, '.' + _APP_EXT,
        [rfIgnoreCase]);
    for i := 0 to Pred(Lista_Arquivos.Items.Count) do
    begin
      sCurArquivo := Lista_Arquivos.Items[i].SubItems[0];
      L.Add(sCurArquivo);
    end;
    try
      L.SaveToFile(FListaAtual);
      FModificado := false;
      // salvamos as legendas tambem
      sArqLegendas := FListaAtual + '.legendas';
      if FLegendas.Count > 0 then
        FLegendas.SaveToFile(sArqLegendas);
    except
      on e: exception do
        RESULT := e.Message;
    end;
  end;
  if RESULT = emptyStr then
    FModificado := false;
  if Assigned(L) then
    FreeAndNil(L);
  SaveDialog1.Free;

end;

procedure TfmPrincipal.AutoStart(var Message: TMessage);
begin
   actAjudaExecute(nil);
end;

procedure TfmPrincipal.Adequar_Figura;
var
  w, h:Integer;
  pict:TPicture;
begin
  // todo: ajustar o tamanho da janela ao tamanho da figura
  // desde que respeito o limite maximo da janela
  if Assigned(Figura.Picture) then
  begin
    Self.Onresize:=nil;
    if Figura.Picture<>nil then
    begin
      pict:=TPicture.Create;
      try
        pict.LoadFromFile(MediaAtual);
        w:=pict.Width;
        h:=pict.Height;
        if (w>_FWidth_Max) or (h>_FHeight_Max) then
        begin
          w:=_FWidth_Max;
          h:=_FHeight_Max;
        end;
        Self.ClientWidth:=w;
        Self.ClientHeight:=h+Trunc(StatusBar1.Height);

      finally
        pict.Free;
      end;
    end;
    Self.Onresize:=FormResize;
  end;
end;

procedure TfmPrincipal.Adequar_Video;
var
  bIsVerScroll: Boolean;
begin
  if (Visible) and (Active) then
  begin
    repeat
      fmPrincipal.Height := Self.Height + 1;
      bIsVerScroll := VertScrollBarVisible(WebBrowser1.Handle);
      // Self.ClientHandle
      Application.ProcessMessages;
    until (not bIsVerScroll) and (Self.Height < Screen.Height);
  end;
end;

procedure TfmPrincipal.FiguraDblClick(Sender: TObject);
const
  _Mensagem =
   'Quando você dá um duplo clique na imagem ela será exibida proporcional '+
   'ou esticada';
var
  sTitulo:String;
begin
  Figura.Proportional:=(not Figura.Proportional);
  if Figura.Tag<30 then
  begin
    // este aviso é mostrado no maximo 30 vezes
    sTitulo:='A imagem está proporcional';
    if not Figura.Proportional then
      sTitulo:='A imagem foi esticada';
    //SendTrayMessage(sTitulo, _Mensagem);
    StatusMsg:=sTitulo+': '+_Mensagem;
    Figura.Tag:=Figura.Tag+1;
  end;
end;

function TfmPrincipal.FilePathToURL(const FilePath: string): string;
var
  BufferLen: DWORD;
begin
  BufferLen := INTERNET_MAX_URL_LENGTH;
  SetLength(RESULT, BufferLen);
  OleCheck(UrlCreateFromPath(PChar(FilePath), PChar(RESULT), @BufferLen, 0));
  SetLength(RESULT, BufferLen);

end;

procedure TfmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WebBrowser1.ControlInterface._AddRef;
  FMeuPDF.ControlInterface._AddRef;
end;

procedure TfmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
const
  _QUESTAO = 'Deseja salvar antes de sair?' + sLineBreak +
    'A lista foi alterada';
begin
  try
    CanClose := true;
    if FModificado then
    begin
      if MsgDlg(_QUESTAO, 'Deseja salvar antes de sair?', mtConfirmation,
        [mbYes, mbNo]) = mrYes then
      begin
        Arquivo_Lista_Salvar(ListaAtual);
      end;
    end;

    WriteConfig;
    ModalResult := mrClose;
  finally

  end;
end;

procedure TfmPrincipal.FormCreate(Sender: TObject);
var
  i: Integer;
  cmdFileName: String;
  Col: TListColumn;
begin
  Caption := 'Organizador de reunião';
  FLegendas := TStringList.Create;
  FListaAtual := '';
  FMediaAtual := '';
  FModificado := false;
  FConfigFile := ChangeFileExt(ParamStr(0), '.ini');
  FWebBrowserComplete := false;

  cmdFileName := ParamStr(1);
  MenuAberto := true;
  //
  try
    Lista_Arquivos.ColumnClick := false;
    Lista_Arquivos.DragMode := dmManual;
    Lista_Arquivos.FlatScrollBars := true;
    Lista_Arquivos.FullDrag := false;
    Lista_Arquivos.GridLines := false;
    Lista_Arquivos.HideSelection := false;
    Lista_Arquivos.HoverTime := -1;
    Lista_Arquivos.ReadOnly := true;
    Lista_Arquivos.ViewStyle := vsReport;
    Lista_Arquivos.ShowColumnHeaders := false;

    Col := Lista_Arquivos.Columns.Add;
    Col.Caption := 'Media';
    Col.Alignment := taLeftJustify;
    Col.Width := 140;
    Col.AutoSize := true;

    Col := Lista_Arquivos.Columns.Add;
    Col.Caption := 'Arquivo';
    Col.Alignment := taLeftJustify;
    Col.Width := 0;
    StatusMsg := 'Arraste arquivos para cá';
  finally

  end;
  //
  for i := 0 to Pred(Paginas.PageCount) do
  begin
    Paginas.Pages[i].TabVisible := false;
  end;
  Paginas.ActivePageIndex := 0;
  //
  DragAcceptFiles(Self.Handle, true);
  //
  FMeuPDF := TAcroPDF.Create(TabPDF);
  FMeuPDF.Parent := TabPDF;
  FMeuPDF.Align := alClient;
  FMeuPDF.setShowToolbar(false);

  //
  ReadConfig;
  //
  if cmdFileName <> emptyStr then
  begin
    if FileExists(cmdFileName) then
    begin
      ListaAtual := cmdFileName;
    end;
  end;
  //
  Timer_TurnOFF_Status.Enabled := false;
end;

procedure TfmPrincipal.FormShow(Sender: TObject);
begin
  //
  PostMessage(Handle, wm_user, 0, 0);
  //actAjudaExecute(Sender);
end;

procedure TfmPrincipal.FormDestroy(Sender: TObject);
begin
  try
    if Assigned(Figura.Picture) then
      Figura.Picture := nil;
    if Assigned(WebBrowser1) then
      WebBrowser1.Free;
    if Assigned(FMeuPDF) then
      FMeuPDF := nil;

    FLegendas.Free;

    DragAcceptFiles(Self.Handle, false);
  finally

  end;

end;

procedure TfmPrincipal.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  // Permite arrastar a janela sem necessariamente tocar no caption
  if Button = mbLeft then
  begin
    ReleaseCapture;
    Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;

end;

procedure TfmPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  bEstouDentro: Boolean;
  Limite_X: Integer;
begin
  bEstouDentro := false;
  Limite_X := 10;
  if Lista_Arquivos.Visible then
    Limite_X := Lista_Arquivos.Width;
  if (X < 10) then
  begin
    if (Y > 0) and (Y < StatusBar1.Top) then
    begin
      bEstouDentro := true;
    end;
  end;
  if bEstouDentro then
    MenuAberto := true
  else
    MenuAberto := false;
end;

procedure TfmPrincipal.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  try
    Handled := true;
    actParaMidiaPosteriorExecute(Sender);
  finally

  end;
end;

procedure TfmPrincipal.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  try
    Handled := true;
    actParaMidiaAnteriorExecute(Sender);
  finally

  end;
end;

procedure TfmPrincipal.FormResize(Sender: TObject);
var
  bChanged: Boolean;
begin
  // if Paginas.ActivePage=TabFigura then
  /// Adequar_Figura;

  // if Paginas.ActivePage=TabMedia then
  // Adequar_Video;

  { bChanged:=false;
    Self.Onresize:=nil;
    if (Paginas.ActivePage=TabFigura) and (Figura.Picture<>nil) then
    begin
    if Self.Width>_FWidth_Max then
    begin
    //Self.Width:=_FWidth_Max;
    bChanged:=true;
    end;

    if Self.Width<_FWidth_Min then
    begin
    Self.Width:=_FWidth_Min;
    bChanged:=true;
    end;


    if Self.Height>_FHeight_Max then
    begin
    //Self.Height:=_FHeight_Max;
    bChanged:=true;
    end;

    if Self.Height<_FHeight_Min then
    begin
    Self.Height:=_FHeight_Min;
    bChanged:=true;
    end;

    if bChanged then
    begin
    Figura_Adequar;
    end;
    end;
    Self.Onresize:=FormResize;
  }
end;

function TfmPrincipal.HTML_View(AArquivo: String; AIE: Boolean): String;
var
  sUrlPathToMedia: String;
  sMimeExt: String;
  function IE_Video: String;
  begin
    RESULT := RESULT + '<html>' + sLineBreak;
    RESULT := RESULT + '<head>' + sLineBreak;
    RESULT := RESULT + '<meta http-equiv="X-UA-Compatible" content="IE=9" />' +
      sLineBreak;
    RESULT := RESULT + '</head>' + sLineBreak;
    Result:=Result+'<style>'+sLineBreak;
    Result:=Result+'html'+sLineBreak;
    Result:=Result+'{'+sLineBreak;
    Result:=Result+' position:fixed;'+sLineBreak;
    Result:=Result+' overflow:hidden;'+sLineBreak;
    Result:=Result+' -ms-overflow-style: none;'+sLineBreak;
    Result:=Result+'    border:0px;'+sLineBreak;
    Result:=Result+' }</style>'+sLineBreak;

    RESULT := RESULT +
      '  <body style="background-color:black;margin=0px;padding=0px;">' +
      sLineBreak;
    if AArquivo = '' then
    begin
      RESULT := RESULT +
        '<p><h3>Copie o endereço da localização do arquivo para a área de ' +
        'clipboard e depois cole (ctrl+v) na janela de seleção de arquivo desejada.</h3></p>'
        + sLineBreak;
    end
    else
    begin
      if FileExists(AArquivo) then
      begin
        RESULT := RESULT +
          '  <video id=video width=100% autobuffer controls fullscreen="true">'
          + sLineBreak; // controls
        RESULT := RESULT + '  <source src="' + sUrlPathToMedia +
          '" type="video/' + sMimeExt + '">' + sLineBreak;
        RESULT := RESULT +
          '  <object type="video/mp4" data="media_v/video.mp4"  min-width: 100% min-height: 100%">'
          + sLineBreak;
        RESULT := RESULT + '  </object>' + sLineBreak;
        RESULT := RESULT + '  Seu navegador padrão não suporta a tag video.' +
          sLineBreak;
        RESULT := RESULT + '  </video>' + sLineBreak;
      end
      else
      begin
        RESULT := RESULT + '<p><h3>Arquivo não encontrado:</h3></p> ' +
          sLineBreak;
        RESULT := RESULT + '<p>' + AArquivo + '</p> ' + sLineBreak;
        RESULT := RESULT + '<p>' + sUrlPathToMedia + '</p> ' + sLineBreak;
      end;
    end;
    RESULT := RESULT + '  </body>' + sLineBreak;
    RESULT := RESULT + '</html>' + sLineBreak;
  end;

begin
  sUrlPathToMedia := FilePathToURL(AArquivo);
  sMimeExt := ExtractFileExt(AArquivo);
  if LeftStr(sMimeExt, 1) = '.' then
    sMimeExt := RightStr(sMimeExt, Length(sMimeExt) - 1);

  if IsVideo(AArquivo) and (AIE) then
  begin
    RESULT := IE_Video;
  end
  else
  begin
    RESULT := RESULT + '<head>' + sLineBreak;
    RESULT := RESULT + '</head>' + sLineBreak;
    RESULT := RESULT +
      '<body style="background-color:black;margin=0px;padding=0px;">' +
      sLineBreak;
    RESULT := RESULT +
      '  <video id=video width="100%" autoplay="true" controls="false" fullscreen="true">'
      + sLineBreak; // controls
    RESULT := RESULT + '  <source src="' + sUrlPathToMedia + '" type="video/' +
      sMimeExt + '">' + sLineBreak;
    RESULT := RESULT + '  Seu navegador padrão não suporta a tag video.' +
      sLineBreak;
    RESULT := RESULT + '  </video>' + sLineBreak;
    RESULT := RESULT + '</body>' + sLineBreak;
  end;

end;

function TfmPrincipal.IsFileAcceptable(AArquivo: String): Boolean;
begin
  RESULT := false;
  if (not RESULT) then
    RESULT := IsImage(AArquivo);
  if (not RESULT) then
    RESULT := IsVideo(AArquivo);
  if (not RESULT) then
    RESULT := IsPDF(AArquivo);
end;

function TfmPrincipal.IsImage(AArquivo: String): Boolean;
var
  sExt: String;
begin
  sExt := ExtractFileExt(AArquivo);
  RESULT := ContainsText(_APP_EXT_FIG, sExt);

end;

function TfmPrincipal.IsPDF(AArquivo: String): Boolean;
var
  sExt: String;
begin
  sExt := ExtractFileExt(AArquivo);
  RESULT := ContainsText(_APP_EXT_PDF, sExt);

end;

function TfmPrincipal.IsVideo(AArquivo: String): Boolean;
var
  sExt: String;
begin
  sExt := ExtractFileExt(AArquivo);
  RESULT := ContainsText(_APP_EXT_VIDEO, sExt);

end;

procedure TfmPrincipal.Lista_ArquivosAutoWidth;
const
  _offset=22;
var
  i:Integer;
  w:Integer;
  sCaption:String;
begin
    // todo: A largura do painel deve ser automatica em conformidade com
    //   o tamanho dos nomes dos arquivos e não tem um valor fixo
    // o calculo abaixo está errado, estou compensando acrescentando mais
    // caracteres ao sCaption, mas preciso descobrir uma maneira melhor
    try
      for i:=0 to Pred(Lista_Arquivos.Items.Count) do begin
        sCaption:=Lista_Arquivos.Items[i].Caption;
        w := Lista_Arquivos.Canvas.TextWidth(sCaption)+_offset;
        if w>Lista_Arquivos.Width then begin
          Lista_Arquivos.Width:=w;
        end;
      end;
    finally

    end;

end;

procedure TfmPrincipal.Lista_ArquivosCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  with Lista_Arquivos.Canvas.Brush do
  begin
    if Item.Index mod 2 = 0 then
      Color := $FFFFFF
    else
      Color := $F6F4F4;
  end;
end;

procedure TfmPrincipal.Lista_ArquivosDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  DragItem, DropItem, CurrentItem, NextItem: TListItem;
begin
  {if Sender = Source then
    with TListView(Sender) do
    begin
      DropItem    := GetItemAt(X, Y);
      CurrentItem := Selected;
      while CurrentItem <> nil do
      begin
        NextItem := GetNextItem(CurrentItem, SdAll, [IsSelected]);
        if DropItem = nil then DragItem := Items.Add
        else
          DragItem := Items.Insert(DropItem.Index);
        DragItem.Assign(CurrentItem);
        CurrentItem.Free;
        CurrentItem := NextItem;
      end;
    end;}

end;

procedure TfmPrincipal.Lista_ArquivosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
//  Accept := (Source = Lista_Arquivos);
end;

procedure TfmPrincipal.Lista_ArquivosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //if (Sender = Lista_Arquivos) and (Button = mbLeft) then
  //   Lista_Arquivos.BeginDrag(False); // inicia a operacao
end;

procedure TfmPrincipal.Lista_ArquivosSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
var
  sArquivoCaption: String;
  sArquivo: String;
begin
  if (Selected) and (Lista_Arquivos.Focused) then
  begin
    sArquivoCaption := Item.Caption;
    sArquivo := Item.SubItems[0];
    MediaAtual := sArquivo;
  end;
end;

procedure TfmPrincipal.MoverMousePara(APosX, APosY:Integer);
var
  psmouse:Tpoint;
  pscontrole:Tpoint;
  largura:integer;
  altura:Integer;
  sair:Boolean;
begin
  sair:=false;
  psmouse:=mouse.CursorPos;
  while not sair do
  begin
    sair:=true;
    if psmouse.X> (APosX) then
    begin
      psmouse.X:=psmouse.X-1;
      mouse.CursorPos:=psmouse;
      sair:=false;
    end;
    if psmouse.X<(APosX) then
    begin
      psmouse.X:=psmouse.X+1;
      mouse.CursorPos:=psmouse;
      sair:=false;
    end;
    //
    if psmouse.Y> (APosY) then
    begin
      psmouse.Y:=psmouse.Y-1;
      mouse.CursorPos:=psmouse;
      sair:=false;
    end;
    if psmouse.Y<(APosY) then
    begin
      psmouse.Y:=psmouse.Y+1;
      mouse.CursorPos:=psmouse;
      sair:=false;
    end;
    sleep(10);
    Application.ProcessMessages;
  end;
end;
{
procedure TfmPrincipal.MoverMousePara(Controle: TWinControl);
var
  psmouse:Tpoint;
  pscontrole:Tpoint;
  largura:integer;
  altura:Integer;
  sair:Boolean;
begin
  sair:=false;
  psmouse:=mouse.CursorPos;
  pscontrole:=controle.ClientOrigin;
  largura:=controle.Width div 2;
  altura:=controle.Height div 2;
  while not sair do
  begin
    sair:=true;
    if psmouse.X> (pscontrole.x + largura) then
    begin
      psmouse.X:=psmouse.X-1;
      mouse.CursorPos:=psmouse;
      sair:=false;
    end;
    if psmouse.X<(pscontrole.X+largura) then
    begin
      psmouse.X:=psmouse.X+1;
      mouse.CursorPos:=psmouse;
      sair:=false;
    end;
    //
    if psmouse.Y> (pscontrole.Y + altura) then
    begin
      psmouse.Y:=psmouse.Y-1;
      mouse.CursorPos:=psmouse;
      sair:=false;
    end;
    if psmouse.Y<(pscontrole.Y+altura) then
    begin
      psmouse.Y:=psmouse.Y+1;
      mouse.CursorPos:=psmouse;
      sair:=false;
    end;
    sleep(10);
    Application.ProcessMessages;
  end;
end;
}

procedure TfmPrincipal.PaginasMouseEnter(Sender: TObject);
begin
  if MenuAberto then
    MenuAberto:=false;
end;

procedure TfmPrincipal.ReadConfig;
var
  MyIni: TIniFile;
  sListaAtual: String;
  sMediaAtual: String;
begin
  try
    MyIni := TIniFile.Create(FConfigFile);

    sListaAtual := MyIni.ReadString('Config', 'ListaAtual', FListaAtual);
    sMediaAtual := MyIni.ReadString('Config', 'MediaAtual', FMediaAtual);
    Top := MyIni.ReadInteger('Config', 'Top', Self.Top);
    Left := MyIni.ReadInteger('Config', 'Left', Self.Left);
    Width := MyIni.ReadInteger('Config', 'Width', Self.Width);
    Height := MyIni.ReadInteger('Config', 'Height', Self.Height);
    Figura.Proportional:=MyIni.ReadBool('Config','Figura.Proportional', Figura.Proportional);
    if FileExists(sListaAtual) then
    begin
      ListaAtual := sListaAtual;
      if FileExists(sMediaAtual) then
      begin
        MediaAtual := sMediaAtual;
      end;
    end;

  finally
    if Assigned(MyIni) then
      FreeAndNil(MyIni);
  end;

end;

procedure TfmPrincipal.WriteConfig;
var
  MyIni: TIniFile;
begin
  try
    MyIni := TIniFile.Create(FConfigFile);
    MyIni.WriteString('Config', 'ListaAtual', FListaAtual);
    MyIni.WriteString('Config', 'MediaAtual', FMediaAtual);
    MyIni.WriteInteger('Config', 'Top', Self.Top);
    MyIni.WriteInteger('Config', 'Left', Self.Left);
    MyIni.WriteInteger('Config', 'Width', Self.Width);
    MyIni.WriteInteger('Config', 'Height', Self.Height);
    MyIni.WriteBool('Config','Figura.Proportional', Figura.Proportional);
  finally
    if Assigned(MyIni) then
      FreeAndNil(MyIni);
  end;

end;

procedure TfmPrincipal.WebBrowser1BeforeNavigate2(ASender: TObject;
  const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
begin
  FWebBrowserComplete := false;
end;

procedure TfmPrincipal.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  FWebBrowserComplete := true;
end;

procedure TfmPrincipal.WebBrowser1NavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  FWebBrowserComplete := true;
end;

procedure TfmPrincipal.WMDropFiles(var Msg: TWMDropFiles);
var
  DropH: HDROP; // drop handle
  DroppedFileCount: Integer; // number of files dropped
  FileNameLength: Integer; // length of a dropped file name
  FileName: string; // a dropped file name
  i: Integer; // loops thru all dropped files
  iFound: Integer;
  DropPoint: TPoint; // point where files dropped
begin
  inherited;
  // Store drop handle from the message
  DropH := Msg.Drop;
  try
    // Get count of files dropped
    DroppedFileCount := DragQueryFile(DropH, $FFFFFFFF, nil, 0);
    // Get name of each file dropped and process it
    for i := 0 to Pred(DroppedFileCount) do
    begin
      // get length of file name
      FileNameLength := DragQueryFile(DropH, i, nil, 0);
      // create string large enough to store file
      SetLength(FileName, FileNameLength);
      // get the file name
      DragQueryFile(DropH, i, PChar(FileName), FileNameLength + 1);
      // process file name (application specific)
      // ... processing code here
      // iFound:=Lista.Items.IndexOf(FileName);
      if IsFileAcceptable(FileName) then
      begin
        // Lista.Items.Add(FileName);
        Arquivo_Adicionar(FileName);
        FModificado := true;
        StatusMsg := 'Você pode usar Ctrl+Seta para mudar a sequencia.';
        if Lista_Arquivos.Items.Count > 2 then
        begin
          StatusMsg := 'Dica: Use Ctrl+S para salvar a lista atual.';
        end;
      end
      else
      begin
        StatusMsg := 'Não é um formato aceitável "' +
          ExtractFileExt(FileName) + '".';
      end;
    end;
    // Optional: Get point at which files were dropped
    DragQueryPoint(DropH, DropPoint);
    // ... do something with drop point here
  finally
    // Tidy up - release the drop handle
    // don't use DropH again after this
    DragFinish(DropH);
  end;
  // Note we handled message
  Msg.RESULT := 0;

end;

procedure TfmPrincipal.WMExitSizeMove(var Message: TMessage);
begin
  if Paginas.ActivePage = TabMedia then
    Adequar_Video;

end;




procedure TfmPrincipal.SendTrayMessage(ACaption, AText: String);
begin
  try
    TrayIcon1.BalloonTitle := ACaption;
    TrayIcon1.BalloonHint := AText;
    TrayIcon1.BalloonFlags := bfInfo;
    TrayIcon1.Visible := true;
    TrayIcon1.Animate := true;
    TrayIcon1.ShowBalloonHint;
  finally

  end;
end;

procedure TfmPrincipal.SetConfigFile(const Value: String);
begin
  FConfigFile := Value;
end;

procedure TfmPrincipal.SetLegendas(const Value: TStringList);
begin
  FLegendas := Value;
end;

procedure TfmPrincipal.SetListaAtual(const Value: String);
var
  S: String;
begin
  if FListaAtual <> Value then
  begin
    if FileExists(Value) then
    begin
      S := Arquivo_Lista_Carregar(Value);
      if S = emptyStr then
      begin
        FListaAtual := Value;
      end;
    end;
  end;
end;

procedure TfmPrincipal.SetMediaAtual(const Value: String);
var
  bDone: Boolean;
  iFound: Integer;
  sHTMLCode: String;
  function FoundCaption(ACaption: String): Integer;
  var
    ii: Integer;
  begin
    RESULT := -1;
    ii := 0;
    while (ii <= Pred(Lista_Arquivos.Items.Count)) and (RESULT < 0) do
    begin
      if SameText(ACaption, Lista_Arquivos.Items[ii].Caption) or
        SameText(ACaption, Lista_Arquivos.Items[ii].SubItems[0]) then
        RESULT := ii;
      Inc(ii);
      Application.ProcessMessages;
    end;

  end;

begin
  if FMediaAtual <> Value then
  begin
    bDone := false;
    // Lista_Arquivos.OnSelectItem:=nil; //Lista_ArquivosSelectItem ou nil
    try
      if Paginas.ActivePage <> TabMedia then
      begin
        WebBrowser1.Stop;
        WebBrowser1.Navigate('blank://');
      end;
    finally

    end;
    iFound := FoundCaption(Value);
    if iFound >= 0 then
    begin
      if IsImage(Value) then
      begin
        TabFigura.Caption := Value;
        Paginas.ActivePage := TabFigura;
        try
          Figura.Picture.LoadFromFile(Value);
          // Adequar_Figura;
          bDone := true;
        finally

        end;
      end;
      if IsVideo(Value) then
      begin
        TabMedia.Caption := Value;
        Paginas.ActivePage := TabMedia;
        try
          sHTMLCode := HTML_View(Value, true);
          WebBrowser1.Navigate('blank://');
          WBLoadHTML(WebBrowser1, sHTMLCode);
          // WebBrowser1.LoadFromStrings(sHTMLCode, '');
          FWebBrowserComplete := false;
          repeat
            Application.ProcessMessages
          until FWebBrowserComplete;
          Adequar_Video;
          bDone := true;
        finally

        end;
      end;
      if IsPDF(Value) then
      begin
        TabPDF.Caption := Value;
        Paginas.ActivePage := TabPDF;
        // sHTMLCode:=HTML_View(Value, false);
        // WebBrowser1.LoadFromStrings(sHTMLCode, '');
        FMeuPDF.LoadFile(Value);
        FMeuPDF.Show;
        bDone := true;
      end;
      if bDone then
      begin
        FMediaAtual := Value;
        // Lista_Arquivos.ItemIndex:=iFound;
        Self.Caption := FLegendas.Values[ExtractFileName(FMediaAtual)];
      end;
    end;
    // Lista_Arquivos.OnSelectItem:=Lista_ArquivosSelectItem; //Lista_ArquivosSelectItem ou nil
  end;
end;

procedure TfmPrincipal.SetMenuAberto(const Value: Boolean);
begin
  FMenuAberto := Value;
  if FMenuAberto then
  begin
    Lista_Arquivos.Visible := true;
    Lista_ArquivosAutoWidth;
  end
  else
  begin
    Lista_Arquivos.Visible := false;
    Timer_TurnOFF_Status.Enabled:=false;
    StatusBar1.Visible:=false;
  end;
end;

procedure TfmPrincipal.SetStatusMsg(const Value: String);
begin
  if FStatusMsg <> Value then
  begin
    FStatusMsg := Value;
    StatusBar1.Panels[0].Text := FStatusMsg;
    StatusBar1.Visible := (FStatusMsg <> '');
    Timer_TurnOFF_Status.Enabled := true;
  end;
end;

procedure TfmPrincipal.Timer_TurnOFF_StatusTimer(Sender: TObject);
begin
  Timer_TurnOFF_Status.Enabled := false;
  StatusMsg := '';
end;

end.
