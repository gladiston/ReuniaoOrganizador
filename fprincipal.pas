unit fprincipal;

interface

{
  AcroPDFLib_TLB,
  SHDocVw,
  // MSHTML,
  ActiveX,

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
}
uses
  Jpeg, pngimage, GIFImg,
  System.Win.ComObj,
  Winapi.ShellAPI,
  WinInet,
  Winapi.ShLwApi,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus, Vcl.BaseImageCollection,
  Vcl.ImageCollection;

type
  TfmPrincipal = class(TForm)
    pnl_Area_Controles: TPanel;
    ActionList1: TActionList;
    pnl_Arquivos: TPanel;
    BtnactArquivo_MoverPBaixo: TSpeedButton;
    BtnactArquivo_Remover: TSpeedButton;
    BtnactArquivo_Adicionar: TSpeedButton;
    BtnactArquivo_MoverPCima: TSpeedButton;
    BtnactArquivo_Caminho_Abrir: TSpeedButton;
    BtnactArquivo_Caminho_Clipboard: TSpeedButton;
    pnl_Lista: TPanel;
    actLista_Carregar: TAction;
    actlista_Salvar: TAction;
    mnuLista: TPopupMenu;
    Carregarlista1: TMenuItem;
    N1: TMenuItem;
    Salvarlista1: TMenuItem;
    BtnMenuLista: TSpeedButton;
    actArquivo_Adicionar: TAction;
    actArquivo_Remover: TAction;
    actArquivo_MoverPCima: TAction;
    actArquivo_MoverPBaixo: TAction;
    actArquivo_Caminho_Abrir: TAction;
    actArquivo_Caminho_Clipboard: TAction;
    actMedia_Legenda: TAction;
    actMedia_Ir_Anterior: TAction;
    actMedia_Ir_Proximo: TAction;
    actMedia_Proporcional: TAction;
    actMedia_Bordas: TAction;
    ImageList1: TImageList;
    BtnactMedia_Bordas: TSpeedButton;
    BtnactMedia_Legenda: TSpeedButton;
    pnlMedias: TPanel;
    BtnactMedia_Ir_Anterior: TSpeedButton;
    BtnactMedia_Ir_Proximo: TSpeedButton;
    actMedia_Stop: TAction;
    BtnactMedia_Stop: TSpeedButton;
    Bevel1: TBevel;
    pnl_Area_Lista: TPanel;
    Lista_Arquivos: TListView;
    lblStatus: TLabel;
    actMensagem_Descanso: TAction;
    Mensagemdedescansoouboasvindas1: TMenuItem;
    BalloonHint1: TBalloonHint;
    Bevel2: TBevel;
    Bevel3: TBevel;
    BtnactMedia_Proporcional: TSpeedButton;
    ActPrincipal_Hide: TAction;
    BtnActPrincipal_Hide: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actLista_CarregarExecute(Sender: TObject);
    procedure actlista_SalvarExecute(Sender: TObject);
    procedure actArquivo_AdicionarExecute(Sender: TObject);
    procedure Lista_ArquivosSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure actMedia_BordasExecute(Sender: TObject);
    procedure actMedia_ProporcionalExecute(Sender: TObject);
    procedure actMedia_LegendaExecute(Sender: TObject);
    procedure actMedia_Ir_AnteriorExecute(Sender: TObject);
    procedure actMedia_Ir_ProximoExecute(Sender: TObject);
    procedure actArquivo_Caminho_ClipboardExecute(Sender: TObject);
    procedure actArquivo_Caminho_AbrirExecute(Sender: TObject);
    procedure actArquivo_RemoverExecute(Sender: TObject);
    procedure actArquivo_MoverPCimaExecute(Sender: TObject);
    procedure actArquivo_MoverPBaixoExecute(Sender: TObject);
    procedure BtnMenuListaClick(Sender: TObject);
    procedure Lista_ArquivosCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure Lista_ArquivosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Lista_ArquivosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Lista_ArquivosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actMedia_StopExecute(Sender: TObject);
    procedure actMensagem_DescansoExecute(Sender: TObject);
    procedure ActPrincipal_HideExecute(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  private
    { Private declarations }
    FExibir_Legenda: String;
    FConfigFile: String;
    FModificado: Boolean;
    FListaAtual: String;
    FListaAtual_Legendas:String;
    FMediaAtual: String;
    FStatusMsg: String;
    FMediaProporcional_Width: Boolean;
    FMediaLegendasList: TStringList;
    FHello_Message: String;
    FHTML_TempFile: String;
    FFMediaProporcional_Width: Boolean;
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
    function FilePathToURL(const FilePath: string): string;
    procedure SetConfigFile(const Value: String);
    procedure SetListaAtual(const Value: String);
    procedure SetMediaAtual(const Value: String);
    procedure SetStatusMsg(const Value: String);
    procedure SetHello_Message(const Value: String);
    procedure SetFMediaProporcional_Width(const Value: Boolean);
  public
    { Public declarations }
  published
    property ConfigFile: String read FConfigFile write SetConfigFile;
    property ListaAtual: String read FListaAtual write SetListaAtual;
    property MediaAtual: String read FMediaAtual write SetMediaAtual;
    property MediaProporcional_Width: Boolean read FFMediaProporcional_Width write SetFMediaProporcional_Width;
    property MediaLegendasList: TStringList read FMediaLegendasList write FMediaLegendasList;
    property StatusMsg: String read FStatusMsg write SetStatusMsg;
    property Hello_Message:String read FHello_Message write SetHello_Message;
    property Modificado: Boolean read FModificado;
    property HTML_TempFile:String read FHTML_TempFile;
    procedure ReadConfig;
    procedure WriteConfig;
    function IsFileAcceptable(AArquivo: String): Boolean;
    function IsImage(AArquivo: String): Boolean;
    function IsVideo(AArquivo: String): Boolean;
    function IsPDF(AArquivo: String): Boolean;
    function Arquivo_Adicionar(AArquivo: String;
      ACanDuplicate: Boolean = true): String;
    function Arquivo_Lista_Salvar(AArquivo: String): String;
    //function Arquivo_Lengenda_Set(AArquivo, ALegenda: String): String;
    //procedure SendTrayMessage(ACaption, AText:String);
    function HTML_GetCode(AArquivo: String; var ASaveHTMLAs:String): String;
    function HTML_GetHello(ATexto:String):String;
  end;

var
  fmPrincipal: TfmPrincipal;

const
  _APP_EXT = '.reuniao';
  _APP_EXT_VIDEO = '|.avi|.mp3|.mp4|.svg|';
  _APP_EXT_FIG = '|.bmp|.png|.jpeg|.jpg|.jfif|';
  _APP_EXT_PDF = '|.pdf|';

  _FWidth_Min = 320;
  _FHeight_Min = 240;
  _FWidth_Max = 852; // 480p = 852×
  _FHeight_Max = 480;

implementation

uses
  inifiles,
  StrUtils,
  ClipBrd,
  fquero_resposta,
  fexibicao;

{$R *.dfm}

{ TfmPrincipal }

function MsgDlg(AMsg: String; ATitle: String; ADlgType: TMsgDlgType;
  AButtons: TMsgDlgButtons; ACod_Ajuda: Integer = 0): TModalResult;
var
  i: Integer;
begin
  With CreateMessageDialog(AMsg, ADlgType, AButtons) Do
  begin
    Try
      Caption := ATitle;
      HelpContext := ACod_Ajuda;

      for i := 0 To ComponentCount - 1 do
      begin
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
          end;
      end;
      Result := ShowModal;
    finally
      Free;
    end;
  end; // With
end;

procedure TfmPrincipal.FormCreate(Sender: TObject);
var
  i: Integer;
  cmdFileName: String;
  Col: TListColumn;
begin
  Caption := 'Organizador de reunião';
  FListaAtual := '';
  FListaAtual_Legendas:='';
  FMediaAtual := '';
  FModificado := false;
  FConfigFile := ChangeFileExt(ParamStr(0), '.ini');
  FMediaLegendasList:=TStringList.Create;
  FHello_Message:='<h1>"Sua força está em permanecerem calmos e terem confiança - Isaías 30:50"</h1>';
  FHTML_TempFile:=GetEnvironmentVariable('TEMP')+'\'+ExtractFileName(ParamStr(0))+'.html';
  MediaProporcional_Width:=true;
  //BtnactMedia_Proporcional.Down:= FFMediaProporcional_Width;
  cmdFileName := ParamStr(1);
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
    //StatusMsg := 'Arraste arquivos para cá';
  finally

  end;

  //
  DragAcceptFiles(Self.Handle, true);
  //


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
end;

procedure TfmPrincipal.FormShow(Sender: TObject);
begin
  Caption:=Application.Title;
  //
  BtnactArquivo_Adicionar.Caption:='';
  BtnactArquivo_Remover.Caption:='';
  BtnactArquivo_MoverPCima.Caption:='';
  BtnactArquivo_MoverPBaixo.Caption:='';
  BtnactArquivo_Caminho_Abrir.Caption:='';
  BtnactArquivo_Caminho_Clipboard.Caption:='';
  BtnactMedia_Bordas.Caption:='';
  BtnactMedia_Legenda.Caption:='';
  BtnactMedia_Ir_Anterior.Caption:='';
  BtnactMedia_Ir_Proximo.Caption:='';
  BtnactMedia_Stop.Caption:='';
  BtnactMedia_Proporcional.Caption:='';
  BtnActPrincipal_Hide.Caption:='';
  //
  //PostMessage(Handle, wm_user, 0, 0);
  StatusMsg:='Arraste um arquivo para começar a criar uma lista ou carregue uma pré-existente.';
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

procedure TfmPrincipal.FormDestroy(Sender: TObject);
begin
  if Assigned(FMediaLegendasList) then
    FreeAndNil(FMediaLegendasList);
end;


function TfmPrincipal.HTML_GetCode(AArquivo: String; var ASaveHTMLAs:String): String;
const
  _IE_Compativel=false;
var
  sUrlPathToMedia: String;
  sMimeExt: String;
  L:TStringList;
begin
  L:=TStringList.Create;
  sUrlPathToMedia := FilePathToURL(AArquivo);
  sMimeExt := ExtractFileExt(AArquivo);
  if LeftStr(sMimeExt, 1) = '.' then
    sMimeExt := RightStr(sMimeExt, Length(sMimeExt) - 1);

  //if IsVideo(AArquivo) and (AIE) then
  //begin
  //  RESULT := IE_Video;
  //end
  //else
  if IsVideo(AArquivo) then
  begin
    if _IE_Compativel then
    begin
      L.Add('<html>');
      L.Add('<head>');
      L.Add('<meta http-equiv="X-UA-Compatible" content="IE=9" />' );
      L.Add('</head>');
      L.Add('<style>');
      L.Add('html');
      L.Add('{');
      L.Add(' position:fixed;');
      L.Add(' overflow:hidden;');
      L.Add(' -ms-overflow-style: none;');
      L.Add('    border:0px;');
      L.Add(' }</style>');
      L.Add('  <body style="background-color:black;margin=0px;padding=0px;">');
      L.Add('  <video id=video width=100% autobuffer controls fullscreen="true">'); // controls
      L.Add('  <source src="' + sUrlPathToMedia +'" type="video/' + sMimeExt + '">');
      L.Add('  <object type="video/mp4" data="media_v/video.mp4"  min-width: 100% min-height: 100%">');
      L.Add('  </object>');
      L.Add('  Seu navegador padrão não suporta a tag video.');
      L.Add('  </video>');
    end
    else
    begin
      L.Add('<head>');
      L.Add('</head>');
      L.Add('<body style="background-color:black;margin=0px;padding=0px;">');
      L.Add('  <video id=video ');
      //if MediaProporcional_Width then
      //  L.Add('     width="100%" ')
      //else
        L.Add('     width="100%"; height="100%" ');
      L.Add('     autoplay="true" ');
      L.Add('     controls="false" ');
      L.Add('     fullscreen="true">'); // controls
      L.Add('  <source src="' + sUrlPathToMedia + '" type="video/'+sMimeExt + '">');
      L.Add('  Seu navegador padrão não suporta a tag video.' );
      L.Add('  </video>');
      L.Add('</body>');
    end
  end;
  if IsImage(AArquivo) then
  begin
    L.Add('<head>');
    L.Add('</head>');
    L.Add('<body style="background-color:black;margin=0px;padding=0px;">');
    L.Add('<html>');
    if MediaProporcional_Width then
      L.Add('<img style="width:100%;" id="image" src="'+sUrlPathToMedia+'">')
    else
      L.Add('<img style="width:100%; height: 100%;" id="image" src="'+sUrlPathToMedia+'">');
    //L.Add('<img style="width:100%;height:100%;" id="image" src="'+sUrlPathToMedia+'">');
    L.Add('</html>');
    L.Add('</body>');
  end;
  if IsPDF(AArquivo) then
  begin
    L.Add('<head>');
    L.Add('</head>');
    L.Add('<body style="background-color:black;margin=0px;padding=0px;">');
    L.Add('<html>');
    L.Add('<object data="'+sUrlPathToMedia+'" type="application/pdf" ');
    if MediaProporcional_Width then
      L.Add('    width="100%">')
    else
      L.Add('    width="100%" height="100%">');
    L.Add('</object>');
    L.Add('</html>');
    L.Add('</body>');
  end;

  if (L.Count>0) and (ASaveHTMLAs<>'') then
  begin
    if DirectoryExists(ExtractFilePath(ASaveHTMLAs)) then
    begin
      L.SaveToFile(ASaveHTMLAs);
    end
    else
    begin
      ASaveHTMLAs:='';
    end;
  end;

end;

function TfmPrincipal.HTML_GetHello(ATexto: String): String;
begin
  Result:=
    '<style>'+sLineBreak+
    '.container {'+sLineBreak+
    '  text-align: center;'+sLineBreak+
    '  height: 200px;'+sLineBreak+
    '  position: relative;'+sLineBreak+
//    '  border: 3px solid green;'+sLineBreak+
    '}'+sLineBreak+
    ''+sLineBreak+
    '.vertical-center {'+sLineBreak+
    '  margin: 0;'+sLineBreak+
    '  position: absolute;'+sLineBreak+
    '  top: 50%;'+sLineBreak+
    '  -ms-transform: translateY(-50%);'+sLineBreak+
    '  transform: translateY(-50%);'+sLineBreak+
    '}'+sLineBreak+
    '</style>'+sLineBreak+
    '<html>'+sLineBreak+
    '<body style="background-color:black; color: white;">'+sLineBreak+
    '<div class="container">'+sLineBreak+
    '  <div class="vertical-center">'+sLineBreak+
    '    <p>'+ATexto+'</p>'+sLineBreak+
    '  </div>'+sLineBreak+
    '</div>'+sLineBreak+
    '</body></html>';
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
  if Sender = Source then
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
    end;


end;

procedure TfmPrincipal.Lista_ArquivosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source = Lista_Arquivos);
end;

