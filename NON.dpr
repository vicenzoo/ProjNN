program NON;

uses
  Vcl.Forms,
  PrincNN in 'PrincNN.pas' {ProjNN},
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
  FormMusica in 'FormMusica.pas' {FMusica};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TProjNN, ProjNN);
  Application.Run;
end.
