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
    ExplicitWidth = 281
    ExplicitHeight = 228
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
    ExplicitLeft = 400
    ExplicitHeight = 228
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
        844944415478DAEDD2C10DC0200805D042C7741997612A67A996DE3C9828B596
        48F847A3FC97201CCA010738A0751642C80BBA32119D5D408C11534AD7024061
        004A00A5259686E741354F0CC091920E00F707F0A72C6FCAF93DD8023C03478A
        EBFBB600EA2B5007A8AFC001EA0069EC0066E28019C0D7D904D0399F02FC5524
        8A03D40137113F863032A7C7C30000000049454E44AE426082}
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
      ExplicitWidth = 290
      ExplicitHeight = 226
    end
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 400
    Top = 10
  end
end
