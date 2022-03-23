program NON;

uses
  Vcl.Forms,
  Windows,
  Vcl.Themes,
  Vcl.Styles,
  PrincNN in 'PrincNN.pas' {ProjNONS},
  FormVideo in 'FormVideo.pas' {FVideo},
  Versaoinfo in 'Versaoinfo.pas',
  FormTexto in 'FormTexto.pas' {FTexto},
  FormNav in 'FormNav.pas' {FNav},
  FormFiletoZip in 'FormFiletoZip.pas' {FFiletoZip},
  FormHub in 'FormHub.pas' {FHub},
  FormAlarme in 'FormAlarme.pas' {FAlarme},
  FormSend in 'FormSend.pas' {FSend},
  FormMusica in 'FormMusica.pas' {FMusica},
  FormLoadPDFFile in 'FormLoadPDFFile.pas' {FLoadPDFFile},
  FormExplorer in 'FormExplorer.pas' {FExplorer},
  FormTextaux in 'FormTextaux.pas' {Ftxtaux},
  FormClock in 'FormClock.pas' {FClock},
  FormFileDownload in 'FormFileDownload.pas' {FFiledownload},
  FormSplash in 'FormSplash.pas' {FSplash},
  FormPaint in 'FormPaint.pas' {FDraw},
  FormVideoVLC in 'FormVideoVLC.pas' {FVideoVLC};

{$R *.res}

begin
  Application.Initialize;
  FSplash := TFSplash.Create(Application);
  FSplash.Show;
  FSplash.Refresh;
  Sleep(1000);
  FSplash.Close;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TProjNONS, ProjNONS);
  Application.Run;
end.
