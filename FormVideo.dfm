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
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 200
    Top = 0
    Height = 412
    ExplicitLeft = 10
    ExplicitTop = 10
    ExplicitHeight = 406
  end
  object SplitView1: TSplitView
    Left = 0
    Top = 0
    Width = 200
    Height = 412
    BevelEdges = [beTop, beRight, beBottom]
    BevelOuter = bvRaised
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
    object Image3: TImage
      AlignWithMargins = True
      Left = 4
      Top = 369
      Width = 192
      Height = 39
      Align = alBottom
      Center = True
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
        3E4944415478DAEDD2C10D0020080340D97F685C414382C45CFFB4F720D6E304
        0040F13EAB3D00000000630179D552D81B0B38CDBF3F00000000D01600800DDE
        4E16216840F9210000000049454E44AE426082}
      ShowHint = False
      OnClick = BitBtn1Click
      ExplicitLeft = 2
      ExplicitTop = 344
    end
    object RzLEDDisplay1: TRzLEDDisplay
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 192
      Height = 20
      BorderColor = clSilver
      BorderOuter = fsFlatRounded
      FlatColor = clGray
      FlatColorAdjustment = 1
      Align = alTop
      Caption = ''
      BackColor = clWhite
      SegOnColor = clWindowText
      SegOffColor = cl3DLight
      Scrolling = True
      ExplicitLeft = 21
      ExplicitTop = -2
      ExplicitWidth = 198
    end
    object ListView1: TListView
      AlignWithMargins = True
      Left = 4
      Top = 30
      Width = 192
      Height = 333
      Align = alClient
      Columns = <
        item
          AutoSize = True
          Caption = 'Sele'#231#227'o Atual:'
        end>
      HideSelection = False
      ReadOnly = True
      TabOrder = 0
      ViewStyle = vsReport
      OnClick = ListView1Click
      ExplicitTop = 4
      ExplicitHeight = 359
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 206
    Top = 3
    Width = 576
    Height = 406
    Align = alClient
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 1
    OnDblClick = Panel1DblClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 412
    Width = 785
    Height = 25
    Align = alBottom
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 70
    ExplicitTop = 418
    object Image1: TImage
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 27
      Height = 17
      Align = alLeft
      Center = True
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
        001008060000001FF3FF6100000006624B474400FF00FF00FFA0BDA793000000
        204944415478DA6364A010300E2A031A48D4DB40750346C360340C0647189005
        00424C0611684116410000000049454E44AE426082}
      ShowHint = False
      OnClick = Image1Click
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 734
      Top = 6
      Width = 28
      Height = 15
      Margins.Top = 5
      Align = alRight
      Alignment = taCenter
      Caption = '00:00'
      ExplicitLeft = 728
      ExplicitTop = 4
      ExplicitHeight = 13
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 132
      Top = 6
      Width = 28
      Height = 15
      Margins.Top = 5
      Align = alRight
      Alignment = taCenter
      Caption = '00:00'
      ExplicitLeft = 125
      ExplicitTop = 8
    end
    object Image2: TImage
      AlignWithMargins = True
      Left = 765
      Top = 4
      Width = 16
      Height = 17
      Margins.Left = 0
      Align = alRight
      Center = True
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
        001008060000001FF3FF6100000006624B474400FF00FF00FFA0BDA793000000
        9F4944415478DA6364A0103052D300072826061C806214031AA0061C20A019A6
        A6019B01C8743B162FEE01621B6475F80CF807C45540FC1FCA7701E2A3E8EAB1
        197018885D81B80C4DFE271077106300C8465B207602626624173430A002BC06
        D441E5BA90E46DA0614094012C40FC15C97690D32BA061E0428C01A030388224
        578EA4B6819001BB191051850C3A8931C081818284E4C0406152260B506C0000
        E00A2B11A6EFE3290000000049454E44AE426082}
      ShowHint = False
      OnClick = Image2Click
      ExplicitLeft = 761
    end
    object MediaPlayer1: TMediaPlayer
      Left = 34
      Top = 1
      Width = 94
      Height = 23
      Align = alClient
      VisibleButtons = [btPlay, btPause, btStop]
      DoubleBuffered = True
      Display = Panel1
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = MediaPlayer1Click
      ExplicitLeft = 4
      ExplicitTop = 2
      ExplicitWidth = 91
    end
    object ProgressBar1: TProgressBar
      AlignWithMargins = True
      Left = 166
      Top = 4
      Width = 562
      Height = 17
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 194
      ExplicitTop = 3
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
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
