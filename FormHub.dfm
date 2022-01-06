object FHub: TFHub
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Hub'
  ClientHeight = 370
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 467
    Top = 0
    Width = 39
    Height = 370
    Align = alRight
    Center = True
    ParentShowHint = False
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
      00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
      844944415478DAEDD2C10DC0200805D042C7741997612A67A996DE3C9828B596
      48F847A3FC97201CCA010738A0751642C80BBA32119D5D408C11534AD7024061
      004A00A5259686E741354F0CC091920E00F707F0A72C6FCAF93DD8023C03478A
      EBFBB600EA2B5007A8AFC001EA0069EC0066E28019C0D7D904D0399F02FC5524
      8A03D40137113F863032A7C7C30000000049454E44AE426082}
    ShowHint = False
    OnClick = Image2Click
    ExplicitLeft = 491
    ExplicitTop = 40
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 467
    Height = 370
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object TabControl1: TTabControl
      Left = 0
      Top = 0
      Width = 467
      Height = 370
      Align = alClient
      TabOrder = 0
      Tabs.Strings = (
        'Bluetooth')
      TabIndex = 0
      object Label1: TLabel
        Left = 4
        Top = 58
        Width = 459
        Height = 13
        Align = alTop
        Caption = 'Dispositivos Pareados:'
        ExplicitWidth = 108
      end
      object Label2: TLabel
        Left = 4
        Top = 303
        Width = 459
        Height = 13
        Align = alBottom
        Caption = 'Status'
        ExplicitWidth = 31
      end
      object Label3: TLabel
        Left = 4
        Top = 24
        Width = 459
        Height = 13
        Align = alTop
        Caption = 'Endere'#231'o UUID (Conex'#227'o):'
        ExplicitWidth = 131
      end
      object Button1: TButton
        Left = 4
        Top = 316
        Width = 459
        Height = 25
        Align = alBottom
        Caption = 'Atualizar'
        TabOrder = 0
        OnClick = Button1Click
      end
      object ListBox1: TListBox
        Left = 4
        Top = 71
        Width = 459
        Height = 232
        Align = alClient
        ItemHeight = 13
        TabOrder = 1
      end
      object Button2: TButton
        Left = 4
        Top = 341
        Width = 459
        Height = 25
        Align = alBottom
        Caption = 'Conectar'
        TabOrder = 2
        OnClick = Button2Click
      end
      object Edit1: TEdit
        Left = 4
        Top = 37
        Width = 459
        Height = 21
        Align = alTop
        Alignment = taCenter
        TabOrder = 3
        Text = '{00001101-0000-1000-8000-00805F9B34FB}'
        OnExit = Edit1Exit
      end
    end
  end
  object Bluetooth1: TBluetooth
    Enabled = True
    Left = 320
    Top = 260
  end
end
