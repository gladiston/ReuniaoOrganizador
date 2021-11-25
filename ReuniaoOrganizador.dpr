program ReuniaoOrganizador;

uses
  Vcl.Forms,
  fprincipal in 'fprincipal.pas' {fmPrincipal},
  fquero_resposta in 'fquero_resposta.pas' {fmQuero_Resposta};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Organizador de reunião';
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.Run;
end.
