unit fexibicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw,
  WebView2, Winapi.ActiveX, Vcl.Edge, Vcl.Buttons, Vcl.ExtCtrls, System.Actions,
  Vcl.ActnList;

type
  TfmExibicao = class(TForm)
    Navegador: TEdgeBrowser;
    pnlLegenda: TPanel;
    BtnActPrincipal_Hide: TSpeedButton;
    lblLegenda: TLabel;
    ActionList1: TActionList;
    actMedia_Legenda: TAction;
    actMedia_Ir_Anterior: TAction;
    actMedia_Ir_Proximo: TAction;
    actMedia_Proporcional: TAction;
    actMedia_Bordas: TAction;
    actMedia_Stop: TAction;
    ActPrincipal_Hide: TAction;
    Splitter1: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure PermitirArrastarjanela(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NavegadorNavigationCompleted(Sender: TCustomEdgeBrowser;
      IsSuccess: Boolean; WebErrorStatus: TOleEnum);
    procedure NavegadorNavigationStarting(Sender: TCustomEdgeBrowser;
      Args: TNavigationStartingEventArgs);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lblLegendaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actMedia_LegendaExecute(Sender: TObject);
    procedure actMedia_Ir_AnteriorExecute(Sender: TObject);
    procedure actMedia_Ir_ProximoExecute(Sender: TObject);
    procedure actMedia_ProporcionalExecute(Sender: TObject);
    procedure actMedia_BordasExecute(Sender: TObject);
    procedure actMedia_StopExecute(Sender: TObject);
    procedure ActPrincipal_HideExecute(Sender: TObject);
    procedure lblLegendaClick(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  private
    { Private declarations }
    FCarregamentoCompleto: Boolean;
    FLegenda: String;
    procedure SetCarregamentoCompleto(const Value: Boolean);
    procedure ReadConfig;
    procedure WriteConfig;
    procedure SetLegenda(const Value: String);
  public
    { Public declarations }
  published
    property CarregamentoCompleto:Boolean read FCarregamentoCompleto write SetCarregamentoCompleto;
    property Legenda:String read FLegenda write SetLegenda;
    procedure Titlebar_Hide;
    procedure Titlebar_Show;
  end;

var
  fmExibicao: TfmExibicao;

implementation
uses
  inifiles,
  StrUtils,
  fprincipal;

{$R *.dfm}

{ TfmExibicao }

procedure TfmExibicao.actMedia_BordasExecute(Sender: TObject);
begin
  fmPrincipal.actMedia_BordasExecute(Sender);
end;

procedure TfmExibicao.actMedia_Ir_AnteriorExecute(Sender: TObject);
begin
  fmPrincipal.actMedia_Ir_AnteriorExecute(Sender);
end;

procedure TfmExibicao.actMedia_Ir_ProximoExecute(Sender: TObject);
begin
  fmPrincipal.actMedia_Ir_ProximoExecute(Sender);
end;

procedure TfmExibicao.actMedia_LegendaExecute(Sender: TObject);
begin
  fmPrincipal.actMedia_LegendaExecute(Sender);
end;

procedure TfmExibicao.actMedia_ProporcionalExecute(Sender: TObject);
begin
  fmPrincipal.actMedia_ProporcionalExecute(Sender);
end;

procedure TfmExibicao.actMedia_StopExecute(Sender: TObject);
begin
  fmPrincipal.actMedia_StopExecute(Sender);
end;

procedure TfmExibicao.ActPrincipal_HideExecute(Sender: TObject);
begin
  fmPrincipal.ActPrincipal_HideExecute(Sender);
end;

procedure TfmExibicao.CreateParams(var Params: TCreateParams);
begin
  inherited;
    Params.Style := Params.Style or WS_THICKFRAME;
end;

procedure TfmExibicao.FormActivate(Sender: TObject);
begin
  Titlebar_Hide;
end;

procedure TfmExibicao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  try
    if not fmPrincipal.Showing then
      fmPrincipal.Show;
    CanClose := (fmPrincipal.Showing);
    WriteConfig;
    ModalResult := mrClose;
    Navegador.Navigate('blank://');
  finally

  end;
end;

procedure TfmExibicao.FormCreate(Sender: TObject);
begin
  //navegador.BrowserExecutableFolder := 'D:\Downloads\microsoft.web.webview2.1.0.961.33';
  lblLegenda.Caption:='';
  Self.BorderStyle:=bsNone; // bsNone ou  bsSizeable
  FCarregamentoCompleto:=false;
  Hide;
  ReadConfig;
  //Navegador.StatusBarEnabled := false;
  ActiveControl:=Navegador;
  BtnActPrincipal_Hide.Caption:='';

end;

procedure TfmExibicao.FormShow(Sender: TObject);
begin
  //
end;

procedure TfmExibicao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {if (Key=VK_F9) or (Key=Ord('H')) or (Key=Ord('h'))  then
  begin
    fmPrincipal.ActPrincipal_HideExecute(nil);
  end;
  if (Key=Ord('Q')) or (Key=Ord('q')) then
  begin
    fmPrincipal.actMedia_Ir_AnteriorExecute(Sender);
  end;
  if (Key=Ord('W')) or (Key=Ord('w'))  then
  begin
    fmPrincipal.actMedia_Ir_ProximoExecute(Sender);
  end;
  if (Key=Ord('S'))or (Key=Ord('s'))  then
  begin
    fmPrincipal.actMedia_StopExecute(Sender);
  end;}
end;

procedure TfmExibicao.lblLegendaClick(Sender: TObject);
begin
  try
    ActiveControl:=Self;
  finally

  end;
end;

procedure TfmExibicao.lblLegendaDblClick(Sender: TObject);
begin
  fmPrincipal.actMedia_LegendaExecute(nil);
end;

procedure TfmExibicao.PermitirArrastarjanela(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfmExibicao.NavegadorNavigationCompleted(Sender: TCustomEdgeBrowser;
  IsSuccess: Boolean; WebErrorStatus: TOleEnum);
begin
 FCarregamentoCompleto:=true;
end;

procedure TfmExibicao.NavegadorNavigationStarting(Sender: TCustomEdgeBrowser;
  Args: TNavigationStartingEventArgs);
begin
  FCarregamentoCompleto:=false;
end;

procedure TfmExibicao.ReadConfig;
var
  MyIni: TIniFile;
begin
  try
    MyIni := TIniFile.Create(fmPrincipal.ConfigFile);
    Top := MyIni.ReadInteger('Exibicao', 'Top', Self.Top);
    Left := MyIni.ReadInteger('Exibicao', 'Left', Self.Left);
    Width := MyIni.ReadInteger('Exibicao', 'Width', Self.Width);
    Height := MyIni.ReadInteger('Exibicao', 'Height', Self.Height);
  finally
    if Assigned(MyIni) then
      FreeAndNil(MyIni);
  end;

end;

procedure TfmExibicao.WriteConfig;
var
  MyIni: TIniFile;
begin
  try
    MyIni := TIniFile.Create(fmPrincipal.ConfigFile);
    MyIni.WriteInteger('Exibicao', 'Top', Self.Top);
    MyIni.WriteInteger('Exibicao', 'Left', Self.Left);
    MyIni.WriteInteger('Exibicao', 'Width', Self.Width);
    MyIni.WriteInteger('Exibicao', 'Height', Self.Height);
  finally
    if Assigned(MyIni) then
      FreeAndNil(MyIni);
  end;

end;

procedure TfmExibicao.SetCarregamentoCompleto(const Value: Boolean);
begin
  FCarregamentoCompleto := Value;
end;



procedure TfmExibicao.SetLegenda(const Value: String);
const
  _LineHeight=22;
var
  iCountLineBreak:Cardinal;
  iPos:Integer;
begin
  FLegenda :=Trim(Value);
  {lblLegenda.Height:=_LineHeight*2;
  iPos:=Pos(sLineBreak,FLegenda);
  if iPos>0 then
  begin
    iCountLineBreak:=0;
    while iPos>0 do
    begin
      Inc(iCountLineBreak);
      iPos:=PosEx(sLineBreak,FLegenda, iPos+1);
    end;
    lblLegenda.AutoSize:=false;
    lblLegenda.Height:=_LineHeight*iCountLineBreak;
    lblLegenda.AutoSize:=true;
  end;}
  lblLegenda.Caption:=FLegenda;
  //pnlLegenda.Visible:=(lblLegenda.Caption<>'');
end;

procedure TfmExibicao.Titlebar_Hide;
var
  Style: Longint;
begin
  //if Self.BorderStyle = bsNone
  //  then Exit;
  Style := GetWindowLong(Self.Handle, GWL_STYLE);
  if (Style and WS_CAPTION) = WS_CAPTION then
  begin
    case Self.BorderStyle of
      bsSingle,
      bsSizeable: SetWindowLong(Self.Handle, GWL_STYLE, Style and
          (not (WS_CAPTION)) or WS_BORDER);
      bsDialog: SetWindowLong(Self.Handle, GWL_STYLE, Style and
          (not (WS_CAPTION)) or DS_MODALFRAME or WS_DLGFRAME);
    end;
    Self.Height := Self.Height - GetSystemMetrics(SM_CYCAPTION);
    Self.Refresh;
  end;

end;

procedure TfmExibicao.Titlebar_Show;
var
  Style: Longint;
begin
  //if Self.BorderStyle = bsNone
  //  then Exit;
  Style := GetWindowLong(Self.Handle, GWL_STYLE);
  if (Style and WS_CAPTION) <> WS_CAPTION then
  begin
    case Self.BorderStyle of
      bsSingle,
      bsSizeable: SetWindowLong(Self.Handle, GWL_STYLE, Style or WS_CAPTION or
          WS_BORDER);
      bsDialog: SetWindowLong(Self.Handle, GWL_STYLE,
          Style or WS_CAPTION or DS_MODALFRAME or WS_DLGFRAME);
    end;
    Self.Height := Self.Height + GetSystemMetrics(SM_CYCAPTION);
    Self.Refresh;
  end;

end;

end.
