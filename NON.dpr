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
  WMPLib_TLB in 'biblo\WMPLib_TLB.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TProjNN, ProjNN);
  Application.Run;
end.
