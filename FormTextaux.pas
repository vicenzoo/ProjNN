unit FormTextaux;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Samples.Spin, Vcl.ExtCtrls;

type
  TFtxtaux = class(TForm)
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    GroupBox3: TGroupBox;
    Edit2: TEdit;
    BitBtn4: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ftxtaux: TFtxtaux;

implementation

{$R *.dfm}

uses PrincNN;

procedure TFtxtaux.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ProjNONS.Button10.Enabled := True;
end;

procedure TFtxtaux.FormCreate(Sender: TObject);
begin
  Edit2.Text := GetCurrentDir;
end;

procedure TFtxtaux.BitBtn1Click(Sender: TObject);
begin
  Memo1.Clear;
  try
    if OpenDialog1.Execute then
    begin
      Memo1.Lines.LoadFromFile(OpenDialog1.FileName,TEncoding.UTF8);
    end;
  except
    Memo1.Lines.Add('Erro na abertura do arquivo !!!');
  end;
end;

procedure TFtxtaux.BitBtn2Click(Sender: TObject);
var
  I, J : Integer;
  S : string;
begin
  I := 0;
  while True do
  begin
    J := Memo1.Lines.Count - 1;
    if I > J then Break;
    S := UpperCase(Memo1.Lines[I]);
    for J := J downto I + 1 do
    begin
      if S = UpperCase(Memo1.Lines[J]) then
        Memo1.Lines.Delete(J);
    end;
    Inc(I);
  end;
end;

procedure TFtxtaux.BitBtn3Click(Sender: TObject);
var
 s : string;
 i : integer;
begin
 if not (Memo1.Lines.Text = '') then
 begin
  for I := 0 to Memo1.Lines.Count do
  begin
    if not (s.Length = 0) then Insert(Edit1.Text,s,1);
    s := Memo1.Lines[Memo1.Lines.Count - i] + s;
  end;
  memo1.Clear;
  Memo1.Lines.Add(s);
 end;
end;

procedure TFtxtaux.Edit2Exit(Sender: TObject);
begin
  if (Edit2.Text = '') or (edit2.Text = ' ') then
  begin
    Edit2.Text := GetCurrentDir;
  end;
end;

procedure TFtxtaux.BitBtn4Click(Sender: TObject);
begin
   if not (DirectoryExists(edit2.Text)) then
   begin
    MessageDlg('Diretório Inexistente.',mtWarning,[mbOK],0);
    Edit2.SetFocus;
    exit;
   end;
   memo1.Lines.SaveToFile(edit2.text + '\auxiliar.txt');
   ShowMessage('Salvo em: ' + Edit2.Text);
end;

end.
