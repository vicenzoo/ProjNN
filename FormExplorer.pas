unit FormExplorer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.FileCtrl, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Imaging.pngimage, Vcl.ComCtrls, RzTreeVw, RzFilSys,
  RzShellCtrls, RzCmboBx, RzListVw;

type
  TFExplorer = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    RzShellList1: TRzShellList;
    Image2: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
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
 ProjNONS.Button9.Enabled := true;
end;

procedure TFExplorer.Image1Click(Sender: TObject);
begin
 ShowWindow(FExplorer.Handle, SW_RESTORE) ;
end;

procedure TFExplorer.Image2Click(Sender: TObject);
begin
 RzShellList1.GoUp(1);
end;

end.
