program ReuniaoOrganizador;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fmPrincipal},
  AcroPDFLib_TLB in 'AcroPDFLib_TLB.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Organizador de reunião';
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.Run;
end.
