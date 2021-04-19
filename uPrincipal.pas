unit uPrincipal;

{
  AcroPDFLib_TLB é um ActiveX importado do AdobeReader instalado no Windows. Por isso,
    só funciona se este programa tiver sido instalado, caso contrário, não abrirá PDFs.
}



interface

uses
  ShellAPI, pngimage, AcroPDFLib_TLB,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.OleAuto, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Menus,
  Vcl.ExtDlgs, Vcl.Imaging.jpeg, Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.OleCtrls,
  SHDocVw, WinInet, ShLwApi;

type
  TfmPrincipal = class(TForm)
    painel_area_principal: TPanel;
    Paginas: TPageControl;
    Menu_Arquivos: TPopupMenu;
    ActionList1: TActionList;
    Acao_Clipboard: TAction;
    Acao_Explorer: TAction;
    Acao_Salvar: TAction;
    Acao_Abrir: TAction;
    Acao_Mover_Acima: TAction;
    Acao_Mover_Abaixo: TAction;
    Copiaralocalizaoparaareadeclipboard1: TMenuItem;
    Abriroexplorernalocalizao1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    AcaoMoverAbaixo1: TMenuItem;
    N3: TMenuItem;
    AcaoAbrir1: TMenuItem;
    AcaoSalvar1: TMenuItem;
    SaveDialog1: TSaveDialog;
    OpenTextFileDialog1: TOpenTextFileDialog;
    Acao_Remover: TAction;
    Removeroelementoselecionado1: TMenuItem;
    TabFigura: TTabSheet;
    Figura: TImage;
    Acao_Adicionar: TAction;
    AcaoAdicionar1: TMenuItem;
    OpenDialog1: TOpenDialog;
    Acao_ZoomMais: TAction;
    Acao_ZoomMenos: TAction;
    SV_Inicio: TSplitView;
    Lista: TListView;
    Acao_Inicio: TAction;
    ImageList1: TImageList;
    TrayIcon1: TTrayIcon;
    TabVideo: TTabSheet;
    Acao_Inserir_legenda: TAction;
    Alterarlegendadaimagem1: TMenuItem;
    WebBrowser1: TWebBrowser;
    Splitter1: TSplitter;
    TabPDF: TTabSheet;
    Acao_Media_Prox: TAction;
    Acao_Media_Anterior: TAction;
    Acao_Minimizar: TAction;
    Acao_Fechar: TAction;
    Painel_Inicio: TPanel;
    BtnAcao_Inicio: TSpeedButton;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ListaDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Acao_ClipboardExecute(Sender: TObject);
    procedure Acao_ExplorerExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Acao_AbrirExecute(Sender: TObject);
    procedure Acao_SalvarExecute(Sender: TObject);
    procedure Acao_RemoverExecute(Sender: TObject);
    procedure Acao_Mover_AcimaExecute(Sender: TObject);
    procedure Acao_Mover_AbaixoExecute(Sender: TObject);
    procedure Acao_AdicionarExecute(Sender: TObject);
    procedure ListaDblClick(Sender: TObject);
    procedure Acao_ZoomMaisExecute(Sender: TObject);
    procedure Acao_ZoomMenosExecute(Sender: TObject);
    procedure Acao_InicioExecute(Sender: TObject);
    procedure SV_InicioClosed(Sender: TObject);
    procedure SV_InicioOpened(Sender: TObject);
    procedure ListaSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure Acao_Inserir_legendaExecute(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Acao_Media_ProxExecute(Sender: TObject);
    procedure Acao_Media_AnteriorExecute(Sender: TObject);
    procedure FiguraMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Painel_InicioMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Acao_MinimizarExecute(Sender: TObject);
    procedure Acao_FecharExecute(Sender: TObject);
    procedure ListaDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
    FListaFileName: String;
    FConfigFile: String;
    FModificado: Boolean;
    FSV_Inicio_Width: Integer;
    FSV_Inicio_OpenedWidth: Integer;
    FPanelMenuWidthMin: Integer;
    FPanelMenuWidthMax: Integer;
    FPanelMenuWidthInc: Integer;
    FLastMediaFile: String;
    FLegendas:TStringList;
    FJanelaWidth: Integer;
    FJanelaHeight: Integer;
    FMeuPDF : TAcroPDF;
    procedure ReadConfig;
    procedure WriteConfig;
    procedure LoadMediaFile(AArquivo:String='');
    procedure SalvarLista(ANomeArquivo:String='');
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
    procedure SetListaFileName(const Value: String);
    procedure SetConfigFile(const Value: String);
    function IsFileAcceptable(AArquivo:String):Boolean;
    procedure SetSV_Inicio_Width(const Value: Integer);
    function Lista_ArqIncluir(AArquivo:String):Boolean;
    function ListaSelectFile(AArquivo:String; ALoadMedia:Boolean=false):Integer;
    procedure FiguraTamanho(ATamOriginal:Boolean);
    procedure ShowPlayer(AArquivo:String='');
    function FilePathToURL(const FilePath: string): string;
    procedure SetJanelaWidth(const Value: Integer);
    procedure SetJanelaHeight(const Value: Integer);
  protected
    procedure CreateParams(var Params: TCreateParams); override; // ADD THIS LINE!
  published
    property ListaFileName:String read FListaFileName write SetListaFileName;
    property ConfigFile:String read FConfigFile write SetConfigFile;
    property Modificado:Boolean read FModificado;
    property LastMediaFile:String read FLastMediaFile;

    property SV_Inicio_Width:Integer read FSV_Inicio_Width write SetSV_Inicio_Width;
    property PanelMenuWidthMin:Integer read FPanelMenuWidthMin write FPanelMenuWidthMin;
    property PanelMenuWidthMax:Integer read FPanelMenuWidthMax write FPanelMenuWidthMax;
    property PanelMenuWidthInc:Integer read FPanelMenuWidthInc write FPanelMenuWidthInc;
    property JanelaWidth:Integer read FJanelaWidth write SetJanelaWidth;
    property JanelaHeight:Integer read FJanelaHeight write SetJanelaHeight;
    procedure TryResize;
    procedure StatusMsg(AMessage:String);
  public
    { Public declarations }

  end;

var
  fmPrincipal: TfmPrincipal;

const
  _APP_EXT='.reuniao';
  _APP_EXT_VIDEO='|.avi|.mp3|.mp4|';
  _APP_EXT_FIG='|.bmp|.png|.jpeg|.jpg|';
  _APP_EXT_PDF='|.pdf|';
  _Min_Width=320;
  _Win_Height=240;

function MsgDlg(
  AMsg: String;
  ATitle: String;
  ADlgType: TMsgDlgType;
  AButtons: TMsgDlgButtons;
  ACod_Ajuda: Integer=0) : TModalResult;

implementation
uses
  inifiles,
  strUtils,
  ClipBrd;
{$R *.dfm}

{ TfmPrincipal }

function MsgDlg(
  AMsg: String;
  ATitle: String;
  ADlgType: TMsgDlgType;
  AButtons: TMsgDlgButtons;
  ACod_Ajuda: Integer=0) : TModalResult;
var i   : Integer;
begin
  With CreateMessageDialog(AMsg, ADlgType, AButtons) Do
     Try
       Caption := ATitle;
       HelpContext := ACod_Ajuda;

       for i:= 0 To ComponentCount - 1 Do
         If Components[i] Is TButton
         Then
           Case (Components[i] As TButton).ModalResult Of
             mrNone     : (Components[i] As TButton).Caption := '&Ajuda';
             mrAbort    : (Components[i] As TButton).Caption := 'Abortar';
             mrAll      : (Components[i] As TButton).Caption := '&Todos';
             mrCancel   : (Components[i] As TButton).Caption := '&Cancelar';
             mrIgnore   : (Components[i] As TButton).Caption := '&Ignorar';
             mrNo       : (Components[i] As TButton).Caption := '&Não';
             mrNoToAll  : (Components[i] As TButton).Caption := 'Não para todos';
             mrOk       : (Components[i] As TButton).Caption := '&Ok';
             mrRetry    : (Components[i] As TButton).Caption := '&Repetir';
             mrYes      : (Components[i] As TButton).Caption := '&Sim';
             mrYesToAll : (Components[i] As TButton).Caption := 'Sim para todos';
           End;

       RESULT := ShowModal;
     Finally
       Free;
     End;
end;

procedure TfmPrincipal.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := Params.Style or WS_THICKFRAME;
end;

procedure TfmPrincipal.FormDestroy(Sender: TObject);
begin
  try
    if Assigned(Figura.Picture) then
      Figura.Picture:=nil;
    if Assigned(WebBrowser1) then
      WebBrowser1.Free;
    if Assigned(FMeuPDF) then
      FMeuPDF:=nil;



    DragAcceptFiles(Self.Handle, False);
  finally

  end;
end;

procedure TfmPrincipal.FormResize(Sender: TObject);
begin
  if ModalResult<>mrClose then
    TryResize;
end;

procedure TfmPrincipal.FormCreate(Sender: TObject);
var
  cmdFileName:String;
  i:Integer;
begin
  Caption:=Application.Title;
  FModificado:=false;
  FListaFileName:='';
  FLastMediaFile:='';
  FConfigFile:=ChangeFileExt(ParamStr(0),'.ini');
  FSV_Inicio_Width:=300;
  FPanelMenuWidthMin:=20;
  FPanelMenuWidthMax:=Screen.Width-(FPanelMenuWidthMin*2);
  FPanelMenuWidthInc:=20;

  FLegendas:=TStringList.Create;
  cmdFileName:=ParamStr(1);
  ReadConfig;
  for i := 0 to Pred(Paginas.PageCount) do
  begin
    Paginas.Pages[i].TabVisible:=false;
  end;
  DragAcceptFiles(Self.Handle, True);
  if FileExists(cmdFileName) then
    ListaFileName:=cmdFileName;
  //StatusBar1.Visible:=false;
  //
  FMeuPDF :=TAcroPDF.Create(TabPDF);
  FMeuPDF.Parent:=TabPDF;
  FMeuPDF.Align:=alClient;
  Lista.Columns[0].Width := 255;
  Lista.Columns[1].Width := 0;
  SV_InicioOpened(Sender);
  Lista.DragMode := dmAutomatic;
end;

procedure TfmPrincipal.FormShow(Sender: TObject);
begin
  if FileExists(FLastMediaFile) then
  begin
    LoadMediaFile(FLastMediaFile);
  end;
  SV_Inicio_Width:=FSV_Inicio_Width;

  StatusMsg('Dica: Arraste arquivos para cá ou use Ctrl+O para selecionar de um arquivo.');
end;

function TfmPrincipal.IsFileAcceptable(AArquivo: String): Boolean;
var
  sExt:String;
begin
  Result:=false;
  sExt:=ExtractFileExt(AArquivo);
  Result:=ContainsText(_APP_EXT_VIDEO, sExt);
  if not Result then
    Result:=ContainsText(_APP_EXT_FIG, sExt);
  if not Result then
    Result:=ContainsText(_APP_EXT_PDF, sExt);
end;

procedure TfmPrincipal.ListaDblClick(Sender: TObject);
var
  bSeVideo:Boolean;
  bSeFigura:Boolean;
  bSePDF:Boolean;
  sArquivo:String;
  sExt:String;
  sys_last_error:String;

begin
  sys_last_error:='';
  if Lista.ItemIndex >= 0 then
  begin
    //sArquivo:= lista.ItemFocused.Caption;
    sArquivo:= lista.ItemS[Lista.ItemIndex].SubItems[0];
    sExt:=ExtractFileExt(sArquivo);

    if not FileExists(sArquivo) then
      sys_last_error:='Arquivo não existe: '+sArquivo;

    bSeVideo:=ContainsText(_APP_EXT_VIDEO, sExt);
    bSeFigura:=ContainsText(_APP_EXT_FIG, sExt);
    bSePDF:=ContainsText(_APP_EXT_PDF, sExt);
    if bSeFigura then
      bSeVideo:=false;

    if bSeVideo then
    begin
      Acao_ClipboardExecute(Sender);
    end;
    if bSeFigura or bSeFigura then
    begin
      //PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
      Acao_InicioExecute(Sender);
    end;
  end;

end;

procedure TfmPrincipal.ListaDragDrop(Sender, Source: TObject; X, Y: Integer);
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

procedure TfmPrincipal.ListaDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Sender = Lista;
  StatusMsg('Aceitando '+Sender.ClassName+': '+IfThen(Accept,'Sim','Não'));
end;

function TfmPrincipal.ListaSelectFile(AArquivo: String; ALoadMedia:Boolean=false): Integer;
var
  sArquivo:String;
  i:Integer;
begin
  i:=0;
  while i<Pred(Lista.Items.Count) do
  begin
    sArquivo:=Lista.Items[i].SubItems[0];
    if Sametext(sArquivo, AArquivo) then
    begin
      Lista.ItemIndex:=i;
      Result:=i;
      if ALoadMedia then
        LoadMediaFile(sArquivo);
      break;
    end;
    Inc(i);
    Application.ProcessMessages;
  end;
end;

procedure TfmPrincipal.ListaSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
var
  sArquivo:String;
  sExt:String;
  bSeVideo:Boolean;
  bSeFigura:Boolean;
  bSePDF:Boolean;
begin
  sArquivo:=Item.SubItems[0];
  sExt:=ExtractFileExt(sArquivo);
  bSeVideo:=ContainsText(_APP_EXT_VIDEO, sExt);
  bSeFigura:=ContainsText(_APP_EXT_FIG, sExt);
  bSePDF:=ContainsText(_APP_EXT_PDF, sExt);
  //Caption:=Lista.Items[Lista.ItemIndex].Caption;
  Caption:=Item.Caption;
  //lbl_legenda.Visible:=false;
  if bSeFigura then
  begin
    bSeVideo:=false;
    if FLegendas.Values[ExtractFileName(sArquivo)]<>'' then
    begin
      StatusMsg(FLegendas.Values[ExtractFileName(sArquivo)]);
      //lbl_legenda.Visible:=true;
    end;
  end;
  Acao_Inserir_legenda.Enabled:=bSeFigura;

  StatusMsg(sArquivo);
  try
    figura.Picture:=nil;

    if FileExists(sArquivo) then
    begin
      LoadMediaFile(sArquivo);
    end;
  finally

  end;
end;

function TfmPrincipal.Lista_ArqIncluir(AArquivo: String): Boolean;
var
  Item: TListItem;
begin
  Result:=false;
  if FileExists(AArquivo) then
  begin
    try
      Item := Lista.Items.Add;
      Item.Caption := ExtractFilename(AArquivo);
      Item.SubItems.Add(AArquivo);
      Result:=true;
    finally

    end;
  end;
end;

procedure TfmPrincipal.LoadMediaFile(AArquivo:String='');
var
  sExt:String;
  sys_last_error:String;
  bSeVideo:Boolean;
  bSeFigura:Boolean;
  bSePDF:Boolean;
begin
  sys_last_error:='';
  if AArquivo='' then
  begin
    if Lista.ItemIndex < 0 then
    begin
      sys_last_error:='Nenhum arquivo foi selecionado!';
    end
    else
    begin
      AArquivo:= lista.Items[Lista.ItemIndex].SubItems[0];
    end;
  end;

  if sys_last_error='' then
  begin
    sExt:=ExtractFileExt(AArquivo);

    if not FileExists(AArquivo) then
      sys_last_error:='Arquivo não existe: '+AArquivo;
  end;

  if sys_last_error='' then
  begin
    bSeVideo:=ContainsText(_APP_EXT_VIDEO, sExt);
    bSeFigura:=ContainsText(_APP_EXT_FIG, sExt);
    bSePDF:=ContainsText(_APP_EXT_PDF, sExt);

    if bSeFigura then
    begin
      bSeVideo:=false;
      bSePDF:=false;
    end;

    if bSeFigura then
    begin
      try
        WebBrowser1.Stop;
        ShowPlayer;
      finally
      end;
      try
        Paginas.ActivePage:=TabFigura;
        TabFigura.Caption:=AArquivo;
        figura.Picture.LoadFromFile(AArquivo);
        TryResize;
      except
      on e:exception do sys_last_error:=e.Message;
      end;
    end;
    if bSeVideo then
    begin
      try
        // não faz nada por enquanto
        Paginas.ActivePage:=TabVideo;
        TabVideo.Caption:=AArquivo;
        ShowPlayer(AArquivo);
      except
      on e:exception do sys_last_error:=e.Message;
      end;
    end;
    if bSePDF then
    begin
      try
        // não faz nada por enquanto
        //Paginas.ActivePage:=TabVideo;
        //TabVideo.Caption:=AArquivo;
        Paginas.ActivePage:=TabPDF;
        TabPDF.Caption:=AArquivo;
        FMeuPDF.LoadFile(AArquivo);
        FMeuPDF.Show;
        //ShowPlayer(AArquivo);
      except
      on e:exception do sys_last_error:=e.Message;
      end;
    end;
  end;

  if sys_last_error<>'' then
  begin
    StatusMsg(sys_last_error);
  end;
end;


procedure TfmPrincipal.Painel_InicioMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);

