unit PrincNN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.WinXPickers,Winapi.wininet, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, Vcl.WinXCalendars,FileCtrl, System.ImageList,
  Vcl.ImgList, Vcl.VirtualImageList, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.ActnMan, Vcl.ActnColorMaps,Vcl.Themes,
  Vcl.Imaging.pngimage,System.UITypes, RzBorder, RzButton, RzPanel,ShellApi,
  Vcl.CategoryButtons, Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus,
  Vcl.XPStyleActnCtrls, Vcl.Tabs;

type
  TProjNONS = class(TForm)
    SplitView1: TSplitView;
    SplitView2: TSplitView;
    Panel2: TPanel;
    Timer1: TTimer;
    Panel4: TPanel;
    ActionList1: TActionList;
    AVideo: TAction;
    CalendarView1: TCalendarView;
    Memo1: TMemo;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    ATexto: TAction;
    AHub: TAction;
    ANav: TAction;
    Label7: TLabel;
    Image2: TImage;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Image1: TImage;
    AFiletoZip: TAction;
    AAlarme: TAction;
    AMusicC: TAction;
    Panel5: TPanel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    ALoadPDF: TAction;
    AExplorer: TAction;
    Atxtaux: TAction;
    Panel6: TPanel;
    Panel7: TPanel;
    Label13: TLabel;
    Label2: TLabel;
    AClock: TAction;
    BitBtn4: TBitBtn;
    OpenDialog1: TOpenDialog;
    CategoryButtons1: TCategoryButtons;
    Panel8: TPanel;
    BitBtn5: TBitBtn;
    Image4: TImage;
    Label1: TLabel;
    FileOpenDialog1: TFileOpenDialog;
    AFileDownloader: TAction;
    MainMenu1: TMainMenu;
    ADraw: TAction;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel2: TCategoryPanel;
    Panel3: TPanel;
    Label6: TLabel;
    RzLEDDisplay1: TRzLEDDisplay;
    CategoryPanel4: TCategoryPanel;
    Button6: TButton;
    Button9: TButton;
    Button10: TButton;
    CategoryPanel3: TCategoryPanel;
    Button5: TButton;
    Button7: TButton;
    Button11: TButton;
    CategoryPanel5: TCategoryPanel;
    Button8: TButton;
    Button3: TButton;
    CategoryPanel1: TCategoryPanel;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button12: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
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
    procedure ComboBox1Change(Sender: TObject);
    procedure AMusicCExecute(Sender: TObject);
    procedure ALoadPDFExecute(Sender: TObject);
    procedure AExplorerExecute(Sender: TObject);
    procedure AtxtauxExecute(Sender: TObject);
    procedure AClockExecute(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure AFileDownloaderExecute(Sender: TObject);
    procedure CloseClick(Sender: TObject);
    procedure MinClick(Sender: TObject);
    procedure ADrawExecute(Sender: TObject);
  private
    { Private declarations }
    selDir : string;
    boolicon : Boolean;
    procedure listararquivos(diretorio: string; sub: boolean);
    function TemAtributo(Attr, Val: Integer): Boolean;
  public
    { Public declarations }
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
  FormFileDownload, FormPaint;

procedure TProjNONS.FormCreate(Sender: TObject);
var
Ver,styles : string;
begin
  cont := 0;
  boolicon := false;
  Label2.Caption := FormatDateTime('dddd - mmmm yyyy',Date);
  CalendarView1.Date := date;
  Ver := Versao(Application.ExeName);
  RzLEDDisplay1.Caption := 'Ver.: ' + ver;


 with ComboBox1 do
 begin
  Items.BeginUpdate;
  try
   Items.Clear;
   for styles in TStyleManager.StyleNames do
    Items.Add(styles);
  finally
   Items.EndUpdate;
  end;
 end;
  BitBtn1Click(Sender);
end;

//Controle da Janela
procedure TProjNONS.CloseClick(Sender: TObject);
begin
 close;
end;

procedure TProjNONS.MinClick(Sender: TObject);
begin
   ShowWindow(ProjNONS.Handle, SW_MINIMIZE) ;
end;

//Combobox Estilos
procedure TProjNONS.ComboBox1Change(Sender: TObject);
begin
 if ComboBox1.ItemIndex=-1 then exit;
 TStyleManager.TrySetStyle(ComboBox1.Items[ComboBox1.ItemIndex]);
end;

procedure TProjNONS.Image1Click(Sender: TObject);
begin
  if SplitView2.Opened then
  begin
   SplitView2.Close;
   Panel4.Visible := false;
   Label1.Caption := 'Atalho';
   Panel2.Visible := false;
   label2.Caption := FormatDateTime('dd / ddd',Date);
   BitBtn4.Visible := false;
  end
  else
  begin
   SplitView2.Open;
   Panel4.Visible := true;
   Label1.Caption := 'Atalho Rápido';
   Panel2.Visible := true;
   label2.Caption := FormatDateTime('dddd - mmmm yyyy ',Date);
   BitBtn4.Visible := true;
  end;
end;

procedure TProjNONS.Image2Click(Sender: TObject);
begin
  if SplitView1.Opened then
  begin
   SplitView1.Close;
   CategoryPanelGroup1.Visible := false;
  end
  else
  begin
   SplitView1.Open;
   CategoryPanelGroup1.Visible := true;
  end;
end;

procedure TProjNONS.Timer1Timer(Sender: TObject);
begin
  Label13.Caption := '';
  Label13.Caption := TimeToStr(time);
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
       Label7.Caption := 'Anotacao' + calendardata + '.txt';
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

procedure TProjNONS.Image4Click(Sender: TObject);
begin
  BitBtn5.Glyph := nil;
  VirtualImageList1.GetBitmap(16,BitBtn5.Glyph);
  Image4.Visible := false;
  boolicon := false;
end;

//Actions

//Abre Video - Media Player de vídeos
procedure TProjNONS.AVideoExecute(Sender: TObject);
begin
 Button1.Enabled := False;
 FVideo := TFVideo.Create(Application);
 FVideo.Show;
end;

//Abre Texto - Editor de Texto Simples
procedure TProjNONS.ATextoExecute(Sender: TObject);
begin
 Button2.Enabled := False;
 FTexto := TFTexto.Create(Application);
 FTexto.Show;
end;

//Abre Navegador - Componente WebBrowser Delphi
procedure TProjNONS.ANavExecute(Sender: TObject);
begin
 Button3.Enabled := False;
 FNav := TFNav.Create(Application);
 FNav.Show;
end;

//Hub Dispositivos - Hub Bluetooth / Dispositvos Conectados na Maquina
procedure TProjNONS.AHubExecute(Sender: TObject);
begin
 Button4.Enabled := False;
 FHub := TFHub.Create(Application);
 FHub.Show;
end;

//Comprime Arquivos - Bibloteca TZipFile
procedure TProjNONS.AFiletoZipExecute(Sender: TObject);
begin
 Button5.Enabled := False;
 FFiletoZip := TFFiletoZip.Create(Application);
 FFiletoZip.Show;
end;

//Alarme - Define Alarme
procedure TProjNONS.AAlarmeExecute(Sender: TObject);
begin
 Button6.Enabled := False;
 FAlarme := TFAlarme.Create(Application);
 FAlarme.Show;
end;

//Abrir PDF - Biblioteca ACroPDF (Active X)
procedure TProjNONS.ALoadPDFExecute(Sender: TObject);
begin
 Button7.Enabled := False;
 FLoadPDFFile := TFLoadPDFFile.Create(Application);
 FLoadPDFFile.Show;
end;

//Musica - Api REST (SPOTIFY)
procedure TProjNONS.AMusicCExecute(Sender: TObject);
begin
 Button8.Enabled := False;
 FMusica := TFMusica.Create(Application);
 FMusica.Show;
end;

//Explorador - Raize Components
procedure TProjNONS.AExplorerExecute(Sender: TObject);
begin
 Button9.Enabled := False;
 FExplorer := TFExplorer.Create(Application);
 FExplorer.Show;
end;

//Auxíliar de Texto - Ajuda a lidar com textos
procedure TProjNONS.AtxtauxExecute(Sender: TObject);
begin
 Button10.Enabled := False;
 Ftxtaux := TFtxtaux.Create(Application);
 Ftxtaux.Show;
end;

procedure TProjNONS.AClockExecute(Sender: TObject);
begin
  BitBtn4.Enabled := False;
  FClock := TFClock.Create(Application);
  FClock.Show;
end;

procedure TProjNONS.AFileDownloaderExecute(Sender: TObject);
begin
  Button11.Enabled := False;
  FFiledownload := TFFiledownload.Create(Application);
  FFiledownload.Show;
end;

procedure TProjNONS.ADrawExecute(Sender: TObject);
begin
  Button12.Enabled := False;
  FDraw := TFDraw.Create(Application);
  FDraw.Show;
end;



end.
