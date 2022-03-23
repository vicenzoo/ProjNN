unit FormVideoVLC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, AXVLC_TLB, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.MPlayer, Vcl.StdCtrls, RzBorder, Vcl.Imaging.pngimage,
  Vcl.WinXCtrls, Vcl.Buttons, RzButton;

type
  TFVideoVLC = class(TForm)
    Splitter1: TSplitter;
    SplitView1: TSplitView;
    Image3: TImage;
    RzLEDDisplay1: TRzLEDDisplay;
    ListView1: TListView;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    VLCPlugin21: TVLCPlugin2;
    Panel1: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    Image2: TImage;
    Image1: TImage;
    Image4: TImage;
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure ListView1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVideoVLC: TFVideoVLC;

implementation

{$R *.dfm}

uses PrincNN;

procedure TFVideoVLC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ProjNONS.RzBitBtn0.Enabled := True;
end;

procedure TFVideoVLC.Image1Click(Sender: TObject);
begin
  if SplitView1.Opened then SplitView1.Close
  else SplitView1.Open;
end;

procedure TFVideoVLC.Image2Click(Sender: TObject);
begin
 if Panel1.Visible = true then Panel1.Visible := false
 else Panel1.Visible := true
end;

procedure TFVideoVLC.Image3Click(Sender: TObject);
var
fnamePr,fname:WideString;
id,y,x:Integer;
begin
 if OpenDialog1.Execute() then
 begin
   VLCPlugin21.playlist.stop;
   VLCPlugin21.playlist.clear;
   ListView1.Items.Clear;
   for y := 0 to OpenDialog1.Files.Count - 1 do
   ListView1.AddItem(OpenDialog1.Files[y],ListView1);

 for x := 0 to ListView1.Items.Count -1 do
  begin
   fnamePr:='file:///';   //For local files we have to add this in the prefix of file name
   fname:=ListView1.Items.Item[X].Caption;
   fname:=StringReplace(fname,'/','\\',[rfReplaceAll]) ;
   fname:=fnamePr+fname;
   VLCPlugin21.playlist.stop; //stop playback
   VLCPlugin21.playlist.clear;//clear playlist.You don't need to do this, you can just
   id:=VLCPlugin21.playlist.add(PChar(fname),null,null);
   VLCPlugin21.playlist.playItem(id);
  end;
  RzLEDDisplay1.Caption := 'Tocando agr: ' +
  ExtractFileName(ListView1.Items.Item[ListView1.Items.Count -1].Caption);
 end;

end;

procedure TFVideoVLC.ListView1Click(Sender: TObject);
var
fnamePr:WideString;
fname:WideString;
id:Integer;
begin
if ListView1.SelCount<>0 then
begin
fnamePr:='file:///';
fname:=listView1.Selected.Caption;
fname:=StringReplace(fname,'/','\\',[rfReplaceAll]) ;
fname:=fnamePr+fname;
VLCPlugin21.playlist.stop;
VLCPlugin21.playlist.clear;
id:=VLCPlugin21.playlist.add(PChar(fname),null,null);
VLCPlugin21.playlist.playItem(id);
end;
end;

procedure TFVideoVLC.BitBtn1Click(Sender: TObject);
var
id:Integer;
begin
VLCPlugin21.playlist.stop;
VLCPlugin21.playlist.clear;
id:=VLCPlugin21.playlist.add(PChar(Edit1.Text),null,null);
VLCPlugin21.playlist.playItem(id);
end;


end.