procedure TfmPrincipal.Lista_ArquivosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Sender = Lista_Arquivos) and (Button = mbLeft) then
     Lista_Arquivos.BeginDrag(False); // inicia a operacao
end;

procedure TfmPrincipal.Lista_ArquivosSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
var
  sArquivo: String;
begin
  if (Selected) and (Lista_Arquivos.Focused) then
  begin
    //FMediaAtual_Titulo := Item.Caption;
    sArquivo := Item.SubItems[0];
    if FileExists(sArquivo) then
      MediaAtual := sArquivo;
  end;

end;

procedure TfmPrincipal.actMedia_BordasExecute(Sender: TObject);
begin
  if fmExibicao.BorderStyle=bsNone then
  begin
    fmExibicao.BorderStyle:=bsSizeable;
    fmExibicao.AutoSize:=false;
  end
  else
  begin
    fmExibicao.BorderStyle:=bsNone;
    fmExibicao.AutoSize:=true;
  end;
end;

procedure TfmPrincipal.actMedia_Ir_AnteriorExecute(Sender: TObject);
var
  sArquivoCaption: String;
  sArquivo: String;
  ItemAtual: TListItem;
begin
  if Lista_Arquivos.ItemIndex > 0 then
  begin
    Lista_Arquivos.ItemIndex := Lista_Arquivos.ItemIndex - 1;
    ItemAtual := Lista_Arquivos.Selected;
    sArquivoCaption := ItemAtual.Caption;
    sArquivo := ItemAtual.SubItems[0];
    MediaAtual := sArquivo;
  end;
  //if Lista_Arquivos.ItemIndex>0 then
  //  Lista_Arquivos.ItemIndex:=Lista_Arquivos.ItemIndex-1;
