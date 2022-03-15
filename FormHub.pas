unit FormHub;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  System.Bluetooth, System.Bluetooth.Components, Vcl.Imaging.pngimage,
  Vcl.Buttons;

type
  TFHub = class(TForm)
    Panel1: TPanel;
    TabControl1: TTabControl;
    Button1: TButton;
    Bluetooth1: TBluetooth;
    ListBox1: TListBox;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
     fsocket : TBluetoothSocket;
     function ConnectDevice(pdevicename : string)  : boolean;
     //Procedure sizeMove (var msg: TWMSize); message WM_SIZE;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHub: TFHub;

implementation

{$R *.dfm}

uses PrincNN;

procedure TFHub.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ProjNONS.Button4.Enabled := True;
end;

procedure TFHub.FormCreate(Sender: TObject);
begin
 Button1Click(sender);
end;

procedure TFHub.Edit1Exit(Sender: TObject);
begin
 if Edit1.Text = '' then edit1.Text := '{00001101-0000-1000-8000-00805F9B34FB}'
end;

procedure TFHub.Image2Click(Sender: TObject);
begin
 ShowWindow(FHub.Handle, SW_RESTORE) ;
end;

//procedure TFHub.sizeMove(var msg: TWMSize);
//begin
//inherited;
//if (msg.SizeType = SIZE_MAXIMIZED) then ShowMessage('MAX');
//if (msg.SizeType = SIZENORMAL) then ShowMessage('NORMAL');
//end;


procedure TFHub.Button1Click(Sender: TObject);
var
 ldevice : TBluetoothDevice;
begin
  ListBox1.Items.Clear;
  for ldevice in Bluetooth1.PairedDevices do
  begin
    ListBox1.Items.Add(ldevice.DeviceName);
  end;
end;

procedure TFHub.Button2Click(Sender: TObject);
var
 I : integer;
begin
 if not (ListBox1.ItemIndex = -1) then
 begin
   i := ListBox1.ItemIndex;
   if ConnectDevice(ListBox1.Items[i]) then Label2.Caption := 'conectado'
   else Label2.Caption := 'Desconectado';
 end;
end;

function TFHub.ConnectDevice(pdevicename: string): boolean;
var
 LDevice: TBluetoothDevice;
begin
   for ldevice in Bluetooth1.PairedDevices do
  begin
    if ldevice.DeviceName = pdevicename then
    begin
      fsocket := ldevice.CreateClientSocket(StringToGUID(Edit1.Text),false);
      if fsocket <> nil then
      begin
        fsocket.Connect;
        Result := fsocket.Connected;
      end
    end;
  end;
end;

end.
