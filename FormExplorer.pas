unit FormExplorer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.FileCtrl, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Imaging.pngimage, Vcl.ComCtrls, RzTreeVw, RzFilSys,
  RzShellCtrls, RzCmboBx, RzListVw, Vcl.WinXCtrls, ovccmbx, ovcdrcbx,
  Vcl.Buttons;

type
  TFExplorer = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    RzShellList1: TRzShellList;
    Image2: TImage;
    SplitView1: TSplitView;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Image3: TImage;
    FileOpenDialog1: TFileOpenDialog;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
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
 ProjNONS.RzBitBtn11.Enabled := true;
end;

procedure TFExplorer.BitBtn1Click(Sender: TObject);
var
seldir : string;
begin
  if not (RzShellList1.SelectedItem = nil) then
  begin
    if FileOpenDialog1.Execute then seldir := FileOpenDialog1.filename;
    if not (selDir = '') then MoveFile(pchar(RzShellList1.SelectedItem.PathName),
    pchar(seldir + '\' + RzShellList1.SelectedItem.FileName));
  end
  else MessageDlg('Impossível Exportar. Selecione um Item!',mtWarning,[mbYes],0);

end;

procedure TFExplorer.ComboBox1CloseUp(Sender: TObject);
begin
 case ComboBox1.ItemIndex of
 0: RzShellList1.ViewStyle := vsIcon;
 1: RzShellList1.ViewStyle := vsList;
 2: RzShellList1.ViewStyle := vsReport;
 3: RzShellList1.ViewStyle := vsSmallIcon;
 end;
end;

procedure TFExplorer.Image1Click(Sender: TObject);
begin
 ShowWindow(FExplorer.Handle, SW_RESTORE) ;
end;

procedure TFExplorer.Image2Click(Sender: TObject);
begin
 RzShellList1.GoUp(1);
end;

procedure TFExplorer.Image3Click(Sender: TObject);
begin
 if SplitView1.Opened then SplitView1.Close
 else SplitView1.Open;
end;

end.