end;

procedure TfmPrincipal.actMedia_Ir_ProximoExecute(Sender: TObject);
var
  sArquivoCaption: String;
  sArquivo: String;
  ItemAtual: TListItem;
begin
  if Lista_Arquivos.ItemIndex < Pred(Lista_Arquivos.Items.Count) then
  begin
    Lista_Arquivos.ItemIndex := Lista_Arquivos.ItemIndex + 1;
    ItemAtual := Lista_Arquivos.Selected;
    sArquivoCaption := ItemAtual.Caption;
    sArquivo := ItemAtual.SubItems[0];
    MediaAtual := sArquivo;
  end;
  //if Lista_Arquivos.ItemIndex<Pred(Lista_Arquivos.Items.Count) then
  //  Lista_Arquivos.ItemIndex:=Lista_Arquivos.ItemIndex+1;
end;

procedure TfmPrincipal.actMedia_LegendaExecute(Sender: TObject);
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
    sLegenda := FMediaLegendasList.Values[ExtractFileName(sArquivo)];
    if Quero_Resposta('Legenda para "'+sArquivoCaption+'":', sLegenda, sLegenda) then
    begin
      sLegenda := Trim(sLegenda);
      FMediaLegendasList.Values[ExtractFileName(sArquivo)]:= sLegenda;
      fmExibicao.Legenda:=sLegenda;
      FModificado := true;
    end;
  end;