end;

procedure TfmPrincipal.ReadConfig;
var
  MyIni:TIniFile;
  sListaFileName:String;
begin
  try
    MyIni:=TIniFile.Create(FConfigFile);

    sListaFileName:=MyIni.ReadString('Config', 'ListaFileName', FListaFileName);
    if FileExists(sListaFileName) then
      ListaFileName:=sListaFileName;

    FLastMediaFile:=MyIni.ReadString('Config', 'LastMediaFile', FLastMediaFile);
    if FileExists(FLastMediaFile) then
    begin
      ListaSelectFile(FLastMediaFile)
    end;

    Top:=MyIni.ReadInteger('Config', 'Top', Self.Top);
    Left:=MyIni.ReadInteger('Config', 'Left', Self.Left);
    Width:=MyIni.ReadInteger('Config', 'Width', Self.Width);
    Height:=MyIni.ReadInteger('Config', 'Height', Self.Height);
    Paginas.Height:=MyIni.ReadInteger('Config', 'Paginas_Height', Paginas.Height);
    if not SV_Inicio.Opened then
    begin
      PanelMenuWidthMin:=MyIni.ReadInteger('Config', 'PanelMenuWidthMin', FPanelMenuWidthMin);
      PanelMenuWidthMax:=MyIni.ReadInteger('Config', 'PanelMenuWidthMax', FPanelMenuWidthMax);
      PanelMenuWidthInc:=MyIni.ReadInteger('Config', 'PanelMenuWidthInc', FPanelMenuWidthInc);
      SV_Inicio_Width:=MyIni.ReadInteger('Config', 'SV_Inicio.Width', SV_Inicio.Width);
      FSV_Inicio_OpenedWidth:=MyIni.ReadInteger('Config', 'SV_Inicio.OpenedWidth', SV_Inicio.OpenedWidth);
    end;
    //Splitter1.Left:=MyIni.ReadInteger('Config', 'Splitter1.Left', Splitter1.Left);

  finally
    if Assigned(MyIni) then
      FreeAndNil(MyIni);
  end;
