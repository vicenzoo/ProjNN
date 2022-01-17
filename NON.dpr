program NON;

uses
  Vcl.Forms,
  PrincNN in 'PrincNN.pas' {ProjNONS},
  FormVideo in 'FormVideo.pas' {FVideo},
  Versaoinfo in 'Versaoinfo.pas',
  FormTexto in 'FormTexto.pas' {FTexto},
  FormNav in 'FormNav.pas' {FNav},
  FormFiletoZip in 'FormFiletoZip.pas' {FFiletoZip},
  FormHub in 'FormHub.pas' {FHub},
  FormAlarme in 'FormAlarme.pas' {FAlarme},
  Vcl.Themes,
  Vcl.Styles,
  FormSend in 'FormSend.pas' {FSend},
  FormMusica in 'FormMusica.pas' {FMusica},
  FormLoadPDFFile in 'FormLoadPDFFile.pas' {FLoadPDFFile},
  FormExplorer in 'FormExplorer.pas' {FExplorer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TProjNONS, ProjNONS);
  Application.Run;
end.