end;

procedure TfmPrincipal.actMedia_ProporcionalExecute(Sender: TObject);
begin
  MediaProporcional_Width:=(not MediaProporcional_Width);
end;

procedure TfmPrincipal.actMedia_StopExecute(Sender: TObject);
begin
  if Assigned(fmExibicao) then
  begin
    if fmExibicao.Showing then
    begin
      fmExibicao.Navegador.NavigateToString(HTML_GetHello(Hello_Message));
      fmExibicao.pnlLegenda.Visible:=false;
    end;
  end;
end;

procedure TfmPrincipal.actMensagem_DescansoExecute(Sender: TObject);
var
  S:String;
begin
  S:=FHello_Message;
  if Quero_Resposta('Mensagem de descanso ou boas vindas:', S, S) then
  begin
    Hello_Message:=S;
  end;
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
    Hello_Message := MyIni.ReadString('Config', 'Hello_Message', FHello_Message);
    Top := MyIni.ReadInteger('Config', 'Top', Self.Top);
    Left := MyIni.ReadInteger('Config', 'Left', Self.Left);
    Width := MyIni.ReadInteger('Config', 'Width', Self.Width);
    Height := MyIni.ReadInteger('Config', 'Height', Self.Height);
    MediaProporcional_Width:=MyIni.ReadBool('Config','MediaProporcional_Width', MediaProporcional_Width);
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
    MyIni.WriteString('Config', 'Hello_Message', FHello_Message);
    MyIni.WriteInteger('Config', 'Top', Self.Top);
    MyIni.WriteInteger('Config', 'Left', Self.Left);
    MyIni.WriteInteger('Config', 'Width', Self.Width);
    MyIni.WriteInteger('Config', 'Height', Self.Height);
    MyIni.WriteBool('Config','MediaProporcional_Width', MediaProporcional_Width);
  finally
    if Assigned(MyIni) then
      FreeAndNil(MyIni);
  end;
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



