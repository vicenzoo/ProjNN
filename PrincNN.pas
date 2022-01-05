unit PrincNN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.WinXPickers,Winapi.wininet, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, Vcl.WinXCalendars,FileCtrl, System.ImageList,
  Vcl.ImgList, Vcl.VirtualImageList, Vcl.BaseImageCollection,
  Vcl.ImageCollection;

type
  TProjNN = class(TForm)
    SplitView1: TSplitView;
    SplitView2: TSplitView;
    Panel1: TPanel;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Timer1: TTimer;
    CategoryPanel2: TCategoryPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Button1: TButton;
    ActionList1: TActionList;
    AVideo: TAction;
    CalendarView1: TCalendarView;
    Memo1: TMemo;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    Button2: TButton;
    ATexto: TAction;
    AHub: TAction;
    CategoryPanel3: TCategoryPanel;
    ANav: TAction;
    Button4: TButton;
    CategoryPanel4: TCategoryPanel;
    Button3: TButton;
    Label7: TLabel;
    Image2: TImage;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Image1: TImage;
    TimePicker1: TTimePicker;
    Label2: TLabel;
    AFiletoZip: TAction;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure AVideoExecute(Sender: TObject);
    procedure CalendarView1Click(Sender: TObject);
    procedure CalendarView1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ATextoExecute(Sender: TObject);
    procedure ANavExecute(Sender: TObject);
    procedure AFiletoZipExecute(Sender: TObject);
    procedure AHubExecute(Sender: TObject);
  private
    { Private declarations }
    selDir : string;
    procedure listararquivos(diretorio: string; sub: boolean);
    function TemAtributo(Attr, Val: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  ProjNN: TProjNN;
  F: TSearchRec;
  calendardata : string;
  tabSheet : TTabSheet;

implementation

{$R *.dfm}

uses Versaoinfo, FormVideo, FormTexto, FormNav, FormFiletoZip;

procedure TProjNN.FormCreate(Sender: TObject);
var
Ver : string;
begin
  cont := 0;
  Label2.Caption := FormatDateTime('dddd - mmmm yyyy',Date);
  CalendarView1.Date := date;
  Ver := Versao(Application.ExeName);
  Label6.Caption := ver;
  BitBtn1Click(Sender)
end;

procedure TProjNN.CalendarView1DblClick(Sender: TObject);
begin
 memo1.Lines.Add(#13);
end;

procedure TProjNN.Image1Click(Sender: TObject);
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

procedure TProjNN.Image2Click(Sender: TObject);
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

procedure TProjNN.Timer1Timer(Sender: TObject);
begin
  TimePicker1.Time := time;
end;

//Verifica se esta conectado;
procedure TProjNN.BitBtn1Click(Sender: TObject);
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

procedure TProjNN.listararquivos(diretorio: string; sub: boolean);
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

function TProjNN.TemAtributo(Attr, Val: Integer): Boolean;
begin
 Result := Attr and Val = Val;
end;

//Lê Notas Existentes no Diretorio e Exibe
procedure TProjNN.CalendarView1Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Lines.Add(DateToStr(CalendarView1.Date));
 listararquivos(GetCurrentDir+ '\Notes',StrToBool('0'));
end;

//Botão Exportar Notas
procedure TProjNN.BitBtn2Click(Sender: TObject);
begin
  if not (Memo1.Text = '') then
  begin
    SelectDirectory('Selecione uma pasta', 'C:\', selDir);
    if not (selDir = '') then memo1.Lines.SaveToFile(selDir + '\Anotacao' + calendardata +'.txt');
  end
  else MessageDlg('Impossível Exportar!',mtWarning,[mbYes],0);

end;

//Botão Salvar Notas
procedure TProjNN.BitBtn3Click(Sender: TObject);
var
cont : integer;
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
procedure TProjNN.AVideoExecute(Sender: TObject);
begin
 Button1.Enabled := False;
 FVideo := TFVideo.Create(Application);
 FVideo.Show;
end;

//Abre Texto - Editor de Texto Simples
procedure TProjNN.ATextoExecute(Sender: TObject);
begin
 Button2.Enabled := False;
 FTexto := TFTexto.Create(Application);
 FTexto.Show;
end;

//Abre Navegador - Componente WebBrowser Delphi
procedure TProjNN.ANavExecute(Sender: TObject);
begin
 Button3.Enabled := False;
 FNav := TFNav.Create(Application);
 FNav.Show;
end;

//Comprime Arquivos - Bibloteca TZipFile
procedure TProjNN.AFiletoZipExecute(Sender: TObject);
begin
 Button5.Enabled := False;
 FFiletoZip := TFFiletoZip.Create(Application);
 FFiletoZip.Show;
end;

//Hub Dispositivos
procedure TProjNN.AHubExecute(Sender: TObject);
begin
 //
end;

end.
