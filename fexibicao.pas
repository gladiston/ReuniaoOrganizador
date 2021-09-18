unit fexibicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw,
  WebView2, Winapi.ActiveX, Vcl.Edge;

type
  TfmExibicao = class(TForm)
    lblLegenda: TLabel;
    Navegador: TEdgeBrowser;
    procedure FormCreate(Sender: TObject);
    procedure NavegadorFrameNavigationStarting(Sender: TCustomEdgeBrowser;
      Args: TNavigationStartingEventArgs);
    procedure NavegadorFrameNavigationCompleted(Sender: TCustomEdgeBrowser;
      IsSuccess: Boolean; WebErrorStatus: TOleEnum);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure PermitirArrastarjanela(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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

procedure TfmExibicao.CreateParams(var Params: TCreateParams);
begin
  inherited;
    Params.Style := Params.Style or WS_THICKFRAME;
end;

procedure TfmExibicao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  try
    CanClose := true;
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
end;

procedure TfmExibicao.PermitirArrastarjanela(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfmExibicao.NavegadorFrameNavigationCompleted(
  Sender: TCustomEdgeBrowser; IsSuccess: Boolean; WebErrorStatus: TOleEnum);
begin
  FCarregamentoCompleto:=true;
end;

procedure TfmExibicao.NavegadorFrameNavigationStarting(
  Sender: TCustomEdgeBrowser; Args: TNavigationStartingEventArgs);
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
  lblLegenda.Visible:=(FLegenda<>'');
end;

end.