procedure TfmPrincipal.actArquivo_AdicionarExecute(Sender: TObject);
var
  sArquivo: String;
  i: Integer;
  sListaParaAbrir: String;
  OpenDialog1:TOpenDialog;
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
    OpenDialog1:=TOpenDialog.Create(nil);
    OpenDialog1.Filter := 'Arquivos suportados|' + sListaParaAbrir;
    OpenDialog1.FileName := FMediaAtual;
    OpenDialog1.Options := [TOpenOption.ofHideReadOnly,
      TOpenOption.ofAllowMultiSelect, TOpenOption.ofEnableSizing];
    if OpenDialog1.Execute() then
    begin
      if OpenDialog1.Files.Count=1 then
      begin
        sArquivo := OpenDialog1.FileName;
        if IsFileAcceptable(sArquivo) then
          Arquivo_Adicionar(sArquivo);
      end
      else
      for i := 0 to Pred(OpenDialog1.Files.Count) do
      begin
        sArquivo := OpenDialog1.FileName[i];
        if IsFileAcceptable(sArquivo) then
          Arquivo_Adicionar(sArquivo);
      end;
    end;

  finally
    OpenDialog1.Free;
  end;

end;

procedure TfmPrincipal.actArquivo_Caminho_AbrirExecute(Sender: TObject);
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