end;

procedure TfmPrincipal.WriteConfig;
var
  sLastFileName:String;
  MyIni:TIniFile;
begin
  try
    myIni:=TIniFile.Create(FConfigFile);
    MyIni.WriteString('Config', 'ListaFileName', FListaFileName);
    MyIni.WriteInteger('Config', 'Top', Self.Top);
    MyIni.WriteInteger('Config', 'Left', Self.Left);
    MyIni.WriteInteger('Config', 'Width', Self.Width);
    MyIni.WriteInteger('Config', 'Height', Self.Height);
    MyIni.WriteInteger('Config', 'Paginas_Height', Paginas.Height);
    if SV_Inicio.Opened then
    begin
      //MyIni.WriteInteger('Config', 'SV_Inicio.OpenedWidth', SV_Inicio.OpenedWidth);
      MyIni.WriteInteger('Config', 'PanelMenuWidthMin', FPanelMenuWidthMin);
      MyIni.WriteInteger('Config', 'PanelMenuWidthMax', FPanelMenuWidthMax);
      MyIni.WriteInteger('Config', 'PanelMenuWidthInc', FPanelMenuWidthInc);
      //MyIni.WriteInteger('Config', 'Splitter1.Left', Splitter1.Left);
      MyIni.WriteInteger('Config', 'SV_Inicio.Width', SV_Inicio.Width);
      MyIni.WriteInteger('Config', 'SV_Inicio.OpenedWidth', SV_Inicio.OpenedWidth);
    end;
    if Lista.ItemIndex>=0 then
    begin
      sLastFileName:=Lista.ItemFocused.Caption;
      MyIni.WriteString('Config', 'LastFileName', sLastFileName);
    end;
  finally
    if Assigned(MyIni) then
      FreeAndNil(MyIni);
  end;
