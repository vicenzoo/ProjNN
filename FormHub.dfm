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
    object TabControl1: TTabControl
      Left = 0
      Top = 0
      Width = 506
      Height = 370
      Align = alClient
      MultiLine = True
      TabOrder = 0
      Tabs.Strings = (
        'Bluetooth'
        'Conectados')
      TabIndex = 0
      OnChange = TabControl1Change
      object Panel3: TPanel
        Left = 4
        Top = 24
        Width = 498
        Height = 342
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 110
        ExplicitTop = 164
        ExplicitWidth = 185
        ExplicitHeight = 41
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 498
          Height = 13
          Align = alTop
          Caption = 'Dispositivos Conectados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 137
        end
        object BitBtn1: TBitBtn
          Left = 0
          Top = 317
          Width = 498
          Height = 25
          Align = alBottom
          Caption = 'Verificar Conectados'
          TabOrder = 0
          OnClick = BitBtn1Click
          ExplicitLeft = 290
          ExplicitTop = 190
          ExplicitWidth = 75
        end
        object Memo1: TMemo
          Left = 0
          Top = 13
          Width = 498
          Height = 304
          Align = alClient
          TabOrder = 1
          ExplicitLeft = 220
          ExplicitTop = 100
          ExplicitWidth = 185
          ExplicitHeight = 89
        end
      end
      object Panel2: TPanel
        Left = 4
        Top = 24
        Width = 498
        Height = 342
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 8
        ExplicitTop = 28
        object Label2: TLabel
          Left = 1
          Top = 278
          Width = 496
          Height = 13
          Align = alBottom
          Caption = 'Status'
          ExplicitWidth = 31
        end
        object Label3: TLabel
          Left = 1
          Top = 22
          Width = 496
          Height = 13
          Align = alTop
          Caption = 'Endere'#231'o UUID (Conex'#227'o):'
          ExplicitWidth = 131
        end
        object Label1: TLabel
          Left = 1
          Top = 35
          Width = 496
          Height = 13
          Align = alTop
          Caption = 'Dispositivos Pareados:'
          ExplicitWidth = 108
        end
        object ListBox1: TListBox
          Left = 1
          Top = 48
          Width = 496
          Height = 230
          Align = alClient
          BorderStyle = bsNone
          ItemHeight = 13
          TabOrder = 0
        end
        object Button1: TButton
          Left = 1
          Top = 291
          Width = 496
          Height = 25
          Align = alBottom
          Caption = 'Atualizar'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 1
          Top = 316
          Width = 496
          Height = 25
          Align = alBottom
          Caption = 'Conectar'
          TabOrder = 2
          OnClick = Button2Click
        end
        object Edit1: TEdit
          Left = 1
          Top = 1
          Width = 496
          Height = 21
          Align = alTop
          Alignment = taCenter
          TabOrder = 3
          Text = '{00001101-0000-1000-8000-00805F9B34FB}'
          OnExit = Edit1Exit
        end
      end
    end
  end
  object Bluetooth1: TBluetooth
    Enabled = True
    Left = 320
    Top = 260
  end
end