procedure TfmPrincipal.actArquivo_Caminho_ClipboardExecute(Sender: TObject);
var
  sArquivo: String;
  sExt: String;
  sys_last_error: String;
  sMsg: String;
begin
  sys_last_error := '';
  if Lista_Arquivos.ItemIndex < 0 then
    sys_last_error := 'Nenhum arquivo selecionado!';

  if sys_last_error = '' then
  begin
    sArquivo := Lista_Arquivos.Items[Lista_Arquivos.ItemIndex].SubItems[0];
    sExt := ExtractFileExt(sArquivo);
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
        ' foi copiado para clipboard, agora dê CTRL+V ' +
        'na jenela de sua preferência.';
      StatusMsg := sMsg;
    finally

    end;
  end;

  if (sys_last_error <> '') then
  begin
    StatusMsg := sys_last_error;
  end;


end;

procedure TfmPrincipal.actArquivo_MoverPBaixoExecute(Sender: TObject);
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

procedure TfmPrincipal.actArquivo_MoverPCimaExecute(Sender: TObject);
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

procedure TfmPrincipal.actArquivo_RemoverExecute(Sender: TObject);
var
  i: Integer;
  sArquivoCaption: String;
  sCurArquivo:String;
  ItemAtual: TListItem;
begin
  // Remover
  i := Lista_Arquivos.ItemIndex;
  if i >= 0 then
  begin
    //ItemAtual := Lista_Arquivos.Items[i];
    sCurArquivo := Lista_Arquivos.Items[i].SubItems[0];
    sArquivoCaption := ItemAtual.Caption;
    if SameText(MediaAtual, sCurArquivo) then
    begin
      //Figura.Picture := nil;
      fmExibicao.Navegador.Navigate('blank://');
    end;
    try
      Lista_Arquivos.DeleteSelected;
      StatusMsg := 'Media excluída: ' + sArquivoCaption;
      if i <= Pred(Lista_Arquivos.Items.Count) then
      begin
        Lista_Arquivos.ItemIndex := i;
      end
      else
      begin
        if i - 1 <= Pred(Lista_Arquivos.Items.Count) then
          Lista_Arquivos.ItemIndex := i - 1;
      end;
      FModificado := true;
    finally

    end;

  end;

