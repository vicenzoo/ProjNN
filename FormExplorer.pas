unit FormExplorer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.FileCtrl, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Imaging.pngimage;

type
  TFExplorer = class(TForm)
    Panel1: TPanel;
    FileListBox1: TFileListBox;
    Panel2: TPanel;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    PopupMenu1: TPopupMenu;
    MoverArquivo1: TMenuItem;
    DeletarArquivo1: TMenuItem;
    Panel3: TPanel;
    Image1: TImage;
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure DriveComboBox1Change(Sender: TObject);
    procedure MoverArquivo1Click(Sender: TObject);
    procedure FileListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DeletarArquivo1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExplorer: TFExplorer;

implementation

{$R *.dfm}

uses PrincNN;

procedure TFExplorer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
 ProjNONS.Button9.Enabled := true;
end;

procedure TFExplorer.Image1Click(Sender: TObject);
begin
 ShowWindow(FExplorer.Handle, SW_RESTORE) ;
end;

procedure TFExplorer.DirectoryListBox1Change(Sender: TObject);
begin
 DriveComboBox1.DirList := DirectoryListBox1;
 DirectoryListBox1.FileList  := FileListBox1;
end;

procedure TFExplorer.DriveComboBox1Change(Sender: TObject);
begin
 DirectoryListBox1.Drive := DriveComboBox1.Drive;
end;

procedure TFExplorer.FileListBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then FileListBox1.PopupMenu := PopupMenu1;
end;


procedure TFExplorer.MoverArquivo1Click(Sender: TObject);
var
seldir : string;
I: Integer;
begin
  SelectDirectory('Selecione uma pasta', 'C:\', selDir);
  i := FileListBox1.ItemIndex;
  if (MoveFile(pchar(FileListBox1.FileName),pchar(seldir + '\' + FileListBox1.Items[i])))
  and (seldir = ' ') then
  ShowMessage('Movido com Sucesso! ' + seldir);
end;

procedure TFExplorer.DeletarArquivo1Click(Sender: TObject);
var
I: Integer;
begin
  i := FileListBox1.ItemIndex;
  if MessageDlg('Deseja deletar o Arquivo ' + FileListBox1.Items[i]+ '.',mtWarning
  ,[mbYes,mbno],0) = mrYes then
  begin
    DeleteFile(FileListBox1.FileName);
    ShowMessage('Deletado!');
  end;
end;

end.
