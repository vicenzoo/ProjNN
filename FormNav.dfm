object FNav: TFNav
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Navegador'
  ClientHeight = 563
  ClientWidth = 758
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
    AlignWithMargins = True
    Left = 3
    Top = 522
    Width = 752
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 534
  end
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 758
    Height = 492
    Align = alClient
    TabOrder = 0
    OnNavigateComplete2 = WebBrowser1NavigateComplete2
    ExplicitTop = 150
    ExplicitHeight = 413
    ControlData = {
      4C000000574E0000DA3200000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 528
    Width = 758
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Image2: TImage
      Left = 719
      Top = 0
      Width = 39
      Height = 35
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
      ExplicitLeft = 722
      ExplicitHeight = 31
    end
    object Image1: TImage
      Left = 83
      Top = 0
      Width = 39
      Height = 35
      Align = alLeft
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
        994944415478DA63641860C038EA805107E010FF4F05B3CF03B12B10BF1D2807
        80C045207601E237E43A80918018367118FF34109B02F14D207602E267F47680
        2010EF823AE216D4114F69E1007C7A4581782F10EB02F13520D6A6B70318A08E
        78854B2F390E201610E5F821E5004AC0A803287600B92523BAFEA1EF0062A384
        68FDA30E1875C0A80368DD242368DFA07500DDC0A803461D0000EB8B4D214B5C
        1BCD0000000049454E44AE426082}
      OnClick = Image1Click
      ExplicitLeft = 680
      ExplicitHeight = 31
    end
    object Splitter2: TSplitter
      Left = 80
      Top = 0
      Height = 35
      ExplicitLeft = 68
      ExplicitTop = 6
    end
    object Splitter3: TSplitter
      Left = 38
      Top = 0
      Height = 35
      ExplicitLeft = 29
      ExplicitTop = -3
    end
    object Image3: TImage
      Left = 171
      Top = 0
      Width = 39
      Height = 35
      Align = alLeft
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000001
        4F4944415478DAED974B4EC33014455F99B30216C03250B7C2A7501831E537A0
        7CC40431282A2D9FB5C042580063E6847B655B7AB21C27796A6B55EA95AE14D9
        C9BB278EE24F4F0AABB7EA004770054F4B000CE1677F7D0CBF2C13808163F53C
        47E1049E2C03E00CBE85FFE00DDF16AED977BF48001D7E08BFFAF681B84F4088
        73F86E11002C7CA3C2DFC40D7DA873A0202E3CE8DC00587014854B0420168836
        0075E1298018E2D28F9A19604F059EC24F517F555387F73EFA7E02BD5B01B6E0
        4FF8217AF32680301204E9C33F56006A13FEADE9AB1AEAE49E6D0D90531340A3
        D6006B80950028FA1B6EC35FE2D6FED4949A03E034CCA97B07FEB602149F8AA9
        7D717BBED4E29202E03DD7925EBC4C0039881840870F726FDE1580E2E7984510
        1A408773D83FDA14EDFAFBEC8ADB860588916FBFB2845B006208ADCEE15600AA
        E8B63CA8E8C124A8E8D16C2E2A0EF00F64116521897764CB0000000049454E44
        AE426082}
      OnClick = Image3Click
      ExplicitLeft = 122
    end
    object Image4: TImage
      Left = 122
      Top = 0
      Width = 49
      Height = 35
      Align = alLeft
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
        A44944415478DA63641860C038EA80A1E280FFB4327FC83980EAEA471D30EA00
        6C0AD880B809882380589E480B09818740BC14881B80F837210774027119952C
        46076D405C4DC801CF80581288ED81F810952C7602E2BD40FC14886508390039
        FEF603F13F2076A68223B0A60B420E380C7580FD4039809A60683B801A95D1F0
        70002525E1D0730036408D06CCE077003E034746758CCF4052C1F07100CDC0A8
        0306DC010097B73A218699B1860000000049454E44AE426082}
      OnClick = Image4Click
    end
    object BitBtn2: TBitBtn
      Left = 0
      Top = 0
      Width = 38
      Height = 35
      Align = alLeft
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000000000000000000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000FF080000
        FF4C0000FF710000FF710000FF4C0000FF080000000000000000000000000000
        0000000000000000000000000000000000000000FF010000FF6C0000FFE90000
        FFC10000FF900000FF900000FFC20000FFE90000FF6A00000000000000000000
        00000000000000000000000000000000FF010000FF9E0000FFC10000FF280000
        00000000000000000000000000000000FF280000FFC20000FF9C0000FF010000
        00000000000000000000000000000000FF710000FFC00000FF06000000000000
        00000000FF0D0000000000000000000000000000FF060000FFC10000FF6F0000
        000000000000000000000000FF090000FFE80000FF2200000000000000000000
        FF2D0000FFE50000FF210000000000000000000000000000FF230000FFE70000
        FF0800000000000000000000FF4D0000FFBA00000000000000000000FF260000
        FFE40000FF6A00000000000000000000000000000000000000000000FFBC0000
        FF4B00000000000000000000FF740000FF8B000000000000FF2D0000FFEE0000
        FFAF0000FF800000FF800000FF800000FF800000FF40000000000000FF8D0000
        FF7300000000000000000000FF740000FF8B000000000000FF250000FFE90000
        FFAF0000FF800000FF800000FF800000FF800000FF40000000000000FF8C0000
        FF7200000000000000000000FF4D0000FFB900000000000000000000FF2D0000
        FFE60000FF5400000000000000000000000000000000000000000000FFBC0000
        FF4A00000000000000000000FF090000FFE80000FF2100000000000000000000
        FF2A0000FFE40000FF210000000000000000000000000000FF230000FFE70000
        FF080000000000000000000000000000FF710000FFBF0000FF06000000000000
        00000000FF0D0000000000000000000000000000FF060000FFC10000FF6F0000
        00000000000000000000000000000000FF010000FF9E0000FFC10000FF210000
        00000000000000000000000000000000FF230000FFC30000FF9D0000FF010000
        0000000000000000000000000000000000000000FF010000FF6C0000FFE50000
        FFBB0000FF900000FF900000FFBC0000FFE50000FF6B0000FF01000000000000
        00000000000000000000000000000000000000000000000000000000FF080000
        FF4C0000FF710000FF710000FF4C0000FF080000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 41
      Top = 0
      Width = 39
      Height = 35
      Align = alLeft
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000000000000000000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000006000080065
        004C00630071006300710065004C006000080000000000000000000000000000
        000000000000000000000000000000000000000000010063006C006400E90064
        00C10063009000630090006400C2006400E90065006A00000000000000000000
        0000000000000000000000000000000000010064009E006400C1006600280000
        000000000000000000000000000000660028006400C20064009C000000010000
        000000000000000000000000000000630071006400C000550006000000000000
        0000000000000062000D000000000000000000550006006400C10065006F0000
        0000000000000000000000710009006400E80062002200000000000000000000
        000000620022006400E50063002C000000000000000000660023006400E70060
        000800000000000000000063004D006400BA0000000000000000000000000000
        0000000000000065006A006400E4006500260000000000000000006400BC0063
        004B0000000000000000006300740065008B0000000000640040006400800064
        00800064008000640080006400B0006400EE0066002D000000000063008D0064
        00730000000000000000006300740065008B0000000000640040006400800064
        00800064008000640080006400B0006500E900630024000000000064008C0065
        007200000000000000000063004D006500B90000000000000000000000000000
        00000000000000640054006400E60063002C0000000000000000006400BC0064
        004A000000000000000000710009006400E80064002100000000000000000000
        000000620022006400E400640029000000000000000000660023006400E70060
        000800000000000000000000000000630071006400BF00550006000000000000
        0000000000000062000D000000000000000000550006006400C10065006F0000
        0000000000000000000000000000000000010064009E006400C1006400210000
        000000000000000000000000000000660023006300C30065009D000000010000
        000000000000000000000000000000000000000000010063006C006400E50064
        00BB0063009000630090006400BC006400E50064006B00000001000000000000
        0000000000000000000000000000000000000000000000000000006000080065
        004C00630071006300710065004C006000080000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 492
    Width = 758
    Height = 27
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 2
    object ComboBox1: TComboBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 752
      Height = 21
      Align = alClient
      TabOrder = 0
      Text = 'https://google.com.br'
      OnKeyDown = ComboBox1KeyDown
    end
  end
end