end;

procedure TfmPrincipal.SalvarLista(ANomeArquivo:String='');
var
  i:integer;
  sArqLegendas:String;
  L:TStringList;
begin
  L:=TStringList.Create;
  if ANomeArquivo='' then
    ANomeArquivo:=FListaFileName;
  SaveDialog1.Filter:='Lista de tópicos|*'+_APP_EXT;
  SaveDialog1.FileName:=ANomeArquivo;
  if SaveDialog1.Execute() then
  begin
    FListaFileName:=SaveDialog1.FileName;
    if ExtractFileExt(FListaFileName)='' then
      FListaFileName:=FListaFileName+_APP_EXT;
    if Pos('..'+_APP_EXT, FListaFileName)>0 then
      FListaFileName:=StringReplace(FListaFileName, '..'+_APP_EXT, '.'+_APP_EXT, [rfIgnoreCase]);
    for i := 0 to Pred(Lista.Items.Count) do
    begin
      L.Add(Lista.Items[i].SubItems[0]);
    end;
    try
      L.SaveToFile(FListaFileName);
      FModificado:=false;
      // salvamos as legendas tambem
      sArqLegendas:=FListaFileName+'.legendas';
      if FLegendas.Count>0 then
        FLegendas.SaveToFile(sArqLegendas);
    finally

    end;
  end;
  L.Free;
end;

procedure TfmPrincipal.SetConfigFile(const Value: String);
begin
  FConfigFile := Value;
end;

procedure TfmPrincipal.SetJanelaHeight(const Value: Integer);
var
  H:Integer;
  iMaxHeight:integer;
begin
  H := Value;
  iMaxHeight:=Trunc(Screen.Height-(Screen.Height*0.10));
  if H<>FJanelaHeight then
  begin
    if H<_Win_Height then
      H:=_Win_Height;
    if H>Screen.Height then
      H:=iMaxHeight;
    FJanelaHeight := H;
    Height:=FJanelaHeight;
  end;
end;

procedure TfmPrincipal.SetJanelaWidth(const Value: Integer);
var
  W:Integer;
  iMaxWidth:Integer;
