unit FormFiletoZip;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,System.Zip, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.Imaging.pngimage;

type
  TFFiletoZip = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    ListBox1: TListBox;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    Splitter1: TSplitter;
    Image2: TImage;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure EventoOnProgress(Sender: TObject; FileName: string;
      Header: TZipHeader; Position: Int64);
  public
    { Public declarations }
  end;

var
  FFiletoZip: TFFiletoZip;


implementation

{$R *.dfm}

uses PrincNN;

procedure TFFiletoZip.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ProjNONS.Button5.Enabled := True;
end;

procedure TFFiletoZip.FormCreate(Sender: TObject);
begin
 Edit1.Text := GetCurrentDir;
end;

procedure TFFiletoZip.Image2Click(Sender: TObject);
begin
 ShowWindow(FFiletoZip.Handle, SW_RESTORE) ;
end;

procedure TFFiletoZip.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = 46 then
 begin
   ListBox1.Items.Delete(ListBox1.ItemIndex);
   if ListBox1.Items.Count = 0 then BitBtn2.Enabled := false;
 end;
end;

procedure TFFiletoZip.Edit1Exit(Sender: TObject);
begin
 if (Edit1.Text = '') or (Edit1.Text = ' ') then Edit1.Text := GetCurrentDir;
 if not (DirectoryExists(Edit1.Text)) then
 begin
   ShowMessage('Este Diretório não Existe.');
   Edit1.Text := GetCurrentDir;
 end;
end;


procedure TFFiletoZip.BitBtn1Click(Sender: TObject);
var
 selfile : string;
begin
  ListBox1.Clear;
  ProgressBar1.Position := 0;
  Label4.Caption := '';
 if OpenDialog1.Execute then
 begin
   for selfile in OpenDialog1.Files do
   ListBox1.Items.Add(selfile);
   BitBtn2.Enabled := true;
 end;
end;

procedure TFFiletoZip.BitBtn2Click(Sender: TObject);
var
 selfile2 : string;
 ZipFile: TZipFile;
begin
  if (Edit2.Text = '') or (Edit2.Text = ' ') then
  begin
   MessageDlg('Insira um nome para o Arquivo compactado.',mtWarning,[mbOK],0);
   Edit2.SetFocus;
   exit;
  end;
  ZipFile := TZipFile.Create;
  ZipFile.OnProgress := EventoOnProgress;
  ZipFile.Open(Edit1.Text + '\' + Edit2.Text +'.zip', zmWrite);
  for selfile2 in ListBox1.Items do
  begin
    ZipFile.Add(selfile2);
  end;
  ZipFile.Free;
  BitBtn2.Enabled := false;
end;


procedure TFFiletoZip.EventoOnProgress(Sender: TObject; FileName: string; Header: TZipHeader; Position: Int64);
var
 PorcentagemArquivo: real;
begin
 Application.ProcessMessages;
 PorcentagemArquivo := Position / Header.UncompressedSize * 100;
 ProgressBar1.Position := Trunc(PorcentagemArquivo);
 if ProgressBar1.Position = ProgressBar1.Max then Label4.Caption := 'Concluído!'
 else Label4.Caption := FormatFloat('#.## %', PorcentagemArquivo);
end;



end.
