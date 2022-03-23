unit FormHub;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  System.Bluetooth, System.Bluetooth.Components, Vcl.Imaging.pngimage,
  Vcl.Buttons;

  const
  IOCTL_STORAGE_QUERY_PROPERTY =  $002D1400;

type
  TFHub = class(TForm)
    Panel1: TPanel;
    TabControl1: TTabControl;
    Bluetooth1: TBluetooth;
    Panel3: TPanel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabControl1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  type
    STORAGE_QUERY_TYPE = (PropertyStandardQuery = 0, PropertyExistsQuery, PropertyMaskQuery, PropertyQueryMaxDefined);
    TStorageQueryType = STORAGE_QUERY_TYPE;

    STORAGE_PROPERTY_ID = (StorageDeviceProperty = 0, StorageAdapterProperty);
    TStoragePropertyID = STORAGE_PROPERTY_ID;

  STORAGE_PROPERTY_QUERY = packed record
    PropertyId: STORAGE_PROPERTY_ID;
    QueryType: STORAGE_QUERY_TYPE;
    AdditionalParameters: array [0..9] of AnsiChar;
  end;

  TStoragePropertyQuery = STORAGE_PROPERTY_QUERY;
  STORAGE_BUS_TYPE = (BusTypeUnknown = 0, BusTypeScsi, BusTypeAtapi, BusTypeAta, BusType1394, BusTypeSsa, BusTypeFibre,
  BusTypeUsb, BusTypeRAID, BusTypeiScsi, BusTypeSas, BusTypeSata, BusTypeMaxReserved = $7F);
  TStorageBusType = STORAGE_BUS_TYPE;
  STORAGE_DEVICE_DESCRIPTOR = packed record
    Version: DWORD;
    Size: DWORD;
    DeviceType: Byte;
    DeviceTypeModifier: Byte;
    RemovableMedia: Boolean;
    CommandQueueing: Boolean;
    VendorIdOffset: DWORD;
    ProductIdOffset: DWORD;
    ProductRevisionOffset: DWORD;
    SerialNumberOffset: DWORD;
    BusType: STORAGE_BUS_TYPE;
    RawPropertiesLength: DWORD;
    RawDeviceProperties: array [0..0] of AnsiChar;
  end;

   TStorageDeviceDescriptor = STORAGE_DEVICE_DESCRIPTOR;

  private
     fsocket : TBluetoothSocket;
     function ConnectDevice(pdevicename : string)  : boolean;
    procedure DESABLEPANELS;
    { Private declarations }
  public
    { Public declarations }
    function GetBusType(Drive: AnsiChar): TStorageBusType;
    procedure GetUsbDrives(memo: Tmemo);
  end;

var
  FHub: TFHub;

implementation

{$R *.dfm}

uses PrincNN;

procedure TFHub.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ProjNONS.RzBitBtn3.Enabled := True;
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

procedure TFhub.DESABLEPANELS();
begin
  Panel2.Visible := false;
  Panel3.Visible := false;
end;

procedure TFHub.TabControl1Change(Sender: TObject);
begin
 case TabControl1.TabIndex of
 0:
 begin
  DESABLEPANELS;
  Panel2.Visible := true;
 end;
 1:
 begin
  DESABLEPANELS;
  Panel3.Visible := true;
 end;
 end;
end;

procedure TFHub.BitBtn1Click(Sender: TObject);
begin
 GetUsbDrives(memo1);
end;

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

function TFhub.GetBusType(Drive: AnsiChar): TStorageBusType;
var
  H: THandle;
  Query: TStoragePropertyQuery;
  dwBytesReturned: DWORD;
  Buffer: array [0..1023] of Byte;
  sdd: TStorageDeviceDescriptor absolute Buffer;
  OldMode: UINT;
begin
  Result := BusTypeUnknown;

  OldMode := SetErrorMode(SEM_FAILCRITICALERRORS);
  try
    H := CreateFile(PChar(Format('\\.\%s:', [AnsiLowerCase(Drive)])), 0, FILE_SHARE_READ or FILE_SHARE_WRITE, nil,
      OPEN_EXISTING, 0, 0);
    if H <> INVALID_HANDLE_VALUE then
    begin
      try
        dwBytesReturned := 0;
        FillChar(Query, SizeOf(Query), 0);
        FillChar(Buffer, SizeOf(Buffer), 0);
        sdd.Size := SizeOf(Buffer);
        Query.PropertyId := StorageDeviceProperty;
        Query.QueryType := PropertyStandardQuery;
        if DeviceIoControl(H, IOCTL_STORAGE_QUERY_PROPERTY, @Query, SizeOf(Query), @Buffer, SizeOf(Buffer), dwBytesReturned, nil) then
          Result := sdd.BusType;
      finally
        CloseHandle(H);
      end;
    end;
  finally
    SetErrorMode(OldMode);
  end;
end;

procedure TFHub.GetUsbDrives(memo: Tmemo);
var
  DriveBits: set of 0..25;
  I: Integer;
  Drive: AnsiChar;
begin
    Cardinal(DriveBits) := GetLogicalDrives;

    for I := 0 to 25 do
      if I in DriveBits then
      begin
        Drive := AnsiChar(Ord('a') + I);
        if GetBusType(Drive) = BusTypeUsb then
          memo.Lines.Add(Drive);
      end;
end;

end.
