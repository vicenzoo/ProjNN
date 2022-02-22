unit FormLoadPDFFile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.OleCtrls, AcroPDFLib_TLB, Vcl.Imaging.pngimage;

type
  TFLoadPDFFile = class(TForm)
    OpenDialog1: TOpenDialog;
    AcroPDF1: TAcroPDF;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLoadPDFFile: TFLoadPDFFile;

implementation

{$R *.dfm}

uses PrincNN;

procedure TFLoadPDFFile.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ProjNONS.Button7.Enabled := True;
end;

procedure TFLoadPDFFile.Image1Click(Sender: TObject);
begin
 if opendialog1.execute then
 AcroPDF1.src := OpenDialog1.FileName;
end;

procedure TFLoadPDFFile.Image2Click(Sender: TObject);
begin
 ShowWindow(FLoadPDFFile.Handle, SW_RESTORE) ;
end;

end.