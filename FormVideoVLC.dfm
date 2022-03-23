object FVideoVLC: TFVideoVLC
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'VLC'
  ClientHeight = 464
  ClientWidth = 777
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
    Left = 206
    Top = 30
    Height = 410
    ExplicitLeft = 200
    ExplicitTop = -58
    ExplicitHeight = 412
  end
  object SplitView1: TSplitView
    AlignWithMargins = True
    Left = 3
    Top = 33
    Width = 200
    Height = 404
    BevelEdges = [beTop, beRight, beBottom]
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
    ExplicitLeft = 0
    ExplicitTop = -58
    ExplicitHeight = 412
    object Image3: TImage
      AlignWithMargins = True
      Left = 3
      Top = 362
      Width = 194
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
      OnClick = Image3Click
      ExplicitLeft = 2
      ExplicitTop = 344
      ExplicitWidth = 192
    end
    object RzLEDDisplay1: TRzLEDDisplay
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 194
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
      Left = 3
      Top = 29
      Width = 194
      Height = 327
      Align = alClient
      BorderStyle = bsNone
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
      ExplicitLeft = 4
      ExplicitTop = 30
      ExplicitWidth = 192
      ExplicitHeight = 333
    end
  end
  object VLCPlugin21: TVLCPlugin2
    AlignWithMargins = True
    Left = 212
    Top = 33
    Width = 562
    Height = 404
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 480
    ExplicitTop = 200
    ExplicitWidth = 320
    ExplicitHeight = 240
    ControlData = {
      07000000280043006F0075006E007400290003000D0000000800000041007500
      74006F004C006F006F0070000B000000080000004100750074006F0050006C00
      610079000B00FFFF090000004200610063006B0043006F006C006F0072000300
      00000000070000004200610073006500550052004C0008000000000008000000
      4200720061006E00640069006E0067000B00FFFF0C0000004500780074006500
      6E0074004800650069006700680074000300C12900000B000000450078007400
      65006E007400570069006400740068000300163A000011000000460075006C00
      6C00730063007200650065006E0045006E00610062006C00650064000B00FFFF
      030000004D0052004C0008000000000009000000530074006100720074005400
      69006D0065000300000000000700000054006F006F006C006200610072000B00
      FFFF07000000560069007300690062006C0065000B00FFFF0600000056006F00
      6C0075006D006500030064000000}
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 771
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitLeft = 4
    ExplicitTop = 27
    ExplicitWidth = 759
    object Label3: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 5
      Width = 17
      Height = 16
      Margins.Top = 5
      Align = alLeft
      Alignment = taCenter
      Caption = 'Url:'
      ExplicitHeight = 13
    end
    object Image4: TImage
      Left = 720
      Top = 0
      Width = 51
      Height = 24
      Align = alRight
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
        001008060000001FF3FF6100000006624B474400FF00FF00FFA0BDA793000001
        764944415478DAA5933B2C43611886DFD3843088D18C081283D84A4223B41316
        76E985C46568C24062B098B4C2D0A14AEC121B8B4ED80D6E4D099B5D2CE2D27A
        7A1CE7E49C3668FCC9F9FEEF7FCF9BF7BBFCDF6FE89FCBA8884EAA4E351A5241
        6DE6D9A75BBD29AB3DBDFC266028A259EC12FEB58ABAB2D02E6C27DF9A324AB1
        172B09188A6A87BDD5CC21A30797F414F80739F894D7364C4BC4118828CE6954
        4F0A695FAF361E568376F56CFA13AA55A38EE11D20B2E908C4550FA514D1EF8A
        1C560B114FF086C16FEC4C0A3AD3BB9A4B3D31ACE82310E7500D953534AA71EC
        16090729F0D2C2B2D824A247DF020B083421B0C8CF0048C023D34DAE7E22F721
        7207679DF323FCE4DF05A47E38034AEB027EC214C828E19460681E205856424C
        33A4BFCCFF4102E4ED128ADA209B4377130BEAA5E3F79E269E420ED9F5576CA2
        738D635C63B0FA6BF40E924FD3D49AF30C520791D378794A8D950F927B9457F0
        7350CE2DB407DBCEBE4AE4D44F6FE16BFDE33155BD3E01F0BA7911EDB4995300
        00000049454E44AE426082}
      OnClick = BitBtn1Click
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 26
      Top = 3
      Width = 691
      Height = 18
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 655
      ExplicitHeight = 21
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 440
    Width = 777
    Height = 24
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Image2: TImage
      AlignWithMargins = True
      Left = 747
      Top = 3
      Width = 27
      Height = 18
      Align = alRight
      Center = True
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
        001008060000001FF3FF6100000006624B474400FF00FF00FFA0BDA793000000
        814944415478DA6364A01030D2DA800A20FE0FC49DE41800D25C0A6577E13204
        97011D40EC0DC43BA07C0F205E0BC40DC41800D2EC03C44E409C05159B06C4FB
        80780BD465380D0807E216207604E227483682681920DE0FC4D540BC0A97011C
        402C08C4CF913422D39240FC1E887F101388D80C203A10470DA0A2010401C506
        000098101A119AA15AFE0000000049454E44AE426082}
      ShowHint = False
      OnClick = Image2Click
      ExplicitLeft = 13
      ExplicitTop = 6
    end
    object Image1: TImage
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 27
      Height = 18
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
      ExplicitLeft = 13
      ExplicitTop = 6
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    Left = 572
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Filter = 'media|*.mp4;*.avi'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 232
    Top = 320
  end
end
