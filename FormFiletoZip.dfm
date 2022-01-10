object FFiletoZip: TFFiletoZip
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Comprimir Arquivo'
  ClientHeight = 103
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
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 262
    Top = 0
    Height = 103
    Align = alRight
    ExplicitLeft = 11
    ExplicitTop = 2
    ExplicitHeight = 226
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 262
    Height = 103
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 126
      Height = 13
      Caption = 'Selecione o/os Arquivo(s):'
    end
    object Label4: TLabel
      Left = 140
      Top = 58
      Width = 30
      Height = 13
      Caption = 'status'
    end
    object Label2: TLabel
      Left = 8
      Top = 58
      Width = 107
      Height = 13
      Caption = 'Progresso do Arquivo:'
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 27
      Width = 126
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 140
      Top = 27
      Width = 111
      Height = 25
      Caption = 'Iniciar'
      Enabled = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object ProgressBar1: TProgressBar
      Left = 6
      Top = 77
      Width = 245
      Height = 17
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 265
    Top = 0
    Width = 386
    Height = 103
    Align = alRight
    TabOrder = 1
    object Image2: TImage
      Left = 346
      Top = 1
      Width = 39
      Height = 101
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
      Left = 1
      Top = 1
      Width = 345
      Height = 101
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 400
    Top = 10
  end
end
