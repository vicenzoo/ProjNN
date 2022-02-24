unit FormClock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ovcbase, ovcclock, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFClock = class(TForm)
    OvcClock1: TOvcClock;
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
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

procedure TFClock.FormCreate(Sender: TObject);
begin
 Label3.Caption := 'Ver.: ' + Versao(Application.ExeName);
end;

procedure TFClock.Timer1Timer(Sender: TObject);
begin
 Label1.Caption := FormatDateTime('dddd - mmmm yyyy ',Date) + ' ' + TimeToStr(OvcClock1.Time);
end;

end.
