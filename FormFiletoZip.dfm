object FFiletoZip: TFFiletoZip
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Comprimir Arquivo'
  ClientHeight = 186
  ClientWidth = 651
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
  object Splitter1: TSplitter
    Left = 262
    Top = 0
    Height = 186
    Align = alRight
    ExplicitLeft = 11
    ExplicitTop = 2
    ExplicitHeight = 226
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 262
    Height = 186
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -2
    ExplicitTop = 8
    object Label1: TLabel
      Left = 10
      Top = 86
      Width = 126
      Height = 13
      Caption = 'Selecione o/os Arquivo(s):'
    end
    object Label4: TLabel
      Left = 142
      Top = 136
      Width = 30
      Height = 13
      Caption = 'status'
    end
    object Label2: TLabel
      Left = 10
      Top = 136
      Width = 107
      Height = 13
      Caption = 'Progresso do Arquivo:'
    end
    object Label3: TLabel
      Left = 10
      Top = 6
      Width = 51
      Height = 13
      Caption = 'Salvar em:'
    end
    object Label5: TLabel
      Left = 10
      Top = 45
      Width = 86
      Height = 13
      Caption = 'Nome do Arquivo:'
    end
    object BitBtn1: TBitBtn
      Left = 10
      Top = 105
      Width = 126
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 142
      Top = 105
      Width = 111
      Height = 25
      Caption = 'Iniciar'
      Enabled = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 155
      Width = 245
      Height = 17
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 8
      Top = 21
      Width = 241
      Height = 21
      TabOrder = 3
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 8
      Top = 59
      Width = 241
      Height = 21
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 265
    Top = 0
    Width = 386
    Height = 186
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 103
    object Image2: TImage
      Left = 347
      Top = 0
      Width = 39
      Height = 186
      Align = alRight
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
      ExplicitLeft = 566
      ExplicitTop = 58
      ExplicitHeight = 228
    end
    object ListBox1: TListBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 341
      Height = 180
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnKeyDown = ListBox1KeyDown
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 345
      ExplicitHeight = 101
    end
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 400
    Top = 10
  end
end