end;

procedure TfmPrincipal.actLista_CarregarExecute(Sender: TObject);
var
  sFileName:String;
  OpenDialog1:TOpenDialog;
begin
  // Carregar lista
  OpenDialog1:=TOpenDialog.Create(nil);
  try
    sFileName:='';
    OpenDialog1.Filter := 'Lista de reuniões|*' + _APP_EXT;
    OpenDialog1.FileName := ListaAtual;
    if OpenDialog1.Execute() then
      sFileName:=OpenDialog1.FileName;
    if FileExists(sFileName) then
    begin
      ListaAtual := sFileName;
    end;
  finally

  end;
  OpenDialog1.Free;
end;

procedure TfmPrincipal.actlista_SalvarExecute(Sender: TObject);
begin
  // salvar lista atual
  Arquivo_Lista_Salvar(ListaAtual);
end;

procedure TfmPrincipal.ActPrincipal_HideExecute(Sender: TObject);
begin
  if fmPrincipal.Showing then
  begin
    if fmExibicao.Showing then
    begin
      fmPrincipal.Hide;
    end;
  end
  else
  begin
    fmPrincipal.Show;
  end;
end;

function TfmPrincipal.Arquivo_Adicionar(AArquivo: String;
  ACanDuplicate: Boolean): String;
var
  bElegivel: Boolean;
  i: Integer;
  sCurArquivo: String;
  Item: TListItem;
begin
  RESULT := '';
  if FileExists(AArquivo) then
  begin
    bElegivel := IsFileAcceptable(AArquivo);
    if bElegivel then
    begin
      //Lista_Arquivos.Items.BeginUpdate;
      if (not ACanDuplicate) then
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
          // Item.Detail:=AArquivo;
          FModificado := true;
        except
          on e: exception do
            RESULT := e.Message;

        end;
      end;
      //Lista_Arquivos.Items.EndUpdate;
    end;
  end;

end;

function TfmPrincipal.Arquivo_Lista_Salvar(AArquivo: String): String;
var
  i: Integer;
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
      if FMediaLegendasList.Count > 0 then
        FMediaLegendasList.SaveToFile(FListaAtual_Legendas);
      pnl_Lista.Align:=alRight;
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

procedure TfmPrincipal.BtnMenuListaClick(Sender: TObject);
begin
  //pnl_Lista.Align:=alRight;
  mnuLista.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TfmPrincipal.CreateParams(var Params: TCreateParams);
begin
  inherited;
    Params.Style := Params.Style or WS_THICKFRAME;
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



procedure TfmPrincipal.SetConfigFile(const Value: String);
begin
  FConfigFile := Value;
end;

procedure TfmPrincipal.SetFMediaProporcional_Width(const Value: Boolean);
begin
  FFMediaProporcional_Width := Value;
  BtnactMedia_Proporcional.Down:= FFMediaProporcional_Width;
  BtnactMedia_Proporcional.Transparent:= FFMediaProporcional_Width;
  BtnactMedia_Proporcional.Hint:='Proporção por largura ou altura (atualmente='+
    IfThen(MediaProporcional_Width,'largura','altura')+')';
  if Assigned(fmExibicao) then
  begin
    if fmExibicao.Showing then
    begin
      MediaAtual:=FMediaAtual;
    end;
  end;
end;

procedure TfmPrincipal.SetHello_Message(const Value: String);
begin
  FHello_Message := Value;

end;