begin
  W := Value;
  iMaxWidth:=Trunc(Screen.Width-(Screen.Width*0.10));
  if W<>FJanelaWidth then
  begin
    if W<_Min_Width then
      W:=_Min_Width;
    if W>iMaxWidth then
      W:=iMaxWidth;

    FJanelaWidth := W;
    Width:=FJanelaWidth;
  end;
end;

procedure TfmPrincipal.SetListaFileName(const Value: String);
var
  i:integer;
  sArqLegendas:String;
  L:TStringList;
begin
  if FileExists(Value) then
  begin
    FListaFileName := Value;
    sArqLegendas:=FListaFileName+'.legendas';
    Caption:=Application.Title+'['+ExtractFileName(FListaFileName)+']';
    L:=TStringList.Create;
    try
      if FileExists(sArqLegendas) then
        FLegendas.LoadFromFile(sArqLegendas);

      L.LoadFromFile(FListaFileName);
      for i := 0 to Pred(L.Count) do
      begin
        Lista_ArqIncluir(L[i]);
      end;
      i:=Lista.Columns.Count;
      if i>0 then
      begin
        //Lista.Columns[0].Width:=-1;
        Lista.Columns[0].AutoSize:=true;
        if i>1 then
          Lista.Columns[1].Width:=0;
      end;

      if FileExists(FLastMediaFile) then
        ListaSelectFile(FLastMediaFile);
    finally
      L.Free;
    end;
  end;
end;

procedure TfmPrincipal.SetSV_Inicio_Width(const Value: Integer);
var
  i:Cardinal;
begin
  i:=Value;
  if i<FPanelMenuWidthMin then
    i:=FPanelMenuWidthMin;
  if i>FPanelMenuWidthMax then
    i:=FPanelMenuWidthMax;
  //if FPanelMenuWidth<>Value then
  //begin
    FSV_Inicio_Width := i;
    SV_Inicio.Width:=FSV_Inicio_Width;
    FSV_Inicio_OpenedWidth:=SV_Inicio.OpenedWidth;
  //end;
end;

function TfmPrincipal.FilePathToURL(const FilePath: string): string;
var
  BufferLen: DWORD;
begin
  BufferLen := INTERNET_MAX_URL_LENGTH;
  SetLength(Result, BufferLen);
  OleCheck(UrlCreateFromPath(PChar(FilePath), PChar(Result), @BufferLen, 0));
  SetLength(Result, BufferLen);
end;

procedure TfmPrincipal.ShowPlayer(AArquivo: String='');
var
  sUrlPathIndex:String;
  sUrlPathVideo:String;
  sMimeExt:String;
  sIndexHTML:String;
  L:TStringList;
begin
  // UrlCreateFromPath API function.
  sIndexHTML:=GetEnvironmentVariable('TEMP')+'\index.htm';
  sUrlPathIndex:=FilePathToURL(sIndexHTML);
  sUrlPathVideo:=FilePathToURL(AArquivo);
  sMimeExt:=ExtractFileExt(AArquivo);
  if LeftStr(sMimeExt,1)='.' then
    sMimeExt:=RightStr(sMimeExt, Length(sMimeExt)-1);

  L:=TStringList.Create;
  try
    L.Add('<html>');
    L.Add('<head>');
    L.Add('<meta http-equiv="X-UA-Compatible" content="IE=9" />');
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
    if AArquivo='' then
    begin
      L.Add('<p><h3>Copie o endereço da localização do arquivo para a área de '+
        'clipboard e depois cole (ctrl+v) na janela de seleção de arquivo desejada.</h3></p>');
    end
    else
    begin
      if FileExists(AArquivo) then
      begin
        L.Add('  <video id=video width=100% autobuffer controls fullscreen="true">');  //controls
        L.Add('  <source src="'+sUrlPathVideo+'" type="video/'+sMimeExt+'">');
        L.Add('  <object type="video/mp4" data="media_v/video.mp4"  min-width: 100% min-height: 100%">');
        L.Add('  </object>');
        L.Add('  Seu navegador padrão não suporta a tag video.');
        L.Add('  </video>');
      end
      else
      begin
        L.Add('<p><h3>Arquivo não encontrado:</h3></p> ');
        L.Add('<p>'+AArquivo+'</p> ');
        L.Add('<p>'+sUrlPathVideo+'</p> ');
      end;
    end;
    L.Add('  </body>');
    L.Add('</html>');
    L.SaveToFile(sIndexHTML);
    //WebBrowser1.OleObject.document.body.Scroll := 'no';
    WebBrowser1.FullScreen:=true;
    WebBrowser1.Navigate(sIndexHTML);
  finally
    L.Free;
  end;

end;

procedure TfmPrincipal.Splitter1Moved(Sender: TObject);
begin
  SV_Inicio_Width:=SV_Inicio.OpenedWidth;

end;

procedure TfmPrincipal.StatusMsg(AMessage: String);
begin
  StatusBar1.Visible:=(AMessage<>'');
  StatusBar1.Panels[0].Text:=AMessage;

end;

procedure TfmPrincipal.SV_InicioClosed(Sender: TObject);
begin
  Lista.Visible:=false;
  StatusBar1.Visible:=false;
  if Lista.ItemIndex < 0 then begin
    Paginas.ActivePageIndex:=0;
    figura.Picture:=nil;
  end;
  //BorderIcons:=[];
  BorderIcons:=[biSystemMenu,biMinimize];
  //BorderStyle:=bsSingle;
  TryResize;
  Acao_Inicio.Caption:='Expandir'; // Recolher
  Acao_Inicio.Hint:=Acao_Inicio.Caption+', opcionalmente pode usar as teclas Q ou W para '+
    'retroceder ou avançar as mídia.';

end;

