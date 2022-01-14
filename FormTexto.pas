unit FormTexto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Buttons, frxClass, frxExportBaseDialog, frxExportPDF,
  Vcl.WinXCtrls;

type
  TFTexto = class(TForm)
    Panel1: TPanel;
    Image2: TImage;
    Memo1: TMemo;
    Splitter1: TSplitter;
    OpenDialog1: TOpenDialog;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    ReplaceDialog1: TReplaceDialog;
    Image4: TImage;
    Image3: TImage;
    Image9: TImage;
    Image8: TImage;
    Image7: TImage;
    Image11: TImage;
    Image12: TImage;
    Image5: TImage;
    Image6: TImage;
    Image1: TImage;
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure Image12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTexto: TFTexto;
  cont : integer;
  dia,textsend : string;

implementation

{$R *.dfm}

uses PrincNN, FormNav, FormSend;

procedure TFTexto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ProjNONS.Button2.Enabled := True;
end;

procedure TFTexto.FormCreate(Sender: TObject);
begin
  cont :=0;
  dia := FormatDateTime('ddmmyyyy',Date);
end;

procedure TFTexto.Image4Click(Sender: TObject);
begin
 if Memo1.Lines.Text = '' then Memo1.SetFocus
 else
 begin
   if MessageDlg('Deseja salvar o Texto Atual ?',mtConfirmation,[mbYes,mbNo],0) = mryes then
   begin

     if FileExists((GetCurrentDir + '\Notes' + '\Anotacao' + dia +' Completa'
     +'.txt')) then
     begin
      cont := cont + 1;
      memo1.Lines.SaveToFile(GetCurrentDir + '\Notes' + '\Anotacao' + dia +' Completa_'
      + IntToStr(cont) +'.txt');
     end;

     memo1.Lines.SaveToFile(GetCurrentDir + '\Notes' + '\Anotacao' + dia +' Completa'
     +'.txt');
     ShowMessage('Salvo em: ' + GetCurrentDir + '\Notes' + '\Anotacao' );
   end;
   Memo1.Clear;
 end;
end;





procedure TFTexto.Image3Click(Sender: TObject);
var
 b : tfont;
begin
    if FontDialog1.Execute then
    begin
      b :=  FontDialog1.Font;
      Memo1.Font := B;
    end;
end;

procedure TFTexto.Image9Click(Sender: TObject);
var
 c : TColor;
begin
 if ColorDialog1.Execute then
 begin
  c :=  ColorDialog1.Color;
  Memo1.Font.Color := c;
 end;
end;

procedure TFTexto.Image8Click(Sender: TObject);
begin
   if MessageDlg('Deseja salvar o Texto Atual ?',mtConfirmation,[mbYes,mbNo],0) = mryes then
   begin

     if FileExists((GetCurrentDir + '\Notes' + '\Anotacao' + dia +' Completa'
     +'.txt')) then
     begin
      cont := cont + 1;
      memo1.Lines.SaveToFile(GetCurrentDir + '\Notes' + '\Anotacao' + dia +' Completa_'
      + IntToStr(cont) +'.txt');
     end;

     memo1.Lines.SaveToFile(GetCurrentDir + '\Notes' + '\Anotacao' + dia +' Completa'
     +'.txt');
     ShowMessage('Salvo em: ' + GetCurrentDir + '\Notes' + '\Anotacao' );
   end;
end;

procedure TFTexto.Image7Click(Sender: TObject);
begin
 TfrxMemoView(frxReport1.FindComponent('Memo1')).Memo.Clear;
 TfrxMemoView(frxReport1.FindComponent('Memo1')).Memo.Add('Dia: ' + FormatDateTime('dd/mm/yyyy',date));
 TfrxMemoView(frxReport1.FindComponent('Memo2')).Memo.Clear;
 TfrxMemoView(frxReport1.FindComponent('memo2')).Memo.Add(memo1.lines.Text);
 frxReport1.showreport;
end;

procedure TFTexto.Image1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
 begin
   Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
 end;
end;

procedure TFTexto.Image5Click(Sender: TObject);
begin
 ProjNONS.ANavExecute(sender);
end;

procedure TFTexto.Image2Click(Sender: TObject);
begin
 ShowWindow(FTexto.Handle, SW_RESTORE) ;
end;

procedure TFTexto.Image11Click(Sender: TObject);
begin
 ReplaceDialog1Replace(sender);
end;

procedure TFTexto.ReplaceDialog1Replace(Sender: TObject);
var
  SelPos: Integer;
begin
  if  ReplaceDialog1.Execute then
  begin
     { Perform a global case-sensitive search for FindText in Memo1. }
     SelPos := Pos(ReplaceDialog1.FindText, Memo1.Lines.Text);
     if SelPos > 0 then
     begin

       Memo1.SelStart := SelPos - 1;
       Memo1.SelLength := Length(ReplaceDialog1.FindText);

       { Replace selected text with ReplaceText. }
       Memo1.SelText := ReplaceDialog1.ReplaceText;
     end
  end;
end;

procedure TFTexto.Image12Click(Sender: TObject);
begin
  textsend := Memo1.Lines.Text;
  FSend := TFSend.Create(Application);
  FSend.Show;
end;

end.
