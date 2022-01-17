unit FormAlarme;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPickers, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, System.Notification, Vcl.ComCtrls,System.uiTypes;

type
  TFAlarme = class(TForm)
    BitBtn1: TBitBtn;
    Timer1: TTimer;
    BitBtn2: TBitBtn;
    StatusBar1: TStatusBar;
    NotificationCenter1: TNotificationCenter;
    Label2: TLabel;
    Panel1: TPanel;
    TimePicker1: TTimePicker;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Ativar : Boolean;
  public
    { Public declarations }
  end;

var
  FAlarme: TFAlarme;

implementation

{$R *.dfm}

uses PrincNN;

procedure TFAlarme.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ProjNONS.Button6.Enabled := True;
end;

procedure TFAlarme.FormCreate(Sender: TObject);
begin
 TimePicker1.Time := time;
 Ativar := False;
 StatusBar1.Panels[0].Text := FormatDateTime('dddd,dd "de" mmmm', Date);
 StatusBar1.Panels[2].Text := 'Definido para: ';
 Label2.Caption := 'Alarme Desativado';
end;

procedure TFAlarme.Timer1Timer(Sender: TObject);
var
 notify : TNotification;
begin
 StatusBar1.Panels[1].Text := TimeTostr(Time);
 If (TimePicker1.Time <= Time) and (ativar) then
 begin
  messageBeep(10);
  notify := NotificationCenter1.CreateNotification;
  notify.Name := 'PROJETO NO NET SYSTEM ';
  notify.Title := 'ALARME';
  notify.AlertBody := 'ALARME DEFINIDO ACIONADO ' + TimeToStr(TimePicker1.Time);
  notificationCenter1.PresentNotification(Notify);
  notify.Free;
 end;
end;

procedure TFAlarme.BitBtn1Click(Sender: TObject);
begin
 Ativar := True;
 Label2.Caption := 'Alarme Ativado';
 StatusBar1.Panels[2].Text := 'Definido para: ' + TimeTostr(TimePicker1.Time);
end;

procedure TFAlarme.BitBtn2Click(Sender: TObject);
begin
 Ativar := False;
 TimePicker1.Time := time;
 MessageDlg('Seu alarme foi desativado!', mtConfirmation, [mbOK], 0);
 Label2.Caption := 'Alarme Desativado';
end;


end.