procedure TfmPrincipal.SV_InicioOpened(Sender: TObject);
begin
  Lista.Visible:=true;
  StatusBar1.Visible:=true;
  if Lista.ItemIndex < 0 then begin
    Paginas.ActivePageIndex:=0;
    figura.Picture:=nil;
  end;
  if Lista.Items.Count=0 then
    StatusMsg('A fila está vazia, arraste algum arquivo para cá.');
  BorderIcons:=[biSystemMenu,biMinimize];
  //BorderStyle:=bsSingle;
  TryResize;
  Acao_Inicio.Caption:='Recolher'; // Expandir
  Acao_Inicio.Hint:=Acao_Inicio.Caption;
end;

procedure TfmPrincipal.TryResize;
var
  FigW:Integer;
  FigH:Integer;
begin
  if paginas.ActivePage=TabFigura then
  begin
    if Figura.Picture<>nil then
    begin
      FigW:=Figura.Picture.Width;
      FigH:=Figura.Picture.Height;
      if SV_Inicio.Opened then
      begin
        Self.Constraints.MaxWidth:=0;
        Self.Constraints.MaxHeight:=0;
        TabFigura.ClientWidth:=FigW;
        TabFigura.ClientHeight:=FigH;
        Figura.Width:=FigW;
        Figura.Height:=FigH;
      end
      else
      begin
        JanelaWidth:=FigW;
        JanelaHeight:=FigH;
        //Self.Constraints.MaxWidth:=JanelaWidth;
        //Self.Constraints.MaxHeight:=JanelaHeight;
      end;

      // Largura do desenho maior que a largura da area
      {if FigW>TabFigura.ClientWidth then
        Figura.Width:=TabFigura.ClientWidth;
      // Altura do desenho maior que a altura da area
      if FigH> TabFigura.ClientHeight then
        Figura.Height:=TabFigura.ClientHeight;

      // Largura maior que a largura do desenho
      if TabFigura.ClientWidth>FigW then
        Width:=FigW;
      // Altura maior que a altura desenho
      if TabFigura.ClientHeight>FigH then
        Height:=FigH;
      }
    end;
  end;

end;

procedure TfmPrincipal.WMDropFiles(var Msg: TWMDropFiles);
var
  DropH: HDROP;               // drop handle
  DroppedFileCount: Integer;  // number of files dropped
  FileNameLength: Integer;    // length of a dropped file name
  FileName: string;           // a dropped file name
  I: Integer;                 // loops thru all dropped files
  iFound:Integer;
  DropPoint: TPoint;          // point where files dropped
begin
  inherited;
  // Store drop handle from the message
  DropH := Msg.Drop;
  try
    // Get count of files dropped
    DroppedFileCount := DragQueryFile(DropH, $FFFFFFFF, nil, 0);
    // Get name of each file dropped and process it
    for I := 0 to Pred(DroppedFileCount) do
    begin
      // get length of file name
      FileNameLength := DragQueryFile(DropH, I, nil, 0);
      // create string large enough to store file
      SetLength(FileName, FileNameLength);
      // get the file name
      DragQueryFile(DropH, I, PChar(FileName), FileNameLength + 1);
      // process file name (application specific)
      // ... processing code here
      //iFound:=Lista.Items.IndexOf(FileName);
      if IsFileAcceptable(FileName) then
      begin
        //Lista.Items.Add(FileName);
        Lista_ArqIncluir(FileName);
        FModificado:=true;
        StatusMsg('Você pode usar Ctrl+Seta para mudar a sequencia.');
        if Lista.Items.Count>2 then
        begin
          StatusMsg('Dica: Use Ctrl+S para salvar a lista atual.');
        end;
      end
      else
      begin
        StatusMsg('Não é um formato aceitável "'+ExtractFileExt(FileName)+'".');
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
  Msg.Result := 0;

end;


procedure TfmPrincipal.Acao_AbrirExecute(Sender: TObject);
begin
  OpenTextFileDialog1.Filter:='Lista de tópicos|*'+_APP_EXT;
  OpenTextFileDialog1.FileName:=FListaFileName;
  if OpenTextFileDialog1.Execute() then
  begin
    if FileExists(OpenTextFileDialog1.FileName) then
    begin
      ListaFileName:=OpenTextFileDialog1.FileName;
      //Lista.Items.LoadFromFile(FListaFileName);
    end;
  end;
end;

procedure TfmPrincipal.Acao_AdicionarExecute(Sender: TObject);
var
  sArquivo:String;
  sLista:String;
begin
  //_APP_EXT_VIDEO='|.avi|.mp3|.mp4|';
  //_APP_EXT_FIG='|.bmp|.png|.jpeg|.jpg|';
  sLista:=StringReplace(_APP_EXT_VIDEO+_APP_EXT_FIG+_APP_EXT_PDF,'|',';*',[rfReplaceAll]);
  if LeftStr(sLista,1)=';' then
    while LeftStr(sLista,1)=';' do sLista:=RightStr(sLista, Length(sLista)-1);
  if RightStr(sLista,1)='*' then
    while RightStr(sLista,1)='*' do sLista:=LeftStr(sLista, Length(sLista)-1);
  if RightStr(sLista,1)=';' then
    while RightStr(sLista,1)=';' do sLista:=LeftStr(sLista, Length(sLista)-1);

  OpenDialog1.Filter:='Arquivos suportados|'+sLista;
  OpenDialog1.FileName:=FListaFileName;
  if OpenDialog1.Execute() then
  begin
    sArquivo:=OpenDialog1.FileName;
    if FileExists(sArquivo) then
    begin
      if IsFileAcceptable(sArquivo) then
      begin
        //Lista.Items.Add(sArquivo);
        Lista_ArqIncluir(sArquivo);
      end;
    end;
  end;
end;

procedure TfmPrincipal.Acao_ClipboardExecute(Sender: TObject);
var
  sArquivo:String;
  sExt:String;
  bSeVideo:Boolean;
  sys_last_error:String;
  sMsg:String;
