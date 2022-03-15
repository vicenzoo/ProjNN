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
    Width = 506
    Height = 370
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 471
    object TabControl1: TTabControl
      Left = 0
      Top = 0
      Width = 506
      Height = 370
      Align = alClient
      TabOrder = 0
      Tabs.Strings = (
        'Bluetooth')
      TabIndex = 0
      ExplicitWidth = 471
      object Label1: TLabel
        Left = 4
        Top = 58
        Width = 498
        Height = 13
        Align = alTop
        Caption = 'Dispositivos Pareados:'
        ExplicitWidth = 108
      end
      object Label2: TLabel
        Left = 4
        Top = 303
        Width = 498
        Height = 13
        Align = alBottom
        Caption = 'Status'
        ExplicitWidth = 31
      end
      object Label3: TLabel
        Left = 4
        Top = 24
        Width = 498
        Height = 13
        Align = alTop
        Caption = 'Endere'#231'o UUID (Conex'#227'o):'
        ExplicitWidth = 131
      end
      object Button1: TButton
        Left = 4
        Top = 316
        Width = 498
        Height = 25
        Align = alBottom
        Caption = 'Atualizar'
        TabOrder = 0
        OnClick = Button1Click
        ExplicitWidth = 463
      end
      object ListBox1: TListBox
        Left = 4
        Top = 71
        Width = 498
        Height = 232
        Align = alClient
        ItemHeight = 13
        TabOrder = 1
        ExplicitWidth = 463
      end
      object Button2: TButton
        Left = 4
        Top = 341
        Width = 498
        Height = 25
        Align = alBottom
        Caption = 'Conectar'
        TabOrder = 2
        OnClick = Button2Click
        ExplicitWidth = 463
      end
      object Edit1: TEdit
        Left = 4
        Top = 37
        Width = 498
        Height = 21
        Align = alTop
        Alignment = taCenter
        TabOrder = 3
        Text = '{00001101-0000-1000-8000-00805F9B34FB}'
        OnExit = Edit1Exit
        ExplicitWidth = 463
      end
    end
  end
  object Bluetooth1: TBluetooth
    Enabled = True
    Left = 320
    Top = 260
  end
end
