program ReuniaoOrganizador;

uses
  Vcl.Forms,
  fprincipal in 'fprincipal.pas' {fmPrincipal},
  fexibicao in 'fexibicao.pas' {fmExibicao},
  fquero_resposta in 'fquero_resposta.pas' {fmQuero_Resposta};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.CreateForm(TfmExibicao, fmExibicao);
  Application.Run;
end.
