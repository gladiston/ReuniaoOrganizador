unit fquero_resposta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmQuero_Resposta = class(TForm)
    lblPrompt: TLabel;
    memoTexto: TMemo;
    Panel1: TPanel;
    BtnConfirmar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function Quero_Resposta(APrompt:String; var AVarResposta:String; ADefValue:String=''):Boolean;

var
  fmQuero_Resposta: TfmQuero_Resposta;

implementation

{$R *.dfm}
function Quero_Resposta(APrompt:String; var AVarResposta:String; ADefValue:String=''):Boolean;
begin
  Result:=false;
  fmQuero_Resposta:=nil;
  try
    fmQuero_Resposta:=TfmQuero_Resposta.Create(nil);
    fmQuero_Resposta.lblPrompt.Caption:=APrompt;
    fmQuero_Resposta.ActiveControl:=fmQuero_Resposta.memoTexto;
    fmQuero_Resposta.memoTexto.Text:=ADefValue;
    fmQuero_Resposta.ShowModal;
    if fmQuero_Resposta.ModalResult=mrOk then
    begin
      Result:=true;
      AVarResposta:=fmQuero_Resposta.memoTexto.Text;
    end;
  finally

  end;
  fmQuero_Resposta.Free;
end;

procedure TfmQuero_Resposta.BtnConfirmarClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure TfmQuero_Resposta.FormCreate(Sender: TObject);
begin
  Self.Caption:='Importante:';
  Self.Position:=poMainFormCenter;
  lblPrompt.Caption:='';
  memoTexto.Text:='';
end;

procedure TfmQuero_Resposta.FormShow(Sender: TObject);
begin
  //
end;

end.