begin
  sys_last_error:='';
  bSeVideo:=false;
  if Lista.ItemIndex<0 then
    sys_last_error:='Nenhum arquivo selecionado!';

  if sys_last_error='' then
  begin
    sArquivo:= lista.ItemS[Lista.ItemIndex].SubItems[0];
    sExt:=ExtractFileExt(sArquivo);
    bSeVideo:=ContainsText(_APP_EXT_VIDEO, sExt);
    sMsg:='';
    if not FileExists(sArquivo) then
    begin
      sys_last_error:='Arquivo não encontrado: '+sLineBreak+sArquivo;
    end;
  end;

  if (sys_last_error='') then
  begin
    try
      Clipboard.AsText:=sArquivo;
    except
    on e:exception do sys_last_error:=e.Message;
    end;
  end;


  if (sys_last_error='') and (Acao_Clipboard.Tag=0) then
  begin
    try
      sMsg:=ExtractFileName(sArquivo)+' foi copiado para clipboard, agora dê ctrl+v '+
        'na jenela de seleção de arquivo.';
      StatusMsg(sMsg);
      TrayIcon1.BalloonTitle:=ExtractFileName(sArquivo);
      TrayIcon1.BalloonHint:=sMsg;
      TrayIcon1.BalloonFlags := bfInfo;
      TrayIcon1.Visible := true;
      TrayIcon1.Animate := True;
      TrayIcon1.ShowBalloonHint;
      Acao_Clipboard.Tag:=1;
    finally

    end;
  end
  else
  begin
    StatusMsg(sys_last_error);
  end;


end;

procedure TfmPrincipal.Acao_ExplorerExecute(Sender: TObject);
var
  sArquivo:String;
  sys_last_error:String;
begin
  sys_last_error:='';
  if Lista.ItemIndex<0 then
    sys_last_error:='Selecione um arquivo para executar esta operação.';
  if sys_last_error='' then
  begin
    sArquivo:= lista.Items[Lista.ItemIndex].SubItems[0];
    if not FileExists(sArquivo) then
    begin
      sys_last_error:='Arquivo não encontrado: '+sLineBreak+sArquivo;
    end;
  end;

  if (sys_last_error='') then
  begin
    //ShellExecute(0, nil, 'explorer.exe', '/select,C:\WINDOWS\explorer.exe', nil, SW_SHOWNORMAL)
    ShellExecute(0, nil, 'explorer.exe', pWideChar('/select,'+sArquivo), nil, SW_SHOWNORMAL)
  end;

  if sys_last_error<>'' then
  begin
    StatusMsg(sys_last_error);
  end;
end;

procedure TfmPrincipal.Acao_FecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfmPrincipal.Acao_InicioExecute(Sender: TObject);
begin
  if SV_Inicio.Opened then
  begin
    SV_Inicio.Close;
    //SV_Inicio.Visible:=false;
  end
  else
  begin
    SV_Inicio.Open;
    //SV_Inicio.Visible:=true;
    //AutoSize:=true;
    //AutoSize:=false;
  end;
end;

procedure TfmPrincipal.Acao_Inserir_legendaExecute(Sender: TObject);
var
  sArquivo:String;
  sLegenda:String;
begin
  if Lista.ItemIndex>=0 then
  begin
    sArquivo:=lista.Items[Lista.ItemIndex].Caption;
    sLegenda:=FLegendas.Values[sArquivo];
    if InputQuery('Qual a legenda para a imagem "'+sArquivo+'"?', 'Legenda:', sLegenda) then
    begin
      sLegenda:=Trim(sLegenda);
      if sLegenda<>'' then
      begin
        if not SameText(FLegendas.Values[sArquivo], sLegenda) then
        begin
          FLegendas.Values[sArquivo]:=sLegenda;
          Fmodificado:=true;
        end;
      end;
    end;
  end;
end;

procedure TfmPrincipal.Acao_Media_AnteriorExecute(Sender: TObject);
begin
  if Lista.ItemIndex>0 then
    Lista.ItemIndex:=Lista.ItemIndex-1;
end;

procedure TfmPrincipal.Acao_Media_ProxExecute(Sender: TObject);
begin
  if Lista.ItemIndex<Pred(Lista.Items.Count) then
    Lista.ItemIndex:=Lista.ItemIndex+1;

end;

procedure TfmPrincipal.Acao_MinimizarExecute(Sender: TObject);
begin
  if self.windowstate = wsNormal then
    self.windowstate:=wsMinimized
  else
    self.windowstate:=wsNormal;
end;

procedure TfmPrincipal.Acao_Mover_AbaixoExecute(Sender: TObject);
var
  i:Integer;
  ItemPosterior: String;
  ItemAtual: String;
begin
  // mover para baixo
  i:=Lista.ItemIndex;
  if i<Pred(Lista.Items.Count) then
  begin
    try
      ItemPosterior:=Lista.Items[i+1].SubItems[0];
      ItemAtual:=Lista.Items[i].SubItems[0];
      Lista.Items[i+1].Caption:=ExtractFileName(ItemAtual);
      Lista.Items[i+1].SubItems[0]:=ItemAtual;
      Lista.Items[i].Caption:=ExtractFileName(ItemPosterior);
      Lista.Items[i].SubItems[0]:=ItemPosterior;
      Lista.ItemIndex:=i+1;
      FModificado:=true;
    finally

    end;
  end;
end;

procedure TfmPrincipal.Acao_Mover_AcimaExecute(Sender: TObject);
var
  i:Integer;
  ItemAnterior: String;
  ItemAtual: String;
begin
  // mover para cima
  i:=Lista.ItemIndex;
  if i>0 then
  begin
    try
      ItemAnterior:=Lista.Items[i-1].SubItems[0];
      ItemAtual:=Lista.Items[i].SubItems[0];
      Lista.Items[i-1].Caption:=ExtractFileName(ItemAtual);
      Lista.Items[i-1].SubItems[0]:=ItemAtual;
      Lista.Items[i].Caption:=ExtractFileName(ItemAnterior);
      Lista.Items[i].SubItems[0]:=ItemAnterior;
      Lista.ItemIndex:=i-1;
      FModificado:=true;
      StatusMsg('Dica: Você pode usar a tecla DEL para remover arquivos da lista.');
    finally

    end;
  end;

