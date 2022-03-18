unit FormVideo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.MPlayer, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Grids, Vcl.Imaging.pngimage, RzBorder;

type
  TFVideo = class(TForm)
    Timer1: TTimer;
    SplitView1: TSplitView;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    ListView1: TListView;
    Panel2: TPanel;
    MediaPlayer1: TMediaPlayer;
    ProgressBar1: TProgressBar;
    Splitter1: TSplitter;
    Image3: TImage;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    RzLEDDisplay1: TRzLEDDisplay;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ListView1Click(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
      var DoDefault: Boolean);
  private
    function MSecToTime(const intTime: integer): string;
    procedure WMSysCommand(var Msg: TWMSysCommand);
      message WM_SYSCOMMAND;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVideo: TFVideo;
  i : integer;
  filename : string;

implementation

{$R *.dfm}

uses PrincNN;


procedure TFVideo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Image2Click(Sender);
  Action := caFree;
  ProjNONS.RzBitBtn1.Enabled := True;
end;

procedure TFVideo.WMSysCommand(var Msg: TWMSysCommand);
begin
  case Msg.CmdType of
    SC_MAXIMIZE:
    begin
    ShowWindow(FVideo.Handle, SW_MAXIMIZE) ;
    ProjNONS.SplitView1.Visible := false;
    ProjNONS.SplitView2.Visible := false;
    exit;
    end;
    SC_RESTORE:
    begin
    ShowWindow(FVideo.Handle, SW_RESTORE);
    ProjNONS.SplitView1.Visible := true;
    ProjNONS.SplitView2.Visible := true;
    exit;
    end;
  end;
  inherited;
end;

procedure TFVideo.BitBtn1Click(Sender: TObject);
var
 x,y : integer;
begin
  if OpenDialog1.Execute then
  begin
   for y := 0 to OpenDialog1.Files.Count - 1 do
   ListView1.AddItem(OpenDialog1.Files[y],ListView1);

   for X := 0 to ListView1.Items.Count -1 do
   begin
    mediaplayer1.filename := ListView1.Items.Item[X].Caption;
    MediaPlayer1.open;
    MediaPlayer1.Display:= Panel1;
    MediaPlayer1.DisplayRect := Panel1.ClientRect;
   end;
   MediaPlayer1.Play;
   Label1.Caption := MSecToTime(MediaPlayer1.Length);
   ProgressBar1.Max := MediaPlayer1.Length;
   timer1.Enabled := true;
   RzLEDDisplay1.Caption := 'Tocando agr: ' +
   ExtractFileName(ListView1.Items.Item[ListView1.Items.Count -1].Caption);
  end;
  SplitView1.Close;
end;

function TFVideo.MSecToTime (const intTime: integer):string ;
var intmsec :real;
begin
//o equivalente a 1 ms
intMSec := 1 / 24 / 60 / 60 / 1000;
//define o retorno com o formato Time
result := FormatDateTime('nn:ss', intTime * intMSec);
end;

procedure TFVideo.Image1Click(Sender: TObject);
begin
  if SplitView1.Opened then SplitView1.Close
  else SplitView1.Open;
end;

procedure TFVideo.Image2Click(Sender: TObject);
begin
 ProjNONS.SplitView1.Visible := true;
 ProjNONS.SplitView2.Visible := true;
end;

procedure TFVideo.Image3Click(Sender: TObject);
begin
 FVideo.Resize 
end;

procedure TFVideo.ListView1Click(Sender: TObject);
begin
 if not (listView1.Selected = nil)
 and not (listView1.Selected.Caption = mediaplayer1.filename ) then
 begin
  mediaplayer1.filename := listView1.Selected.Caption;
  MediaPlayer1.open;
  MediaPlayer1.Display:= Panel1;
  MediaPlayer1.DisplayRect := Panel1.ClientRect;
  ProgressBar1.Max := MediaPlayer1.Length;
  MediaPlayer1.Play;
  timer1.Enabled := true;
  Label1.Caption := MSecToTime(MediaPlayer1.Length);
  RzLEDDisplay1.Caption := 'Tocando agr: ' +
  ExtractFileName(listView1.Selected.Caption);
 end;
 SplitView1.Close;
end;

procedure TFVideo.MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
  var DoDefault: Boolean);
begin
 if Button = btStop then
 begin
  MediaPlayer1.Rewind;
  ProgressBar1.Position := 0;
 end;

end;

procedure TFVideo.Panel1DblClick(Sender: TObject);
begin
 //MediaPlayer1.Position := trunc(5 +  MediaPlayer1.Position)
end;

procedure TFVideo.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := MediaPlayer1.Position;
  MediaPlayer1.DisplayRect := Panel1.ClientRect;
  Label2.Caption := MSecToTime(MediaPlayer1.Position);
end;

end.