procedure TfmPrincipal.SetListaAtual(const Value: String);
var
  sArquivoNew: String;
  i: Integer;
  sDefMedia:String;
  L: TStringList;
  sError: String;
begin
  if FListaAtual <> Value then
  begin
    if FileExists(Value) then
    begin
      sError := '';
      L := TStringList.Create;
      //
      Lista_Arquivos.Clear;
      //
      L.LoadFromFile(Value);
      sDefMedia:='';
      i := 0;
      while (i <= Pred(L.Count)) do
      begin
        sArquivoNew := L[i];
        if (sArquivoNew <> emptyStr) and (FileExists(sArquivoNew)) then
        begin
          try
            Arquivo_Adicionar(sArquivoNew);
            if SameText(FMediaAtual, sArquivoNew) then
              sDefMedia:=sArquivoNew;
          except
            on e: exception do
              sError := e.Message;

          end;
        end;
        Inc(i);
      end;
      if sError<>'' then
      begin
        Lista_Arquivos.Clear;
        StatusMsg:=sError;
      end
      else
      begin
        FModificado := false;
        FListaAtual := Value;
        FListaAtual_Legendas:=FListaAtual+'.legendas';
        pnl_Lista.Align:=alRight;
        if FileExists(FListaAtual_Legendas) then
        begin
          MediaLegendasList.LoadFromFile(FListaAtual_Legendas);
        end;
        if sDefMedia<>emptyStr then
        begin
          MediaAtual:=sDefMedia;
        end;
      end;

      if Assigned(L) then
        FreeAndNil(L);
    end;
  end;
end;

procedure TfmPrincipal.SetMediaAtual(const Value: String);
var
  bArquivo_Valido:Boolean;
  sHTMLCode:String;
  sUriFile:String;
  sLegenda:String;
begin
  bArquivo_Valido := IsFileAcceptable(Value);
  if bArquivo_Valido then
  begin
    FMediaAtual := Value;
    if FileExists(FHTML_TempFile) then
      deleteFile(FHTML_TempFile);
    try
      sHTMLCode := HTML_GetCode(Value, FHTML_TempFile);
      if Assigned(fmExibicao) then
      begin
        //if fmExibicao.Showing then
        //begin
          fmExibicao.Legenda:='';
          fmExibicao.Navegador.NavigateToString(HTML_GetHello(Hello_Message));
          if FileExists(FHTML_TempFile) then
          begin
            //fmExibicao.Navegador.NavigateToString('<html><body><h1>Aguardando seleção de mídia</h1></body></html>');
            //fmExibicao.Navegador.NavigateToString(sHTMLCode);
            sUriFile:=FilePathToURL(FHTML_TempFile);
            fmExibicao.Navegador.Navigate(sUriFile);
            //fmExibicao.CarregamentoCompleto:=false;
            //fmExibicao.Navegador.OnContentLoading .NavigateToString(sHTMLCode);
            {repeat
              Application.ProcessMessages
            until
              (fmExibicao.CarregamentoCompleto)
              and (fmExibicao.Showing)
              and (fmExibicao.ModalResult <> mrClose);}
            try
              sLegenda:=FMediaLegendasList.Values[ExtractFileName(Value)];
            finally

            end;
            fmExibicao.Legenda:=sLegenda;
            if IsVideo(FMediaAtual) then
               fmExibicao.Legenda:='';
            if IsPDF(FMediaAtual) then
               fmExibicao.Legenda:='';
          end;
        //end;
        fmExibicao.Show;
      end;
    finally

    end;
  end;
end;

procedure TfmPrincipal.SetStatusMsg(const Value: String);
begin
  FStatusMsg := Value;
  if FStatusMsg=emptyStr then
  begin
    lblStatus.Visible:=false;
  end
  else
  begin
    lblStatus.Visible:=false;
    lblStatus.Caption:=FStatusMsg;
    lblStatus.Visible:=true;
  end;

end;

end.