end;

procedure TfmPrincipal.Acao_RemoverExecute(Sender: TObject);
var
  i:Integer;
  ItemAtual: TListItem;
begin
  i:=Lista.ItemIndex;
  if i>=0 then
  begin
    ItemAtual:=Lista.Items[i];
    if SameText(TabFigura.Caption, ItemAtual.Caption) then
    begin
      figura.Picture:=nil;
    end;

    Lista.DeleteSelected;
    FModificado:=true;
    if i<=Pred(Lista.Items.Count) then
    begin
      Lista.ItemIndex:=i;
    end
    else
    begin
      if i-1<=Pred(Lista.Items.Count) then
        Lista.ItemIndex:=i-1;
    end;

  end;
end;

procedure TfmPrincipal.Acao_SalvarExecute(Sender: TObject);
begin
  SalvarLista;
end;

procedure TfmPrincipal.Acao_ZoomMaisExecute(Sender: TObject);
begin
  if Font.Size<20 then
    Font.Size:=Font.Size+1;
end;

procedure TfmPrincipal.Acao_ZoomMenosExecute(Sender: TObject);
begin
  if Font.Size>8 then
    Font.Size:=Font.Size-1;
end;



procedure TfmPrincipal.FiguraMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);

end;

procedure TfmPrincipal.FiguraTamanho(ATamOriginal: Boolean);
var
  sMsg:String;
begin
  sMsg:='';
  if SV_Inicio.Opened then
  begin
    SV_InicioOpened(nil);
  end
  else
  begin
    SV_InicioClosed(nil);
  end;

  if ATamOriginal then
    sMsg:='Você deu um duplo clique, agora verá o tamanho original da imagem.'
  else
    sMsg:='Você deu um duplo clique, agora verá o tamanho proporcional da imagem.';

  if sMsg<>'' then
  begin
    StatusMsg(sMsg);
    try
      TrayIcon1.BalloonTitle:='Importante:';
      TrayIcon1.BalloonHint:=sMsg;
      TrayIcon1.BalloonFlags := bfInfo;
      TrayIcon1.Visible := true;
      TrayIcon1.Animate := True;
      TrayIcon1.ShowBalloonHint;
    finally

    end;
  end;
end;

procedure TfmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WebBrowser1.ControlInterface._AddRef;
  FMeuPDF.ControlInterface._AddRef;
end;

procedure TfmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  {
  Abra "C:\Program Files (x86)\Embarcadero\Studio\20.0\source\vcl\Vcl.Consts.pas"
  e procure pelas constantes abaixo e as traduza como mostrado:
  SMsgDlgWarning = 'Advertência';
  SMsgDlgError = 'Erro';
  SMsgDlgInformation = 'Informação';
  SMsgDlgConfirm = 'Confirmação';  // Confirm
  SMsgDlgYes = '&Sim';
  SMsgDlgNo = '&Não';
  SMsgDlgOK = 'OK';
  SMsgDlgCancel = 'Cancelar';
  SMsgDlgHelp = '&Ajuda';
  SMsgDlgHelpNone = 'No help available';
  SMsgDlgHelpHelp = 'Help';
  SMsgDlgAbort = '&Abortar';
  SMsgDlgRetry = '&Repetir';
  SMsgDlgIgnore = '&Ignorar';
  SMsgDlgAll = '&Todos';
  SMsgDlgNoToAll = '&Não para todos';
  SMsgDlgYesToAll = 'Sim to &Todos';
  SMsgDlgClose = '&Fechar';

  cd "C:\Program Files (x86)\Embarcadero\Studio\20.0\source\vcl"
  dcc32.exe Vcl.Consts.pas /b /dReleaseCompilation -NU"C:\TEMP"
  Então copie Vcl.Consts.dcu para %ProgramFiles(x86)%\Embarcadero\Studio\20.0\lib\win32\release
  dcc32.exe Vcl.Consts.pas /b /dDebugCompilation -NU"C:\TEMP"
  Então copie Vcl.Consts.dcu para %ProgramFiles(x86)%\Embarcadero\Studio\20.0\lib\win32\release\debug

  dcc64.exe Vcl.Consts.pas /b /dReleaseCompilation -NU"C:\TEMP"
  Então copie Vcl.Consts.dcu para "%ProgramFiles(x86)%\Embarcadero\Studio\20.0\lib\win64\release"
  dcc64.exe Vcl.Consts.pas /b /dDebugCompilation -NU"C:\TEMP"
  Então copie Vcl.Consts.dcu para "%ProgramFiles(x86)%\Embarcadero\Studio\20.0\lib\win64\debug"


  Importante, diretorios citados são protegidos contra modificação, por isso não especificamos
   eles como o diretorio padrão, o UAC do Windows poderia nos barrar silenciosamente
   mesmo que tivessemos permissao de escrita nele. Contudo usando o Explorer e colando os
   arquivos gerados lá, o Explorer se elevaria permitindo ao usuario confirmar a gravação nos
   mesmos. Eu recomendo renomear o arquivo orginal para Vcl.Consts.dcu.ori para evitar a
   sobreposição. Perder em definitivo esse arquivo nos custaria a reinstalação do Delphi!
  }

  try
    CanClose:=true;
    if FModificado then
    begin
        if MsgDlg(
          'Deseja salvar antes de sair?',
          'A lista foi alterada',
          mtConfirmation,
          [mbYes, mbNo]) = mrYes then
        begin
          SalvarLista;
        end;
    end;

    WriteConfig;
    ModalResult:=mrClose;
  finally

  end;
end;



end.
