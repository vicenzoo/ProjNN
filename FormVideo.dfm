object FVideo: TFVideo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Acesso HD'
  ClientHeight = 437
  ClientWidth = 785
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
  object SplitView1: TSplitView
    Left = 0
    Top = 0
    Width = 200
    Height = 420
    BevelOuter = bvRaised
    CloseStyle = svcCompact
    CompactWidth = 75
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    OpenedWidth = 200
    ParentFont = False
    Placement = svpLeft
    TabOrder = 0
    object Image1: TImage
      Left = 1
      Top = 40
      Width = 198
      Height = 39
      Align = alTop
      Center = True
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
        3E4944415478DAEDD3A101004008C340D87F687E81D74D4522319CE90EDC0A10
        20E073BBE4CF4A403401022A01F80C71403401022A01F80C7140340102043C85
        DE062195E388820000000049454E44AE426082}
      ShowHint = False
      OnClick = Image1Click
      ExplicitLeft = -4
      ExplicitTop = 0
    end
    object Image2: TImage
      Left = 1
      Top = 1
      Width = 198
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
      ExplicitLeft = 2
      ExplicitTop = 11
    end
    object BitBtn1: TBitBtn
      Left = 1
      Top = 79
      Width = 198
      Height = 52
      Align = alTop
      Caption = 'Nova Sele'#231#227'o'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Panel3: TPanel
      Left = 1
      Top = 388
      Width = 198
      Height = 31
      Align = alBottom
      Color = clGray
      ParentBackground = False
      TabOrder = 1
      object MediaPlayer1: TMediaPlayer
        Left = 1
        Top = 1
        Width = 196
        Height = 29
        Align = alClient
        VisibleButtons = [btPlay, btPause, btStop, btStep, btBack]
        DoubleBuffered = True
        Display = Panel1
        ParentDoubleBuffered = False
        TabOrder = 0
      end
    end
    object ListView1: TListView
      Left = 1
      Top = 131
      Width = 198
      Height = 257
      Align = alClient
      Columns = <>
      ReadOnly = True
      TabOrder = 2
      ViewStyle = vsList
      OnClick = ListView1Click
    end
  end
  object Panel1: TPanel
    Left = 200
    Top = 0
    Width = 585
    Height = 420
    Align = alClient
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 1
    OnDblClick = Panel1DblClick
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 420
    Width = 785
    Height = 17
    Align = alBottom
    TabOrder = 2
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 680
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Filter = 'media'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 650
    Top = 10
  end
end
