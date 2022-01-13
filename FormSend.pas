unit FormSend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,ShellApi;

type
  TFSend = class(TForm)
    Edit1: TEdit;
    Label3: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSend: TFSend;

implementation

{$R *.dfm}

uses FormTexto;



procedure TFSend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
end;

procedure TFSend.FormCreate(Sender: TObject);
begin
  Memo1.Lines.Text := textsend;
end;

procedure TFSend.BitBtn1Click(Sender: TObject);
var link1 : string;
var link2 : string;
var link1e2 : string;
begin

  link1 := 'http://web.whatsapp.com/send?phone=';
  link2 := '&text= ' ;
  link1e2 := link1 + edit1.Text + link2 + '%20' + Memo1.Lines.Text ;

  if ((edit1.Text = '') or (memo1.Lines.Text = '')) then
  begin
    ShowMessage('Por favor preencha todos os campos!');
  end
  else
  begin
    ShowMessage('Aviso você será redirecionado!');
    ShellExecute(Handle,'open', Pchar(link1e2),nil,nil,SW_SHOWMAXIMIZED);
  end;
end;

end.
