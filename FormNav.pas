unit FormNav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls, Vcl.Buttons,IniFiles, ShlObj, Vcl.Menus,WinInet,
  StrUtils, System.UITypes;

type
  TFNav = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    Image2: TImage;
    Image1: TImage;
    BitBtn2: TBitBtn;
    Splitter2: TSplitter;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Splitter1: TSplitter;
    Splitter3: TSplitter;
    Image3: TImage;
    Image4: TImage;
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure WebBrowser1NavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNav: TFNav;

implementation

{$R *.dfm}

uses PrincNN;

function GetHTMLTitle(const Url:string):string;
const
BuffSize     = 64*1024;
TitleTagBegin='<title>';
TitleTagEnd  ='</title>';
var
  hInter   : HINTERNET;
  UrlHandle: HINTERNET;
  BytesRead: Cardinal;
  Buffer   : Pointer;
  i,f      : Integer;
begin
  Result:='';
  hInter := InternetOpen('', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  if Assigned(hInter) then
  begin
    GetMem(Buffer,BuffSize);
    try
       UrlHandle := InternetOpenUrl(hInter, PChar(Url), nil, 0, INTERNET_FLAG_RELOAD,0);
       try
        if Assigned(UrlHandle) then
        begin
          InternetReadFile(UrlHandle, Buffer, BuffSize, BytesRead);
          if BytesRead>0 then
          begin
            SetString(Result, PAnsiChar(Buffer), BytesRead);
            i:=Pos(TitleTagBegin,Result);
            if i>0 then
            begin
              f:=PosEx(TitleTagEnd,Result,i+Length(TitleTagBegin));
              Result:=Copy(Result,i+Length(TitleTagBegin),f-i-Length(TitleTagBegin));
            end;
          end;
        end;
       finally
         InternetCloseHandle(UrlHandle);
       end;
    finally
      FreeMem(Buffer);
    end;
    InternetCloseHandle(hInter);
  end
end;

function DesktopDir: string;
var
  DesktopPidl: PItemIDList;
  DesktopPath: array [0..MAX_PATH] of Char;
begin
  SHGetSpecialFolderLocation(0, CSIDL_DESKTOP, DesktopPidl);
  SHGetPathFromIDList(DesktopPidl, DesktopPath);
  Result := IncludeTrailingPathDelimiter(DesktopPath);
end;

procedure Atalho(const NomeDoArquivo, URL : string);
begin
with TIniFile.Create(DesktopDir+NomeDoArquivo+'.url') do
try
WriteString('InternetShortcut','URL',URL);

//Extraindo Ícone de um Executável, neste caso do EXE
WriteString('InternetShortcut','IconFile',
'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe');
finally
Free;
end;
end;

procedure TFNav.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ProjNONS.Button3.Enabled := True;
end;

procedure TFNav.FormCreate(Sender: TObject);
begin
  WebBrowser1.Silent:= true;
  BitBtn1Click(sender);
end;

procedure TFNav.BitBtn1Click(Sender: TObject);
begin
 WebBrowser1.Navigate(ComboBox1.Text);
 ComboBox1.Items.Add(ComboBox1.Text);
end;

procedure TFNav.BitBtn2Click(Sender: TObject);
begin
 try
 WebBrowser1.GoBack;
 except
 end;
end;

procedure TFNav.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    WebBrowser1.Navigate(ComboBox1.Text);
end;

procedure TFNav.Image1Click(Sender: TObject);
begin
 Atalho(GetHTMLTitle(ComboBox1.Text),ComboBox1.Text);
 MessageDlg('Atalho Criado em ' + DesktopDir,mtConfirmation,[mbOK],0);
end;

procedure TFNav.Image2Click(Sender: TObject);
begin
 ShowWindow(FNav.Handle, SW_RESTORE) ;
end;

procedure TFNav.Image3Click(Sender: TObject);
begin
 if Panel2.Align = alBottom then
 begin
  Panel1.Align := alTop;
  Splitter1.Align := alTop;
  Panel2.Align := alTop;
 end
 else
 begin
 Panel1.Align := alBottom;
 Splitter1.Align := alBottom;
 Panel2.Align := alBottom;
 end;
end;

procedure TFNav.Image4Click(Sender: TObject);
var
  Valor1, Valor2: OleVariant;
begin
  WebBrowser1.ControlInterface.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, Valor1, Valor2) ;
end;

procedure TFNav.WebBrowser1NavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
 ComboBox1.Text := WebBrowser1.LocationURL;
 FNav.Caption := GetHTMLTitle(ComboBox1.Text);
end;

end.
