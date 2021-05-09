program ReuniaoOrganizador;

uses
  Vcl.Forms,
  fprincipal in 'fprincipal.pas' {fmPrincipal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.Title := 'Organizador de Reuni�o';
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.Run;
end.
