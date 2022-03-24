unit FormClock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ovcbase, ovcclock, Vcl.StdCtrls,
  Vcl.ExtCtrls,REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope,Vcl.Imaging.jpeg, Vcl.ComCtrls,Vcl.Themes;

type
  TFClock = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label8: TLabel;
    TabControl1: TTabControl;
    Panel3: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Panel5: TPanel;
    Label10: TLabel;
    Label9: TLabel;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabControl1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    procedure DENABLEPANELS;
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

procedure TFClock.DENABLEPANELS();
begin
   Panel3.Visible := false;
   Panel5.Visible := false;
end;

procedure TFClock.TabControl1Change(Sender: TObject);
begin
 case TabControl1.TabIndex of
 0:
 begin
  FClock.Caption := 'Opções';
  DENABLEPANELS();
  Panel5.Visible := true;
 end;
 1:
 begin
  FClock.Caption := 'Sobre';
  DENABLEPANELS();
  Panel3.Visible := true;
 end;

 end;
end;


procedure TFClock.FormCreate(Sender: TObject);
begin
 if ProjNONS.visiblepanels = true then CheckBox1.Checked := false;
 Label3.Caption := 'Ver.: ' + Versao(Application.ExeName);
end;

procedure TFClock.FormShow(Sender: TObject);
var
 styles : string;
begin
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
end;

procedure TFClock.ComboBox1Change(Sender: TObject);
begin
 if ComboBox1.ItemIndex=-1 then exit;
 TStyleManager.TrySetStyle(ComboBox1.Items[ComboBox1.ItemIndex]);
end;

procedure TFClock.CheckBox1Click(Sender: TObject);
begin
 if not (CheckBox1.Checked = true) then
 begin
  ProjNONS.panel3.Visible := false;
  ProjNONS.SplitView2.Visible := false;
  ProjNONS.Mais.Visible := true;
 end
 else
 begin
  ProjNONS.panel3.Visible := true;
  ProjNONS.SplitView2.Visible := true;
  ProjNONS.Mais.Visible := false;
 end;
end;

end.
