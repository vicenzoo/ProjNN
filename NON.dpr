program NON;

uses
  Vcl.Forms,
  PrincNN in 'PrincNN.pas' {ProjNN},
  FormVideo in 'FormVideo.pas' {FVideo},
  Versaoinfo in 'Versaoinfo.pas',
  FormTexto in 'FormTexto.pas' {FTexto},
  FormNav in 'FormNav.pas' {FNav},
  FormFiletoZip in 'FormFiletoZip.pas' {FFiletoZip};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TProjNN, ProjNN);
  Application.Run;
end.
