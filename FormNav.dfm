object FNav: TFNav
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Navegador'
  ClientHeight = 565
  ClientWidth = 850
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
    Top = 530
    Width = 850
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Image2: TImage
      Left = 811
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
    object Splitter2: TSplitter
      Left = 250
      Top = 0
      Height = 35
      ExplicitLeft = 264
      ExplicitTop = 1
    end
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 250
      Height = 35
      Align = alLeft
      ButtonHeight = 35
      ButtonWidth = 39
      Caption = 'ToolBar1'
      DoubleBuffered = False
      Images = ProjNONS.VirtualImageList1
      ParentDoubleBuffered = False
      TabOrder = 0
      object ToolButton2: TToolButton
        Left = 0
        Top = 0
        Caption = 'ToolButton2'
        Enabled = False
        ImageIndex = 19
        OnClick = BitBtn2Click
      end
      object ToolButton3: TToolButton
        Left = 39
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 19
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 47
        Top = 0
        Caption = 'ToolButton1'
        ImageIndex = 18
        OnClick = BitBtn1Click
      end
      object Image1: TImage
        Left = 86
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
      end
      object Image4: TImage
        Left = 125
        Top = 0
        Width = 39
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
      object Image3: TImage
        Left = 164
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
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 499
    Width = 850
    Height = 31
    Align = alBottom
    AutoSize = True
    BevelKind = bkSoft
    BevelOuter = bvNone
    TabOrder = 1
    object ComboBox1: TComboBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 840
      Height = 21
      Align = alClient
      AutoDropDown = True
      TabOrder = 0
      Text = 'https://google.com.br'
      OnKeyDown = ComboBox1KeyDown
    end
  end
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 850
    Height = 499
    Align = alClient
    TabOrder = 2
    OnNavigateComplete2 = WebBrowser1NavigateComplete2
    ExplicitLeft = 224
    ExplicitTop = 152
    ExplicitWidth = 300
    ExplicitHeight = 150
    ControlData = {
      4C000000DA570000933300000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
