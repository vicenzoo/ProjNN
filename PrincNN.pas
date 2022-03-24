unit PrincNN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.WinXPickers,Winapi.wininet, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, Vcl.WinXCalendars,FileCtrl, System.ImageList,
  Vcl.ImgList, Vcl.VirtualImageList, Vcl.BaseImageCollection,System.JSON,
  Vcl.ImageCollection, Vcl.ActnMan, Vcl.ActnColorMaps,Vcl.Themes,
  Vcl.Imaging.pngimage,System.UITypes, RzBorder, RzButton, RzPanel,ShellApi,
  Vcl.CategoryButtons, Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus,
  Vcl.XPStyleActnCtrls, Vcl.Tabs, RzLabel,System.UIConsts, REST.Types,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TProjNONS = class(TForm)
    SplitView2: TSplitView;
    Panel2: TPanel;
    Timer1: TTimer;
    Panel4: TPanel;
    ActionList1: TActionList;
    AVideo: TAction;
    CalendarView1: TCalendarView;
    Memo1: TMemo;
    Label3: TLabel;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    ATexto: TAction;
    AHub: TAction;
    ANav: TAction;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Image1: TImage;
    AFiletoZip: TAction;
    AAlarme: TAction;
    AMusicC: TAction;
    ALoadPDF: TAction;
    AExplorer: TAction;
    Atxtaux: TAction;
    Panel6: TPanel;
    Panel7: TPanel;
    Label13: TLabel;
    Label2: TLabel;
    AClock: TAction;
    OpenDialog1: TOpenDialog;
    FileOpenDialog1: TFileOpenDialog;
    AFileDownloader: TAction;
    MainMenu1: TMainMenu;
    ADraw: TAction;
    Label5: TLabel;
    FileOpenDialog2: TFileOpenDialog;
    Panel8: TPanel;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    Image4: TImage;
    Image5: TImage;
    Panel9: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label6: TLabel;
    Mais: TMenuItem;
    AVideoVLC: TAction;
    Panel3: TPanel;
    Image3: TImage;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    RzBitBtn8: TRzBitBtn;
    RzBitBtn9: TRzBitBtn;
    RzBitBtn10: TRzBitBtn;
    RzBitBtn11: TRzBitBtn;
    RzBitBtn12: TRzBitBtn;
    BitBtn4: TBitBtn;
    RzBitBtn0: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    SplitView1: TSplitView;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Image2: TImage;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTClient1: TRESTClient;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure AVideoExecute(Sender: TObject);
    procedure CalendarView1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ATextoExecute(Sender: TObject);
    procedure ANavExecute(Sender: TObject);
    procedure AFiletoZipExecute(Sender: TObject);
    procedure AHubExecute(Sender: TObject);
    procedure AAlarmeExecute(Sender: TObject);
    procedure AMusicCExecute(Sender: TObject);
    procedure ALoadPDFExecute(Sender: TObject);
    procedure AExplorerExecute(Sender: TObject);
    procedure AtxtauxExecute(Sender: TObject);
    procedure AClockExecute(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure AFileDownloaderExecute(Sender: TObject);
    procedure ADrawExecute(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure MaisClick(Sender: TObject);
    procedure ToggleSwitch1Click(Sender: TObject);
    procedure AVideoVLCExecute(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
    selDir : string;
    boolicon,boolicon2 : Boolean;
    procedure listararquivos(diretorio: string; sub: boolean);
    function TemAtributo(Attr, Val: Integer): Boolean;
  public
    { Public declarations }
    visiblepanels : boolean;
  end;

var
  ProjNONS: TProjNONS;
  F: TSearchRec;
  calendardata : string;
  tabSheet : TTabSheet;

implementation

{$R *.dfm}

uses Versaoinfo, FormVideo, FormTexto, FormNav, FormFiletoZip, FormHub,
  FormAlarme, FormMusica, FormLoadPDFFile, FormExplorer, FormTextaux, FormClock,
  FormFileDownload, FormPaint, FormVideoVLC;

procedure TProjNONS.FormCreate(Sender: TObject);
var
  obj, request1,request2: TJSONObject;
  location,location2,location3,temperture,humidity: string;
begin
  cont := 0;
  boolicon := false;boolicon2 := false;visiblepanels := false;
  Label2.Caption := FormatDateTime('dddd - mmmm yyyy',Date);
  CalendarView1.Date := date;
  //Ver := Versao(Application.ExeName);
  //RzLEDDisplay1.Caption := 'Ver.: ' + ver;
  BitBtn1Click(Sender);

 try
 //Previsão do tempo
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

 //Memo2.Lines.Text := RESTResponse1.Content;
 obj := RESTResponse1.JSONValue as TJSONObject;
 request1 := obj.Values['location'] as TJSONObject;
 location := request1.Values['name'].Value;
 location2 := request1.Values['country'].Value;
 location3 := request1.Values['region'].Value;
 request2 := obj.Values['current'] as TJSONObject;
 temperture := request2.Values['temperature'].Value;
 humidity := request2.Values['humidity'].Value;


 Label7.Caption := location + ' ' + location2 + ' ' + location3 + ' ' + temperture + '°C';
 Label8.Caption := 'Umidade: ' + humidity + '%';
 except
  Label7.Caption := 'Indisponível';
  Label8.Caption := 'Indisponível'
 end;


end;

procedure TProjNONS.Image2Click(Sender: TObject);
begin
 if SplitView1.Opened = true then SplitView1.Close
 else SplitView1.Open;
end;

procedure TProjNONS.Image1Click(Sender: TObject);
begin
  if SplitView2.Opened then
  begin
   SplitView2.Close;
   Panel4.Visible := false;
   BitBtn1.Caption := '';
   label2.Caption := FormatDateTime('dd / ddd',Date);
  end
  else
  begin
   SplitView2.Open;
   Panel4.Visible := true;
   BitBtn1.Caption := 'Verificar Conexão';
   label2.Caption := FormatDateTime('dddd - mmmm yyyy ',Date);
  end;
end;


procedure TProjNONS.Timer1Timer(Sender: TObject);
begin
  Label13.Caption := '';
  Label13.Caption := TimeToStr(time);
end;

procedure TProjNONS.ToggleSwitch1Click(Sender: TObject);
begin
 ControlStyle := ControlStyle - [csOpaque];
end;

//Verifica se esta conectado;
procedure TProjNONS.BitBtn1Click(Sender: TObject);
var
  i:dword;
begin
   if InternetGetConnectedState(@i,0) then
  begin
    Label4.Caption := 'Conectado';
  end
 else
  begin
    Label4.Caption := 'Não Conectado';
  end;


end;

procedure TProjNONS.listararquivos(diretorio: string; sub: boolean);
var
  Ret: Integer;
  TempNome: string;
begin
  Ret := FindFirst(Diretorio+'\*.*', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if TemAtributo(F.Attr, faDirectory) then
      begin
        if (F.Name <> '.') And (F.Name <> '..') then
          if Sub = True then
          begin
            TempNome := Diretorio+'\' + F.Name;
            ListarArquivos(TempNome, True);
          end;
      end
      else
      begin
       calendardata := FormatDateTime('ddmmyyyy',CalendarView1.Date);
       //ShowMessage('diretorio:' + Diretorio+'\'+F.Name );
       //ShowMessage('meu diretorio' +(GetCurrentDir + '\Notes' + '\Anotacao'+(calendardata) + '.txt'));
       if (Diretorio+'\'+F.Name) = (GetCurrentDir + '\Notes' + '\Anotacao'+(calendardata) + '.txt') then
       begin
        Memo1.Lines.Clear;
        Memo1.Lines.LoadFromFile(GetCurrentDir + '\Notes' + '\Anotacao'+calendardata + '.txt');
       end;

      end;
        Ret := FindNext(F);
    end;
  finally
  begin
    FindClose(F);
  end;
end;
end;

function TProjNONS.TemAtributo(Attr, Val: Integer): Boolean;
begin
 Result := Attr and Val = Val;
end;

//Lê Notas Existentes no Diretorio e Exibe
procedure TProjNONS.CalendarView1Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Lines.Add(DateToStr(CalendarView1.Date));
 listararquivos(GetCurrentDir+ '\Notes',StrToBool('0'));
end;

//Botão Exportar Notas
procedure TProjNONS.BitBtn2Click(Sender: TObject);
begin
  if not (Memo1.Text = '') then
  begin
    if FileOpenDialog1.Execute then seldir := FileOpenDialog1.filename;
    if not (selDir = '') then memo1.Lines.SaveToFile(selDir + '\Anotacao' + calendardata +'.txt');
  end
  else MessageDlg('Impossível Exportar!',mtWarning,[mbYes],0);

end;

//Botão Salvar Notas
procedure TProjNONS.BitBtn3Click(Sender: TObject);
begin
   if not (Memo1.Text = '') then
  begin
    if not DirectoryExists(GetCurrentDir + '\Notes')
    then ForceDirectories(GetCurrentDir + '\Notes');

    if FileExists((GetCurrentDir + '\Notes' + '\Anotacao' + calendardata +' Completa'
    +'.txt')) then
     begin
      cont := cont + 1;
      memo1.Lines.SaveToFile(GetCurrentDir + '\Notes' + '\Anotacao' + calendardata +' Completa_'
      + IntToStr(cont) +'.txt');
     end;
    memo1.Lines.SaveToFile(GetCurrentDir + '\Notes' + '\Anotacao' + calendardata +'.txt');
  end
  else MessageDlg('Impossível Salvar!',mtWarning,[mbYes],0);
end;

//Icone de Atalho
procedure TProjNONS.BitBtn5Click(Sender: TObject);
var
  Bitmap : TBitmap;
  IconIndex: word;
  Buffer: array[0..2048] of char;
  IconHandle: HIcon;
begin
 if (boolicon = false) then
 begin
 boolicon := true;
 OpenDialog1.Execute();
 StrCopy(@Buffer, PChar(OpenDialog1.FileName));
 IconIndex := 0;
 IconHandle := ExtractAssociatedIcon(HInstance, Buffer, IconIndex);
 if IconHandle <> 0 then
 Icon.Handle := IconHandle;
 Bitmap := TBitmap.Create;
  try
    Bitmap.Width := Icon.Width;
    Bitmap.Height := Icon.Height;
    Bitmap.Canvas.Draw(0, 0,Icon);
    BitBtn5.Glyph.Assign(Bitmap);
  finally
    Bitmap.Free;
  end;
  image4.Visible := true;
  exit;
 end
 else
 begin
  ShellExecute(Handle,'open',pchar(OpenDialog1.FileName),nil,nil,sw_show)
 end;
end;

procedure TProjNONS.BitBtn6Click(Sender: TObject);
var
  Bitmap : TBitmap;
  IconIndex: word;
  Buffer: array[0..2048] of char;
  IconHandle: HIcon;
begin
 if (boolicon2 = false) then
 begin
 boolicon2 := true;
 FileOpenDialog2.Execute();
 StrCopy(@Buffer, PChar(FileOpenDialog2.FileName));
 IconIndex := 0;
 IconHandle := ExtractAssociatedIcon(HInstance, Buffer, IconIndex);
 if IconHandle <> 0 then
 Icon.Handle := IconHandle;
 Bitmap := TBitmap.Create;
  try
    Bitmap.Width := Icon.Width;
    Bitmap.Height := Icon.Height;
    Bitmap.Canvas.Draw(0, 0,Icon);
    BitBtn6.Glyph.Assign(Bitmap);
  finally
    Bitmap.Free;
  end;
  image5.Visible := true;
  exit;
 end
 else
 begin
  ShellExecute(Handle,'open',pchar(FileOpenDialog2.FileName),nil,nil,sw_show)
 end;
end;

procedure TProjNONS.Image4Click(Sender: TObject);
begin
  BitBtn5.Glyph := nil;
  VirtualImageList1.GetBitmap(16,BitBtn5.Glyph);
  Image4.Visible := false;
  boolicon := false;
end;

procedure TProjNONS.Image5Click(Sender: TObject);
begin
  BitBtn6.Glyph := nil;
  VirtualImageList1.GetBitmap(16,BitBtn6.Glyph);
  Image5.Visible := false;
  boolicon2 := false;
end;
//Actions

//Abre Video - Media Player de vídeos
procedure TProjNONS.AVideoExecute(Sender: TObject);
begin
 RzBitBtn1.Enabled := False;
 FVideo := TFVideo.Create(Application);
 FVideo.Show;
end;

procedure TProjNONS.AVideoVLCExecute(Sender: TObject);
begin
 RzBitBtn0.Enabled := False;
 FVideoVLC := TFVideoVLC.Create(Application);
 FVideoVLC.Show;
end;

//Abre Texto - Editor de Texto Simples
procedure TProjNONS.ATextoExecute(Sender: TObject);
begin
 RzBitBtn2.Enabled := False;
 FTexto := TFTexto.Create(Application);
 FTexto.Show;
end;

//Abre Navegador - Componente WebBrowser Delphi
procedure TProjNONS.ANavExecute(Sender: TObject);
begin
 RzBitBtn5.Enabled := False;
 FNav := TFNav.Create(Application);
 FNav.Show;
end;

//Hub Dispositivos - Hub Bluetooth / Dispositvos Conectados na Maquina
procedure TProjNONS.AHubExecute(Sender: TObject);
begin
 RzBitBtn3.Enabled := False;
 FHub := TFHub.Create(Application);
 FHub.Show;
end;

//Comprime Arquivos - Bibloteca TZipFile
procedure TProjNONS.AFiletoZipExecute(Sender: TObject);
begin
 RzBitBtn7.Enabled := False;
 FFiletoZip := TFFiletoZip.Create(Application);
 FFiletoZip.Show;
end;

//Alarme - Define Alarme
procedure TProjNONS.AAlarmeExecute(Sender: TObject);
begin
 RzBitBtn10.Enabled := False;
 FAlarme := TFAlarme.Create(Application);
 FAlarme.Show;
end;

//Abrir PDF - Biblioteca ACroPDF (Active X)
procedure TProjNONS.ALoadPDFExecute(Sender: TObject);
begin
 RzBitBtn8.Enabled := False;
 FLoadPDFFile := TFLoadPDFFile.Create(Application);
 FLoadPDFFile.Show;
end;

//Musica - Api REST (SPOTIFY)
procedure TProjNONS.AMusicCExecute(Sender: TObject);
begin
 RzBitBtn6.Enabled := False;
 FMusica := TFMusica.Create(Application);
 FMusica.Show;
end;

//Explorador - Raize Components
procedure TProjNONS.AExplorerExecute(Sender: TObject);
begin
 RzBitBtn11.Enabled := False;
 FExplorer := TFExplorer.Create(Application);
 FExplorer.Show;
end;

//Auxíliar de Texto - Ajuda a lidar com textos
procedure TProjNONS.AtxtauxExecute(Sender: TObject);
begin
 RzBitBtn12.Enabled := False;
 Ftxtaux := TFtxtaux.Create(Application);
 Ftxtaux.Show;
end;

//Exibe Relogio (Componente Orpheus), Info e Extras
procedure TProjNONS.AClockExecute(Sender: TObject);
begin
  BitBtn4.Enabled := False;
  FClock := TFClock.Create(Application);
  FClock.Show;
end;

//Botão Oculto
procedure TProjNONS.MaisClick(Sender: TObject);
begin
  visiblepanels := true;
  FClock := TFClock.Create(Application);
  FClock.Show;
end;

//Baixa Arquivos Gerais da Internet
procedure TProjNONS.AFileDownloaderExecute(Sender: TObject);
begin
  RzBitBtn9.Enabled := False;
  FFiledownload := TFFiledownload.Create(Application);
  FFiledownload.Show;
end;

//Desenho
procedure TProjNONS.ADrawExecute(Sender: TObject);
begin
  RzBitBtn4.Enabled := False;
  FDraw := TFDraw.Create(Application);
  FDraw.Show;
end;



end.
