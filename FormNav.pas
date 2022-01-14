unit FormNav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls, Vcl.Buttons;

type
  TFNav = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    Image2: TImage;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    Splitter1: TSplitter;
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure WebBrowser1NavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
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
 WebBrowser1.GoBack;
end;

procedure TFNav.Image2Click(Sender: TObject);
begin
 ShowWindow(FNav.Handle, SW_RESTORE) ;
end;

procedure TFNav.WebBrowser1NavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
 ComboBox1.Text := WebBrowser1.LocationURL;
end;

end.
