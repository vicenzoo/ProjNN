unit FormClock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ovcbase, ovcclock, Vcl.StdCtrls,
  Vcl.ExtCtrls,REST.Types, REST.Client,System.JSON, Data.Bind.Components,
  Data.Bind.ObjectScope,Vcl.Imaging.jpeg, Vcl.ComCtrls;

type
  TFClock = class(TForm)
    OvcClock1: TOvcClock;
    Panel1: TPanel;
    Timer1: TTimer;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Memo1: TMemo;
    TabControl1: TTabControl;
    Panel4: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    Label8: TLabel;
    Image1: TImage;
    Panel5: TPanel;
    Label10: TLabel;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    procedure DENABLEPANELS;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClock: TFClock;

implementation

{$R *.dfm}

uses PrincNN, Versaoinfo;

procedure TFClock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ProjNONS.BitBtn4.Enabled := True;
end;

procedure TFClock.DENABLEPANELS();
begin
   Panel3.Visible := false;
   Panel4.Visible := false;
   Panel5.Visible := false;
end;

procedure TFClock.TabControl1Change(Sender: TObject);
begin
 case TabControl1.TabIndex of
 0:
 begin
  FClock.Caption := 'Previsão do Tempo';
  DENABLEPANELS();
  Panel4.Visible := true;
 end;
 1:
 begin
  FClock.Caption := 'Opções';
  DENABLEPANELS();
  Panel5.Visible := true;
 end;
 2:
 begin
  FClock.Caption := 'Sobre';
  DENABLEPANELS();
  Panel3.Visible := true;
 end;

 end;
end;


procedure TFClock.FormCreate(Sender: TObject);
var
  obj, request1,request2: TJSONObject;
  location,location2,location3,temperture,humidity: string;
  //oBMP : TBitmap;
  //oJPG : TJPEGImage;
  //oFoto: TStringStream;
begin
 if ProjNONS.visiblepanels = true then CheckBox1.Checked := false;
 Label3.Caption := 'Ver.: ' + Versao(Application.ExeName);

 inherited;
 RESTClient1.ResetToDefaults;
 RESTClient1.Accept := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
 RESTClient1.AcceptCharset := 'UTF-8, *;q=0.8';
 RESTClient1.BaseURL := 'http://api.weatherstack.com/current';
 RESTClient1.HandleRedirects := True;
 RESTClient1.RaiseExceptionOn500 := False;

 //here is were we pass the access_key and city as parameters
 RESTRequest1.Resource := Format('?access_key=%s&query=%s', ['136311a9816fd9902afd90d391811f82', 'Erechim']);

 RESTRequest1.Client := RESTClient1;
 RESTRequest1.Response := RESTResponse1;
 RESTRequest1.SynchronizedEvents := False;

 RESTResponse1.ContentType := 'application/json';
 RESTRequest1.Execute;

 //Memo1.Lines.Text := RESTResponse1.Content;
 obj := RESTResponse1.JSONValue as TJSONObject;
 request1 := obj.Values['location'] as TJSONObject;
 location := request1.Values['name'].Value;
 location2 := request1.Values['country'].Value;
 location3 := request1.Values['region'].Value;
 request2 := obj.Values['current'] as TJSONObject;
 temperture := request2.Values['temperature'].Value;
 humidity := request2.Values['humidity'].Value;

 //oFoto := TStringStream.Create; oJPG := TJPEGImage.Create; oBMP := TBitmap.Create;
 //oFoto.WriteData(RESTResponse1.RawBytes, RESTResponse1.ContentLength);
 //oFoto.Seek(0, 0);
 //oJPG.LoadFromStream(oFoto);
 //oBMP.Assign(oJPG);

 //Image1.Picture.Bitmap.Assign(oJPG);

 //oFoto.Free;
 //oJPG.Free;
 //oBMP.Free;

 Label4.Caption := location + ' ' + location2 + ' ' + location3 + ' ' + temperture + '°C';
 Label5.Caption := 'Umidade: ' + humidity + '%';
end;

procedure TFClock.CheckBox1Click(Sender: TObject);
begin
 if not (CheckBox1.Checked = true) then
 begin
  ProjNONS.SplitView1.Visible := false;
  ProjNONS.SplitView2.Visible := false;
  ProjNONS.Panel1.Visible := false;
  ProjNONS.Mais.Visible := true;
 end
 else
 begin
  ProjNONS.SplitView1.Visible := true;
  ProjNONS.SplitView2.Visible := true;
  ProjNONS.Panel1.Visible := true;
  ProjNONS.Mais.Visible := false;
 end;
end;

procedure TFClock.Timer1Timer(Sender: TObject);
begin
 Label1.Caption := FormatDateTime('dddd - dd mmmm yyyy ',Date) + ' ' + TimeToStr(OvcClock1.Time);
end;

end.
