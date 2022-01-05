unit FormPdftoTxt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, frxClass,
  frxExportBaseDialog, frxExportPDF, frxExportText, frxOLE;

type
  TFPdftoTxt = class(TForm)
    BitBtn1: TBitBtn;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    OpenDialog1: TOpenDialog;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPdftoTxt: TFPdftoTxt;

implementation

{$R *.dfm}

procedure TFPdftoTxt.BitBtn1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
 begin
  frxReport1.LoadFromFile(OpenDialog1.FileName);
 end;
 frxReport1.showreport;
end;

end.
