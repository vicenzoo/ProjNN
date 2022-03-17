unit FormPaint;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtDlgs, RzPanel, RzBorder, Vcl.WinXCtrls, Vcl.Imaging.pngimage,Vcl.Imaging.jpeg;

type
  TFDraw = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    Image1: TImage;
    ToolButton2: TToolButton;
    OpenDialog1: TOpenDialog;
    SplitView1: TSplitView;
    RzColorPicker1: TRzColorPicker;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    OpenDialog2: TOpenDialog;
    ToolButton7: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure RzColorPicker1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure SplitView1Closing(Sender: TObject);
  private
    { Private declarations }
    x1,y1,x2,y2,toolInUse: integer;
    holdingArea: Tbitmap;
    holdingSomething: Boolean;
    r1,r2: Trect;
    procedure Capture(x1, y1, x, y: integer);
    procedure buttonsinuse;
    procedure isBrush;
  public
    { Public declarations }
  end;

var
  FDraw: TFDraw;

implementation

{$R *.dfm}

uses PrincNN;

procedure TFDraw.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ProjNONS.Button12.Enabled := True;
end;

procedure TFDraw.FormCreate(Sender: TObject);
begin
   Image1.Canvas.Pen.Color := RzColorPicker1.DefaultColor;
   holdingSomething := false;
end;

procedure TFDraw.isBrush();
begin
  if (toolInUse = 4) then Image1.canvas.pen.color := clWhite
  else Image1.Canvas.Pen.Color := RzColorPicker1.SelectedColor;
end;

procedure TFDraw.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  with image1.canvas do moveto(x,y);
  x1 := x; y1 := y;    {remember starting point}
  toolInUse := 0;
  if ToolButton1.down then toolInUse := 1;
  If ToolButton4.down then
   begin
    toolInUse := 2;
    image1.canvas.brush.style := bsClear;
   end;
  If ToolButton5.down then
   begin
    toolInUse := 3;
    image1.canvas.brush.style := bsClear;
   end;
   If ToolButton6.down then
   begin
    toolInUse := 4;
    image1.canvas.brush.style := bsClear;
   end;
   If ToolButton7.down then
   begin
    toolInUse := 5;
   end;
   isBrush;
end;

Procedure TFDraw.Capture(x1,y1,x,y: integer);
begin
  x2 := x; y2 := y; {remember this spot}
  holdingArea := Tbitmap.create;
  holdingArea.width := abs(x2-x1) + 2;
  holdingArea.height := abs(y2-y1) + 2;

  With R1 do
   begin
    {find left & right sides of rectangle to capture}
    if x1 < x2 then begin left := x1; right := x2+1 end
               else begin left := x2; right := x1+1 end;
    {find top & bottom of rectangle to capture}
    if y1 < y2 then begin top:=y1-1; bottom := y2+1 end
             else begin top := y2-1; bottom := y1+1 end;
   end;
  With R2 do
   begin
     left := 0; top := 0; right := R1.right-R1.left;
     bottom := R1.bottom-R1.top
   end;
  With holdingArea.canvas do
    copyrect(R2,Image1.canvas,R1);
  holdingSomething := true;
end;

procedure TFDraw.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
If toolInUse = 1 then With image1.canvas do lineto(x,y);
case toolInUse of
2:
begin            {-- retangulo --}
 if holdingSomething then
 begin
  with image1.canvas do
    copyrect(R1,holdingArea.canvas,R2);
  holdingArea.free;
 end;
 Capture(x1,y1,x,y);
 image1.canvas.rectangle(x1,y1,x2,y2);
end;
3:
begin             {-- circulo --}
 if holdingSomething then
 begin
  with image1.canvas do
    copyrect(R1,holdingArea.canvas,R2);
  holdingArea.free;
 end;
 Capture(x1,y1,x,y);
 image1.canvas.Ellipse(x1,y1,x2,y2);
end;
4:
begin
  if holdingSomething then
 begin
  with image1.canvas do
    copyrect(R1,holdingArea.canvas,R2);
  holdingArea.free;
 end;
 Capture(x1,y1,x,y);
 image1.canvas.Rectangle(x-50,y-50,x,y);
end;
end;
end;

procedure TFDraw.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  case toolInUse of
  02:
  begin
    if holdingSomething then
      begin
        with image1.canvas do
          copyrect(R1,holdingArea.canvas,R2);
        holdingArea.free;  holdingsomething := false;
       end;
      Image1.canvas.rectangle(x1,y1,x2,y2);
  end;
  03:
  begin
   if holdingSomething then
   begin
   with image1.canvas do
      copyrect(R1,holdingArea.canvas,R2);
    holdingArea.free;  holdingsomething := false;
   end;
   Image1.canvas.Ellipse(x1,y1,x2,y2);
  end;
  04:
  begin
   if holdingSomething then
   begin
   with image1.canvas do
    copyrect(R1,holdingArea.canvas,R2);
    holdingArea.free;  holdingsomething := false;
   end;
   Image1.canvas.rectangle(x1,y1,x2,y2);
  end;
  end;
  toolInUse := 0;
end;

procedure TFDraw.buttonsinuse();
begin
 ToolButton4.Down := false;
 ToolButton5.Down := false;
 ToolButton6.Down := false;
 ToolButton7.Down := false;
 ToolButton1.Down := false;
end;

procedure TFDraw.ToolButton1Click(Sender: TObject);
begin
 buttonsinuse;
 ToolButton1.Down := true;
end;

procedure TFDraw.ToolButton2Click(Sender: TObject);
begin
 if OpenDialog1.Execute() then
 begin
   Image1.Picture.SaveToFile(OpenDialog1.FileName+'.bmp');
 end;
end;

procedure TFDraw.ToolButton3Click(Sender: TObject);
//var
 //oBMP : TBitmap;
 //oJPG : TJPEGImage;
begin
 if OpenDialog1.Execute() then
 Image1.Picture.LoadFromFile(OpenDialog1.FileName);
{ oBMP := TBitmap.Create;
 oJPG := TJPEGImage.Create;
if OpenDialog2.Execute()  then
 oJPG.LoadFromFile(OpenDialog2.FileName);
 oBMP.Assign(oJPG);
 Image1.Picture.Bitmap.Assign(oBMP);
 oBMP.Free;
 oJPG.Free;       }
end;

procedure TFDraw.ToolButton4Click(Sender: TObject);
begin
  buttonsinuse;
  ToolButton4.Down := true;
end;

procedure TFDraw.ToolButton5Click(Sender: TObject);
begin
  buttonsinuse;
  ToolButton5.Down := true;
end;

procedure TFDraw.ToolButton6Click(Sender: TObject);
begin
 buttonsinuse;
 ToolButton6.Down := true;
end;

procedure TFDraw.ToolButton7Click(Sender: TObject);
begin
 if SplitView1.Opened then SplitView1.Close
 else
 begin
 SplitView1.Open;
 ToolButton7.Down := true;
 end;
end;

procedure TFDraw.RzColorPicker1Click(Sender: TObject);
begin
 Image1.Canvas.Pen.Color := RzColorPicker1.SelectedColor;
 SplitView1.Close;
end;

procedure TFDraw.SplitView1Closing(Sender: TObject);
begin
   ToolButton7.Down := false;
end;

end.
