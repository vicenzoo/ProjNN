unit PrincNN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.WinXPickers,Winapi.wininet, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, Vcl.WinXCalendars,FileCtrl, System.ImageList,
  Vcl.ImgList, Vcl.VirtualImageList, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.ActnMan, Vcl.ActnColorMaps,Vcl.Themes,
  Vcl.Imaging.pngimage,System.UITypes, RzBorder, RzButton, RzPanel;

type
  TProjNONS = class(TForm)
    SplitView1: TSplitView;
    SplitView2: TSplitView;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
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
    TimePicker1: TTimePicker;
    Label2: TLabel;
    AFiletoZip: TAction;
    Image3: TImage;
    AAlarme: TAction;
    AMusicC: TAction;
    Panel5: TPanel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    ALoadPDF: TAction;
    AExplorer: TAction;
    RzToolbar1: TRzToolbar;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzToolButton7: TRzToolButton;
    RzToolButton8: TRzToolButton;
    RzToolButton9: TRzToolButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    RzSpacer2: TRzSpacer;
    RzSpacer1: TRzSpacer;
    RzSpacer3: TRzSpacer;
    Label5: TLabel;
    Atxtaux: TAction;
    RzToolButton10: TRzToolButton;
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
    CategoryPanel5: TCategoryPanel;
    Button8: TButton;
    Button3: TButton;
    CategoryPanel1: TCategoryPanel;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
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
  private
    { Private declarations }
    selDir : string;
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
  FormAlarme, FormMusica, FormLoadPDFFile, FormExplorer, FormTextaux;

procedure TProjNONS.FormCreate(Sender: TObject);
var
Ver,styles : string;
begin
  cont := 0;
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
   Panel2.Visible := false;
   label2.Caption := FormatDateTime('dd / ddd',Date);
  end
  else
  begin
   SplitView2.Open;
   Panel4.Visible := true;
   Panel2.Visible := true;
   label2.Caption := FormatDateTime('dddd - mmmm yyyy',Date);
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
  TimePicker1.Time := time;
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
    SelectDirectory('Selecione uma pasta', 'C:\', selDir);
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

end.
