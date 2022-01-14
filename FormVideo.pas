unit FormVideo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.MPlayer, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Grids, Vcl.Imaging.pngimage;

type
  TFVideo = class(TForm)
    Timer1: TTimer;
    SplitView1: TSplitView;
    OpenDialog1: TOpenDialog;
    Image1: TImage;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    Panel3: TPanel;
    MediaPlayer1: TMediaPlayer;
    Image2: TImage;
    ListView1: TListView;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ListView1Click(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
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
  Action := caFree;
  ProjNONS.Button1.Enabled := True;
end;

procedure TFVideo.FormCreate(Sender: TObject);
begin
 //Image1Click(sender);
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
   ProgressBar1.Max := MediaPlayer1.Length;
   timer1.Enabled := true;
  end;
end;


procedure TFVideo.Image1Click(Sender: TObject);
begin
  if SplitView1.Opened then
  begin
   SplitView1.Close;
   MediaPlayer1.VisibleButtons := [btPlay,btPause];
   ListView1.Width := 50;
  end
  else
  begin
   SplitView1.Open;
   MediaPlayer1.VisibleButtons := [btPlay,btPause,btStop,btStep,btBack];
  // ListView1.Items.Item.
  end;
end;

procedure TFVideo.Image2Click(Sender: TObject);
begin
 ShowWindow(FVideo.Handle, SW_RESTORE) ;
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
end;

end.
