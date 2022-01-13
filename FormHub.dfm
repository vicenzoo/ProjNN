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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 471
    Height = 370
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 467
    object TabControl1: TTabControl
      Left = 0
      Top = 0
      Width = 471
      Height = 370
      Align = alClient
      TabOrder = 0
      Tabs.Strings = (
        'Bluetooth')
      TabIndex = 0
      ExplicitWidth = 467
      object Label1: TLabel
        Left = 4
        Top = 58
        Width = 463
        Height = 13
        Align = alTop
        Caption = 'Dispositivos Pareados:'
        ExplicitWidth = 108
      end
      object Label2: TLabel
        Left = 4
        Top = 303
        Width = 463
        Height = 13
        Align = alBottom
        Caption = 'Status'
        ExplicitWidth = 31
      end
      object Label3: TLabel
        Left = 4
        Top = 24
        Width = 463
        Height = 13
        Align = alTop
        Caption = 'Endere'#231'o UUID (Conex'#227'o):'
        ExplicitWidth = 131
      end
      object Button1: TButton
        Left = 4
        Top = 316
        Width = 463
        Height = 25
        Align = alBottom
        Caption = 'Atualizar'
        TabOrder = 0
        OnClick = Button1Click
        ExplicitWidth = 459
      end
      object ListBox1: TListBox
        Left = 4
        Top = 71
        Width = 463
        Height = 232
        Align = alClient
        ItemHeight = 13
        TabOrder = 1
        ExplicitWidth = 459
      end
      object Button2: TButton
        Left = 4
        Top = 341
        Width = 463
        Height = 25
        Align = alBottom
        Caption = 'Conectar'
        TabOrder = 2
        OnClick = Button2Click
        ExplicitWidth = 459
      end
      object Edit1: TEdit
        Left = 4
        Top = 37
        Width = 463
        Height = 21
        Align = alTop
        Alignment = taCenter
        TabOrder = 3
        Text = '{00001101-0000-1000-8000-00805F9B34FB}'
        OnExit = Edit1Exit
        ExplicitWidth = 459
      end
    end
  end
  object Panel2: TPanel
    Left = 471
    Top = 0
    Width = 35
    Height = 370
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 35
      Height = 39
      Align = alTop
      Center = True
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
        7B4944415478DA63641860C038EA805107E010FF4F2FFB06BD03A8154538CD1B
        920EF80BC44C445A0CD33F3C1DC00CC4FF88D43FF44380144BE9E600BA460172
        BCFF661880340073C03720E61AC810201550DD017C40FC8104C7D0240D101BEC
        44C90D3907100386A703280543D701D40643C7017403A30E18750000E9F94521
        22C9CDA90000000049454E44AE426082}
      ShowHint = False
      OnClick = Image2Click
      ExplicitLeft = -4
      ExplicitWidth = 370
    end
  end
  object Bluetooth1: TBluetooth
    Enabled = True
    Left = 320
    Top = 260
  end
end
