unit FormFileDownload;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,URLMon, ShellApi,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls;

type
  TFFiledownload = class(TForm)
    OpenDialog1: TOpenDialog;
    FileOpenDialog1: TFileOpenDialog;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image2Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
  private
    function DownloadFile(SourceFile, DestFile: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFiledownload: TFFiledownload;

implementation

{$R *.dfm}

uses PrincNN;

procedure TFFiledownload.Edit2Exit(Sender: TObject);
begin
 if not(DirectoryExists(Edit2.Text)) then
 begin
   Edit2.Text := GetCurrentDir;
 end;
end;

procedure TFFiledownload.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ProjNONS.Button11.Enabled := True;
  Action := caFree;
end;

procedure TFFiledownload.FormCreate(Sender: TObject);
var
 i : Integer;
 lista: TStringList;
begin
 Edit2.Text := GetCurrentDir;

 i:= 0;
 lista := TStringList.Create;
 lista.Clear;
 ExtractStrings(['|'], [], PChar(OpenDialog1.Filter), lista);
 while i <> lista.Count do
 begin
  ComboBox1.Items.Add(lista[i]);
  i:=i+1;
 end;
 lista.Free;
end;

procedure TFFiledownload.Image1Click(Sender: TObject);
begin
 if FileOpenDialog1.Execute then
 begin
   Edit2.Clear;
   Edit2.Text := FileOpenDialog1.FileName;
 end;
end;

function TFFiledownload.DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile), 0, nil) = 0;
  except
    Result := False;
  end;
end;

procedure TFFiledownload.Image2Click(Sender: TObject);
var
dest : string;
begin
 if Edit1.Text = '' then
 begin
   MessageDlg('Insira uma Url!',mtWarning,[mbOk],0);
   Edit1.SetFocus;
   exit;
 end;
  if Edit3.Text = '' then
 begin
   MessageDlg('Insira um nome para o Arquivo!',mtWarning,[mbOk],0);
   Edit3.SetFocus;
   exit;
 end;
 dest := Edit2.Text+'\'+Edit3.Text+ComboBox1.Text;
 ShowMessage(edit1.Text);
 ShowMessage(dest);
 DownloadFile(Edit1.Text,dest)
end;


end.
