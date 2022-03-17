object ProjNONS: TProjNONS
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'ProjNONS'
  ClientHeight = 635
  ClientWidth = 987
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  GlassFrame.Enabled = True
  Menu = MainMenu1
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SplitView1: TSplitView
    Left = 0
    Top = 0
    Width = 200
    Height = 635
    CloseStyle = svcCompact
    Color = clMenu
    CompactWidth = 80
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 0
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 200
      Height = 39
      Align = alTop
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
        3E4944415478DAEDD3A101004008C340D87F687E81D74D4522319CE90EDC0A10
        20E073BBE4CF4A403401022A01F80C71403401022A01F80C7140340102043C85
        DE062195E388820000000049454E44AE426082}
      OnClick = Image2Click
      ExplicitWidth = 598
    end
    object Panel5: TPanel
      Left = 0
      Top = 590
      Width = 200
      Height = 45
      Align = alBottom
      BevelOuter = bvNone
      Color = cl3DLight
      ParentBackground = False
      TabOrder = 0
      object Label8: TLabel
        Left = 0
        Top = 0
        Width = 200
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Estilos:'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 34
      end
      object ComboBox1: TComboBox
        AlignWithMargins = True
        Left = 3
        Top = 16
        Width = 194
        Height = 21
        Align = alTop
        Style = csDropDownList
        TabOrder = 0
        OnChange = ComboBox1Change
      end
    end
    object CategoryButtons1: TCategoryButtons
      Left = 200
      Top = 39
      Width = 80
      Height = 551
      Align = alLeft
      BackgroundGradientColor = clWhite
      BackgroundGradientDirection = gdVertical
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonWidth = 5
      ButtonOptions = [boFullSize, boGradientFill, boShowCaptions, boUsePlusMinus, boCaptionOnlyBorder]
      Categories = <
        item
          Caption = 'Menu'
          Color = 16053492
          Collapsed = True
          Items = <>
          TextColor = clWindowFrame
        end
        item
          Caption = 'Offline'
          Color = clWhite
          Collapsed = False
          Items = <
            item
              Action = AVideo
              ImageIndex = 10
            end
            item
              Action = ATexto
              ImageIndex = 9
            end
            item
              Action = AHub
              ImageIndex = 11
            end
            item
              Action = ADraw
              ImageIndex = 25
            end>
          TextColor = clBlack
        end
        item
          Caption = 'Online'
          Color = clWhite
          Collapsed = False
          Items = <
            item
              Action = ANav
              Caption = 'Nav.'
              ImageIndex = 2
            end
            item
              Action = AMusicC
              ImageIndex = 5
            end>
          TextColor = clBlack
        end
        item
          Caption = 'Facil.'
          Color = clWhite
          Collapsed = False
          Items = <
            item
              Action = AFiletoZip
              Caption = 'ZIP'
              ImageIndex = 1
            end
            item
              Action = ALoadPDF
              ImageIndex = 3
            end
            item
              Action = AFileDownloader
              Caption = 'Dloader'
              ImageIndex = 20
            end>
          TextColor = clBlack
        end
        item
          Caption = 'Aux'#237'liar'
          Color = clWhite
          Collapsed = False
          Items = <
            item
              Action = AAlarme
              ImageIndex = 12
            end
            item
              Action = AExplorer
              Caption = 'Explorer'
              ImageIndex = 13
            end
            item
              Action = Atxtaux
              Caption = 'Texto+'
              ImageIndex = 14
            end>
          TextColor = clBlack
        end>
      GradientDirection = gdVertical
      HotButtonColor = 10154236
      Images = VirtualImageList1
      RegularButtonColor = clWhite
      SelectedButtonColor = 5698042
      TabOrder = 1
    end
    object CategoryPanelGroup1: TCategoryPanelGroup
      Left = 0
      Top = 39
      Height = 551
      VertScrollBar.ParentColor = False
      VertScrollBar.Smooth = True
      VertScrollBar.Style = ssFlat
      VertScrollBar.Tracking = True
      BevelInner = bvNone
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      ChevronHotColor = 445951
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GradientBaseColor = clMenu
      GradientColor = clMenu
      GradientDirection = gdHorizontal
      HeaderAlignment = taCenter
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clBlack
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      object CategoryPanel2: TCategoryPanel
        Top = 120
        Height = 30
        Caption = 'Vers'#227'o Info'
        Collapsed = True
        TabOrder = 0
        ExpandedHeight = 71
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 196
          Height = 0
          Align = alClient
          TabOrder = 0
          object Label6: TLabel
            Left = 1
            Top = 1
            Width = 194
            Height = 13
            Align = alTop
            Caption = 'Projeto No Net System (NONS) '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
            ExplicitWidth = 172
          end
          object RzLEDDisplay1: TRzLEDDisplay
            Left = 1
            Top = -31
            Width = 194
            Align = alBottom
            Caption = ''
            SegOnColor = clYellow
            SegOffColor = clOlive
            Scrolling = True
            ScrollDelay = 50
            ExplicitLeft = 91
            ExplicitTop = 17
            ExplicitWidth = 100
          end
        end
      end
      object CategoryPanel4: TCategoryPanel
        Top = 90
        Height = 30
        Caption = 'Aux'#237'liar'
        Collapsed = True
        TabOrder = 1
        object Button6: TButton
          Left = 0
          Top = 0
          Width = 196
          Height = 25
          Action = AAlarme
          Align = alTop
          TabOrder = 0
        end
        object Button9: TButton
          Left = 0
          Top = 25
          Width = 196
          Height = 25
          Action = AExplorer
          Align = alTop
          TabOrder = 1
        end
        object Button10: TButton
          Left = 0
          Top = 50
          Width = 196
          Height = 25
          Action = Atxtaux
          Align = alTop
          TabOrder = 2
        end
      end
      object CategoryPanel3: TCategoryPanel
        Top = 60
        Height = 30
        Caption = 'Facilitadores'
        Collapsed = True
        TabOrder = 2
        object Button5: TButton
          Left = 0
          Top = 0
          Width = 196
          Height = 25
          Action = AFiletoZip
          Align = alTop
          TabOrder = 0
        end
        object Button7: TButton
          Left = 0
          Top = 25
          Width = 196
          Height = 25
          Action = ALoadPDF
          Align = alTop
          TabOrder = 1
        end
        object Button11: TButton
          Left = 0
          Top = 50
          Width = 196
          Height = 25
          Action = AFileDownloader
          Align = alTop
          TabOrder = 2
        end
      end
      object CategoryPanel5: TCategoryPanel
        Top = 30
        Height = 30
        Caption = 'Online'
        Collapsed = True
        TabOrder = 3
        object Button8: TButton
          Left = 0
          Top = 25
          Width = 196
          Height = 25
          Action = AMusicC
          Align = alTop
          TabOrder = 0
        end
        object Button3: TButton
          Left = 0
          Top = 0
          Width = 196
          Height = 25
          Action = ANav
          Align = alTop
          TabOrder = 1
        end
      end
      object CategoryPanel1: TCategoryPanel
        Top = 0
        Height = 30
        BiDiMode = bdLeftToRight
        Caption = 'Offiline'
        Collapsed = True
        ParentBiDiMode = False
        TabOrder = 4
        object Button1: TButton
          Left = 0
          Top = 0
          Width = 196
          Height = 25
          Action = AVideo
          Align = alTop
          TabOrder = 0
        end
        object Button2: TButton
          Left = 0
          Top = 25
          Width = 196
          Height = 25
          Action = ATexto
          Align = alTop
          TabOrder = 1
        end
        object Button4: TButton
          Left = 0
          Top = 50
          Width = 196
          Height = 25
          Action = AHub
          Align = alTop
          TabOrder = 2
        end
        object Button12: TButton
          Left = 0
          Top = 75
          Width = 196
          Height = 25
          Action = ADraw
          Align = alTop
          TabOrder = 3
        end
      end
    end
  end
  object SplitView2: TSplitView
    Left = 762
    Top = 0
    Width = 225
    Height = 635
    CloseStyle = svcCompact
    Color = clMenu
    CompactWidth = 75
    OpenedWidth = 225
    Placement = svpRight
    TabOrder = 1
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 225
      Height = 39
      Align = alTop
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
        3E4944415478DAEDD3A101004008C340D87F687E81D74D4522319CE90EDC0A10
        20E073BBE4CF4A403401022A01F80C71403401022A01F80C7140340102043C85
        DE062195E388820000000049454E44AE426082}
      OnClick = Image1Click
      ExplicitLeft = 10
      ExplicitTop = -6
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 506
      Width = 219
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object Label4: TLabel
        Left = 0
        Top = 0
        Width = 219
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 37
      end
      object BitBtn1: TBitBtn
        Left = 0
        Top = 13
        Width = 219
        Height = 25
        Align = alTop
        Caption = 'Verificar Conex'#227'o'
        Kind = bkRetry
        NumGlyphs = 2
        TabOrder = 0
        OnClick = BitBtn1Click
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 39
      Width = 225
      Height = 464
      Align = alClient
      BevelOuter = bvNone
      Color = clMenu
      ParentBackground = False
      TabOrder = 1
      object Label3: TLabel
        Left = 0
        Top = 227
        Width = 32
        Height = 13
        Caption = 'Notas:'
      end
      object Label7: TLabel
        Left = 2
        Top = 341
        Width = 27
        Height = 13
        Alignment = taCenter
        Caption = 'Name'
      end
      object CalendarView1: TCalendarView
        Left = 0
        Top = 0
        Width = 225
        Height = 219
        Align = alTop
        BorderColor = clBtnFace
        Date = 44491.000000000000000000
        DisabledColor = clMenu
        FocusedColor = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 18
        Font.Name = 'Segoe UI'
        Font.Style = []
        HeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        HeaderInfo.DaysOfWeekFont.Color = clWindowText
        HeaderInfo.DaysOfWeekFont.Height = -13
        HeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        HeaderInfo.DaysOfWeekFont.Style = []
        HeaderInfo.Font.Charset = DEFAULT_CHARSET
        HeaderInfo.Font.Color = clWindowText
        HeaderInfo.Font.Height = -13
        HeaderInfo.Font.Name = 'Segoe UI'
        HeaderInfo.Font.Style = []
        OnChange = CalendarView1Click
        OnClick = CalendarView1Click
        ParentFont = False
        ParentShowHint = False
        SelectionColor = clYellow
        ShowDayOfWeek = False
        ShowHint = True
        TabOrder = 0
        TodayColor = 445951
      end
      object Memo1: TMemo
        Left = 0
        Top = 246
        Width = 225
        Height = 89
        Align = alCustom
        TabOrder = 1
      end
      object BitBtn2: TBitBtn
        Left = 140
        Top = 360
        Width = 85
        Height = 25
        Caption = 'Exportar'
        TabOrder = 2
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 0
        Top = 360
        Width = 85
        Height = 25
        Caption = 'Salvar'
        TabOrder = 3
        OnClick = BitBtn3Click
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 607
      Width = 225
      Height = 28
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Panel6'
      TabOrder = 2
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 200
        Height = 28
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        TabOrder = 0
        object Label13: TLabel
          Left = 0
          Top = 13
          Width = 200
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Hora'
          Transparent = False
          ExplicitWidth = 23
        end
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 200
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Dia.Hora'
          Transparent = False
          ExplicitWidth = 42
        end
      end
      object BitBtn4: TBitBtn
        Left = 200
        Top = 0
        Width = 25
        Height = 28
        Action = AClock
        Align = alRight
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          20000300000000040000000000000000000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000170000006200000077000000770000
          0077000000770000007700000077000000770000007700000061000000160000
          0000000000000000000000000036000000E70000009900000088000000880000
          0088000000880000008800000088000000880000008800000099000000E70000
          00370000000000000000000000C4000000520000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000540000
          00C60000000000000000000000F40000000A0000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000D0000
          00F20000000000000000000000C90000004F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000540000
          00C600000000000000000000003C000000EC0000005900000000000000000000
          0000000000000000000000000000000000000000004A00000099000000E90000
          003800000000000000000000000000000064000000B500000013000000020000
          000000000000000000000000000000000005000000E6000000740000001E0000
          000000000000000000000000000000000008000000AD000000F50000009C0000
          00060000000000000000000000050000009D000000B100000000000000000000
          000000000000000000000000000000000000000000000000000F000000B80000
          00DC0000008C00000096000000DC000000B20000000C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00360000006F0000006800000030000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
        TabOrder = 1
        WordWrap = True
      end
    end
    object Panel8: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 553
      Width = 219
      Height = 51
      Align = alBottom
      AutoSize = True
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 3
      object Image4: TImage
        AlignWithMargins = True
        Left = 200
        Top = 16
        Width = 16
        Height = 32
        Align = alRight
        AutoSize = True
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
          001008060000001FF3FF6100000006624B474400FF00FF00FFA0BDA793000000
          A44944415478DA6364A0103052DB002620FE47400F8A1A64039881F838109702
          F1411C9A1D80B81388AD80F82F3617D800F106204E00E22D6872BE403C1F8803
          80F808BE30C066084CB33F101F252610AD817823102742F95835E3330066C876
          20FE0FC45ED8341332C00F881741D9B140BC991403409AE7429DCD00F54E3210
          6F22C60064CDC7A06256B80C413700A4690ED490E36872580DA17A42A2282993
          0528360000C506271166201E770000000049454E44AE426082}
        Transparent = True
        Visible = False
        OnClick = Image4Click
        ExplicitLeft = 206
        ExplicitTop = 3
        ExplicitHeight = 16
      end
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 219
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Atalho R'#225'pido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 79
      end
      object BitBtn5: TBitBtn
        Left = 0
        Top = 13
        Width = 40
        Height = 38
        Align = alLeft
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          20000300000000040000000000000000000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000400000004000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000800000008000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000800000008000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000800000008000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000800000008000000000000000000000000000000000000000000000
          0000000000000000000000000000000000400000008000000080000000800000
          0080000000C0000000C000000080000000800000008000000080000000400000
          0000000000000000000000000000000000400000008000000080000000800000
          0080000000C0000000C000000080000000800000008000000080000000400000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000800000008000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000800000008000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000800000008000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000800000008000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000400000004000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
        TabOrder = 0
        OnClick = BitBtn5Click
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 226
    Top = 110
  end
  object ActionList1: TActionList
    Left = 226
    Top = 78
    object AVideo: TAction
      Caption = 'V'#237'deo'
      OnExecute = AVideoExecute
    end
    object ATexto: TAction
      Caption = 'Texto'
      OnExecute = ATextoExecute
    end
    object AHub: TAction
      Caption = 'Hub'
      OnExecute = AHubExecute
    end
    object ANav: TAction
      Caption = 'Navegador'
      OnExecute = ANavExecute
    end
    object AFiletoZip: TAction
      Caption = 'Comprimir Arquivo'
      OnExecute = AFiletoZipExecute
    end
    object AAlarme: TAction
      Caption = 'Alarme'
      OnExecute = AAlarmeExecute
    end
    object AMusicC: TAction
      Caption = 'Musica'
      OnExecute = AMusicCExecute
    end
    object ALoadPDF: TAction
      Caption = 'PDF'
      OnExecute = ALoadPDFExecute
    end
    object AExplorer: TAction
      Caption = 'Explorador de Arquivos'
      OnExecute = AExplorerExecute
    end
    object Atxtaux: TAction
      Caption = 'Aux'#237'liar de Texto'
      OnExecute = AtxtauxExecute
    end
    object AClock: TAction
      ImageIndex = 14
      OnExecute = AClockExecute
    end
    object AFileDownloader: TAction
      Caption = 'Downloader'
      OnExecute = AFileDownloaderExecute
    end
    object ADraw: TAction
      Caption = 'Draw'
      OnExecute = ADrawExecute
    end
  end
  object ImageCollection1: TImageCollection
    Images = <
      item
        Name = 'icons8_internet_16'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000006624B474400FF00FF00FFA0BDA7930000022D49444154381195924B
              4894611486DFEF9F7F54CC08472D2A4C0257AD22D4D944826D8212149420B516
              4D419BD66D241049BC20429B40215AB850527063D0D28597218A2498162D8AC0
              712531955173F97ACE9F9AE5CAE1BCF3BEE77CE7F25D7E271DFC79AF4A15D422
              A73A56B715D3BA73FA8C3E606E7F84C25A15F5905882E2B4BCB2E823A0099C50
              4963AE4CABE83D0B7715C5E7281E66DA18D34B34B8C89A0DB845EC0E6B8D0AD4
              E38B3AEF627AC25A6481FD539C206188898FE1696215E841380E5A697817BE4D
              2CC72EEA7D4157F123B309F2798D2AD41CC5752464995E0E4E31394DAC85CC02
              FA75A4637A070FE0F7722F3FC5F40A3A3E0353C08314C801D3BD3B6CFA063A0F
              B6400FE8A231A72AA899692B38EDC0EC3B7F47C1BFE6544F600354836FA00DC8
              D1A91B9107765EB1B535B698C437BD7B04117BCFB8930C3B46CE2BFC0117AACF
              CE7F852637C10F605BB5ED191BF61F6191F54D60F13E78D286045CDE3AB77B01
              270DCCEC628B26FE430E7F1E64C15776928121FEE9364B13EB7819F7055B4DF2
              1A096233645C272662BFD8F6027E0D7A0474F00A1F8368D16B82854E05FA043F
              A2F003DC8D7F2662FBA4BD1A2DD7C5F592E6F76936CE0B56450D082E93F89685
              067896440F7F81ED354EC3CF695A0B3B8AE2AC3D4057939FB2F3A2FF18476947
              A5C03437BD0487E0385F621545FD68CBDFA0D92677F79423642C40FCAF31A192
              ED5D23D20AEC694B146728DAC6DF822FE1BF41275DA87BF0E18C0167F9F487E0
              06ABFC0DFF2BE4058D9AD6A40000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8_internet_32'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000005BC494441545809C5966D
              6855651CC0FFE7EEDCCDED2E5FC239B734A7435A1F4C45D71015D968698BDEA0
              143FB442418946055984631F8411C58A2C102CA83E6454B30F2AC33529499A98
              2BB731CAA9E9A6B2DCFB8BBBC65EEE764EBFFFB9F7DC73B786F74A64E3F9DDFF
              CBF37F79CE739E737644FEE73FE34EFADBB6E488255B60B118924D6E00FAD0BB
              C5965649923AC3909BF8121E46BC489AFA69B89BB85D345981EC864BD00141C8
              8485F01098F02371EF1A7EF901FDDF0D7B421EB3437211194456C13A16E4D3AA
              33C834E29E866FC1821A627235F68E21D1B027A59C2293F0097616CC05A72073
              7BF07FAD8559D4252874F47159498C698F4B01F367A09FB9229D4B180A18247E
              06B7E039EC141A5640237A808295F86DA8D5A248D547F117D2782DF202BEA788
              35911FC1386CD7D884A051050941A7982D8BB0CF61DB142E868DE893A04D6317
              A0F6759ACE26E6FDC8BCEE9C9FFCD7B17581EBE22E80C01208815EC162E435B0
              29D2A4C9E8F5A0CD94E90BD0B87216A1797AD51A7314DB24E72074A167689D58
              0CD760D29409F90DFB3B4EF06BD879D88BB0454CB92A22D7B03721C3C3967E23
              599AB8E247C20E7E6D19C6D7C0EE15F068DE8347739B9137C96D419EA0F6ABC8
              E830A39A253B48CAE259AEA4E8661EBD25E28BCE9EA4C026EC65518F2D7E47F7
              89E7C3C1C207105DE4AF440A7219793F51BB1CFB2BE63FE45DD1863E75B0CD8D
              347E87802CB6EB2FD02D549C60EC0650DBE59FB76042F4ACECA3C683D362EBF1
              E993D5428FCAD8CE3E3598CCE5E5B11AAA59F10E7C69E08E06E6D3315643FC61
              C806822EC010B863BD846415C661D80AD1E173344B1E45DE60539B584409BA37
              6CF983647DFE4DCF795B2D8F2DB6D97267E7A29149F2B84C4A0DFEE55C508E44
              FEDC052CC56E05B5D720BDE1935E92323D475C2D83063E2EA4674AA42DF95CE0
              797C36E749FBA1EA1955614816A21374AB8F21BD6149338605BA7D88C8301CBF
              1A53FDEA114965D1B52C221836F9B5A58D9D19E36C0C30978DC71B388FC201CF
              F3DF69F4B9CC817FD9EDA05BAEBA6ED702B66E3E01EE2977E58BF8B6816BBBB2
              561367F0EBFC59FCA3A0BA4BBDC6C36C766618E98CF0026CB98195CD16F52187
              C01B86CC2741FF057BBEDB6B234C67420AE8AD4338A3950B9C83A6F53A90CE08
              2FC070DE80AB0848C37B1ABC61C902DE849D9E23AEE6C61E2272142641C7CF1C
              BE35AA50AFD991FC8417C0970CBAC963528C3C0CDE306405C665084222A3D109
              32A49EB76A3EFA2084D04F209F8073ECB4FA508597240287DE9393A8A5047E83
              EC007768110BE32CC41F869C7183A87B9E7A0F73EAFFE4057704F93C38DF116E
              4C54F28A2CE2D058FC23C9E75604605E0C067A1AC4FAD235799A4FE793A97395
              93BE5BE71562B2B05BF18FA2E7A9CFC570159504D42203ACBA90DBF124FA76D0
              5187EF4B7C9F62F841B892662349DE26A7DAB1F5C790167C95F8FA99DF8BFEB1
              BA151ADF4BBED6CFA05631BB7345FD5320E8019287D88DF7D0FDE835A08F510F
              F62CF4CFC18EA0C524A2BBBE6DE4AEC737CA154777C06D428D74E6BE871BF698
              73B6DC294F52603301210ABC428289BD1FDBC27E095B3F3606B1B5E1F4059C62
              DEC7DC31624760CA02B0F730570DC741F33B895F1A7E0ABCFEC207431DE64E9E
              FD2AB6EC008FCC9BE81BA0047F32BC0063103BDAD9D652E2B7E2EC22B60FC9FF
              66F1D364B9EAF89E4116C12DD027ED14D20F330FAE7C232BED455E446AB2160C
              683407B5802BDAEBE8137290260B1DDD163DBCA9C477335F863C02E3CC2F413E
              0B63E8F7696C42109C49927ED98E51B0092A68AE2FAC94D802C4CD61A145B09F
              F82EE24690BD3000EDF83F202609A99FF055B1B909E924E790BC0F7EA7A01DA1
              077905545A48E5179ABF817E1D0659EC5AE44E0852631E73BBD087D1E7BA8D0D
              574954929CCB2BF57E1EB36C083879161FACA6FCCAA3D5AF368DCA380FA7F940
              6D223E05BD9D337088B910397AEB4A0D53BEC0BE3B8305BDC595EBCEB5A197B1
              A85977A773A40B0D53B97D5B9049115754FC0DECF6CBEE44B9547D0000000049
              454E44AE426082}
          end>
      end
      item
        Name = 'internet_100px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
              5400000006624B474400FF00FF00FFA0BDA79300001529494441545809ED9909
              905CC579C7BF37B3BB5A5D46085160840E744B41463236470C16C4065F1CC28E
              8B98C3D8221C0E76A0CA6014275499C4368E70115450B6E2B25D045C800355C4
              C138C1209000453106810F82902C590708010221242169E778F97D33DB33DDFD
              DECCBC373BBB3B4A76ABFFD3FDF5F7FF8EFE7AFABD376F4586FE862A305481A1
              0A0C5560A802CD552068CEACFFADC2503244992E05992D81CC901088CC643C9C
              F1A1E886836EA06D1F1FFBD1ED44F72EE3758CD7317E49B2B216797D104891BE
              ED5BDB6C486903723297029E46214FA7721F065A78BA3EB7B7F0F0049BF4B8E4
              E571E992DFB34121736DD782C1CE28CCC92914EA62F2F87330160C447B954DBF
              8F40F7059DF2147DDBB441D9104E43179722DD842BA9C407C060B6A709BE8C93
              F9134E4D8EF1A0B601DD1036A29B2BF9A57C3BBFC6AA2782466D2784DF00734F
              588BFD76E9943DCCEDED059D8CE463A4E46414779EF772E266126306738A79F4
              6340A3B609BB25D8FF988D39D0887C50EBD98820CCCB22B00D8475B01BDD7D61
              41BE12F6C871D8E98DBD4F6B571FF89A87CFBFC6F7FD600FA897C32BE82FC16E
              40BFAC7D5A641A63EE1127538CE75864AD22E4D03D083E4B1186A5F1DD0C5763
              9462E54563E619C7E75590356CE449CDC4684B9BD2C273720B0BD682C72DFA00
              BA1FC19B35580B20F66C72F831E8017139E6F842DD0CAF6BB0726C495C16308D
              53B1A6C622F7B1C8A57026A40D864D80ED47F0FBCFBE2D73CBD0FD993F9F44C6
              EF44EC6F03FB40DCC6FC1ACE9424BEDA8EC3465CCEA2DE05710BBB93851DD54C
              D25C3EE6E3F30950F2EBFB30F3F42BE01EE7EB93C8E4361EFB3B412986D7EF46
              BE28899FB6E1F00DBD91A4E316B385F985B512A51059F46763BF84F1089FC726
              5F8D5E2F7115DF114E5E2A3AB8FBB1F9728413CA88528CBC9C459CACAF3732F6
              9F065B81EDB33C2EC80D86D7B63D8BEB20F93B413969B738F7A01F1D973CF3A3
              289C167B23B63B91A7FB3CE66F0311BF31BC0887E2DF1AE18532137F6F830DC4
              FE0A3147F91C95991F0DE75E10F59B973BD07728AFED40625D241D97788E055F
              873EF2F8C85C16DD15D8BD01CC82CFF3174741BF6DE90DAFD447B8EE97A0C429
              D9E6E49B31DCCF9474659BD7195F464E99082F94803C17A3CF81AACFB2DDDDD8
              74FA36832A93508644EF017EB23B29E6E971C9717DD7DF04FE0DFF7E9F8BCF0B
              80EFB722C7F02BBA18BBF363F80F38BC823C436EEFF7792AB3968FC0DD05FC18
              3FA1068172DA0224F803E027B99E24A7FA0932D7C1B7ED06F83DC0B6D9856EBC
              CD479E03A7EE0F389BAF63F8B64F7FBC1B9F339567807C3436EF009BAB8FB9FF
              886E98E1999E397D44DEE4F1D57699E10C6A4F71BF1E492E272F92F8043F31E6
              74F14F46F87AF40B729DCD87ABA76E752C57F9BDB06D74DC888FFE49F5AD5C03
              D6703DF35A541F4FC38DBCDA616E12A7656DC4C65B83F13F603D099D078AC05E
              C856128E6E464E16C0B3EF1521B2C1766C9CA72A8A7495A537BC48EF2F36890D
              BEAFB4ED883D12BBD740C43F736F50FC536DBE8EB19988EE6560DB1491CF56FD
              80838466137C37B013D2C2462F5379B9109EF3B88A5CB5E39D95BD007C1F865E
              9F80AA9CDE13C1BC3367DBE9D8D7D790F5496EACF20DD8A46B6A70359EE67E81
              E19A9E3CA761F31A508EC13BCCCF329C01E909D8CD029EF51239C037E9143F01
              389F03056012F6FBD7F1A7FFF5AB98E2E7A63A7CC7BE62D43B486A470CE7A98B
              1CF494ECA8639F4717DD94F2C9EF4167E7F534FE22F79FDE145BDFB1985BBD04
              4236E86A3F129C4F013F593BF1105F4B6C3B16320E9BBDC0E5B5F684A8EF3DC4
              3AD4895D7EE7A6BA5AC891D7676C1B1DB3F6AF32EFDAE4E4BBAAEB77F0487822
              C1FD6FFC5D7E6078C7C36B54D822459961DBB2B8EBB173175763339467DBEA58
              E712A320D7AA8D01B9CCC256EF03F5E2EF676D27191BD363773FB0EDF2F0E61B
              7DBFF4241C107415B0036F627E8C1D1079029C5781CD8B1B3FEAD97562F30A88
              E3C6CED9F63A4E630B7733B976A89D0173CB416C2C6B7E0776C7181BED91C7A2
              DF0A6CDB95CC07AAEF17F0EDBDDC0BA8979C33FB25D841E894DA9C0BEC0DD1F1
              17FB6529ECF43082F9DFDE9FF74BB083D829357A18E846186CA676AD7FB5C2E9
              B8C20BB48F40530FE2DAF54BEAD46426753A00CC8668BFA8A5C108D245802D40
              9D9791939B5B1AE4FF90339E1C973AB5CACB066AE8DCABFAB45C9C5F08CA1B51
              7EE2D94F00F7BD535E3EEF716C7E74DC23C7D94961FB0310E595E3D59CB77DE8
              B8191FD838FF79D4A723E66AC68CD15DACB10DA8CD4438FE29F90BA3EF738FF3
              FF067682B7D94E49404F50DC0B37DBC61EEB534AE0F8C8CB662F86CDAF39B67D
              E8B8191FD86C545B03D69361EE4D5033AEA7D327CD2E63AF3DFAEF03DB7E95CE
              2745A61691E4A6A33B0198164A56FEC908A5BE288BE82781A46D55104868C8C4
              98C6782218AC760C391C6382935B91F17F81A46D9214E412879C955B904360DA
              C9C4986284467DA626212F5F441700D31E23E18D46204807A55D6CE4447D20AB
              1C5E414E93C1FEF3730824CD8668F68BA94556070A6AB49E7E25302D90BC7C41
              12FE65E27804C84820FEFB9BBB1D6E413E893C09246F4579CE23DB27D0530D98
              E8E610CDB151225338251FF3486EADA825350D3C4EAC18BB21929379B0ED62EF
              E172F553E6ECE6DCD06C45CD7187FCDED3691C6F6AC045F7354787FCAE890CDC
              5A64456BF5AEE567AAF4C8B1965C7318BF215959E059E8E56AAF9963B70F657C
              1648D3DEE438BF6A0CF0D1C9782E18ECF63E72C99A24C8F115C66F81346D213E
              C618037CBCC37885D87F1D729A24F8CBC47242F9A8331F88F3EE8923BA107D37
              48D35EF4C8D390D3FAC0A4E56D381E3517BA4A5B5B19251B745393731CAA5F33
              BFA60EB92A4436849DEE447D2AA8B6BC3C5E154AA3334A9FE93EFEE8D00BE217
              C1510FA85090A95E3C37574F5943746B5290C73CDE026A9BF5E622626443B8D6
              CD84351A98B643BAE40523F4F61FEEED9377A1BCEC9003992CEDF217C8242715
              3F57475953706BD259BA17BD65B10F613C03D46DD10DC9CA2CCFE299C0FDED30
              05FD7890AE6564AB6350F48AE0280758F073C9C82B4D6430911350D9586A56C4
              C7B3A0DA0A91DA5675BDA34C6F5FED02D11352954379A92A302AC8C97CA66FA1
              B7C84026A677D24F167E2E7EAE49C3466BF39263EAD7D6519685E88684E21EAB
              8CB721BEBEECA7F16728F6F155FE38FD68131CEEE411CDD551D714FC8207E96B
              17DD1091294EC0A2AC73E440263872522194DD0E3510BDA63A538328B8B984A2
              8FADE9D309BDDAF8B593C8C343244626321388FEC6A84E17657B55288D9ADB90
              4E6F91611B6D4828634A2B331F7EAE66BE71EFD6C6AF5DE0C589F117DD905046
              39BC2ED9E3C8A11CEDC8C905F784481B6D48B450BB922FCB62FA27A4CBBB2A84
              32DA62271BF2EAD87DFD1CCAD86496432CBF023C758DA39EF6ABF8377C8E2F47
              4F88782744BC13E27B1892EB55C0BF2A343C21711B127811424F1E129357A0E0
              51E3EAED50E208A977D5F13824D815D0F764B6BCDF16E2C61D3193BA21F67D43
              8F59E537449893B5FCAFC4FDF118E324329595C3F9F5BAC3CC736DD5EBE93823
              A7ED830EB2B08CF0D79793ACB9FC25EE6E0747812C48DFF8111D743ABFC64778
              4EF67972448C9E90C07B32E8F19E0C02EF1548C465CD89F7789AE69E643C272D
              1143791B3FDF071340739B81215F9197B5ABA0478EA88C7510CA9BDAD5437443
              CAC9556D329E5369724372918D6D9F0D094A1BA227A3BAEEE646EE8664E448C7
              4D20AF3A728C10DD10913F38BC4CE4DDD616479F5408C43D21A1B4CF86486943
              92AEA4362F14B73619EF3594C8B6DAC6654DA6DC599F01F7084B945066DB22C7
              72BD23271582C8EF99CAFD24A98B7EE4B52697409E73720C65BE2307DE6B2847
              5916A21BC28DA9ACAA7CCEAC8C74909595DAA586FF0E2C943FA6F6D15F06A16C
              9256FC65E5578E9B40E6397228FFE3C831427443B2DE1B4A91F9FCE20C8C2D4F
              4A7A9DDC2469FF8ADE2B978C6C4EEBA2DFF8F1B9BC9E32DE366A53B92451B30E
              AE2E731C1FD96636444A1BB2D372348EFF22CEB5641DAED28F5408BC0DF1AFB7
              A99CB5981C974B564E248A7B3F65A24E5B21F65F8FE866745B535A53F7FF2396
              D20C2327845D2EA25C21F65F877CD416192F0769DB64B1FFB2B2C11607759C95
              8D7E7CEAB049B2722AF7CCDFFABA1AF2CF9CF90E39DB91459EC267D19B8B8891
              0D29310279A2D49B8F50169861A9CFCABFD2EF0169DAB11CE3C03258C7782F18
              ECA6EB887D50A180DB2523A789C86A50AFED67F37EE1104239C7918364F7DE8C
              636484BC2C37C3DEFE4C8A39A6772C24AA857CC8C809FB43E01D054A0D1F0506
              2F80C16EBF23979ADF5C743B29F61924F928A8D51E81A71B5BD253AB890C3E08
              AA2D230F5685DAA3F80DE9921730D90C4CEB96827CDA08A53E943B24ED5F5EE6
              7A266B3C7930C4863950ECBD6CCA5924F70088B6A2B8A7A358BA5C051671033E
              D65972CD61EC86605CE409E12ECFEA6247EE10FDC66C76E61A0919799F4779D6
              9307434C94033539C0A67C9604FF05B82D2337F18EEF4F2B93A15C5419EB2094
              9F6AD72770ECA6F3C2AE08CC3F588ACC4DB19D8605B9DCD21B5EBDFEDF1DFB50
              A6A6B4AFF8B6FDE8B8593FACE998387B9D8B03FC80E2DF1A136F0FF31F032747
              74A1F3C231CE6DB2391CAF029522305E665B925C17739B80CDA9377E139B8CE3
              232F69EC2BBE6D1F3A4E9143C507361BD556C1D89E0F75AE1E28FC377C1BE403
              CCAFA6B77D357A2070C238C5713465E17BE5AEF2F9050A3ADE481CE31EC63782
              A46D2CBF698EF5C88F7AF2408ACB9B0DC66BF66FF048BC187B7BF3BA983B8939
              BB2DB5853E8D297E07BBBD0154773C27B7F6C9699B1A3B6BCC73074D982797ED
              2BB12D806A8DB0EF95376B0D13BA4A4623E015BDCE4DC07D04999ACCFAE06179
              6BB4BFF50D1781EDE7400F303532FDC30D8DD31228FE3002BD024C10ED7F9ED6
              4FBBF3BDF5A5DA105D1BF69F02EF02AD8F8DDBA961A35B83BA480E825C02420F
              E726F7D0FE4C6F6DA9374457C80D7D017E7681D0C35D6C4A87725A029C050458
              09EC409B981F6307409E0C673BB0797163E72863D789CDCB208E1B3B67C7D571
              1A5BB85B35A6DA1930E7C431F369FBB0478EC7D71BC0F187FC3362DA2F1BD3BA
              76F9389B8ED37DC00EF410F381CD24A113E0EC0536CF1F17B073EE43DCABBEDE
              C0C6F161C7D4711A5B622D561B0372D1B5D5F56FB8497AFCCD269FB82FD863E8
              4627F19188C391FC16819CC459DCD5BE31BC8FC3DB0F5C6EF5E92384F31DDB8E
              44C7C16FB491157FB6AD8EB1ADE81A8CF7106BACDA1890CBCDBE8DD135DB1343
              AF16EB7DBFC84FA33BAC59BF8E1D8E3A71B81AD88BD71F43A738440438E78003
              C0E6DAE3D7F1371C6AA551989BEAF06DDBC8353EA91D31BE5909C8801C4662BB
              03D4F50F3575C3F7917C617FEBFB268717D01D95DA619C018EC613E00D602F60
              1797AAF93E9FC00BE0ED04612C0A729D6D83EFD1F05E03F17CEB84D9763A4E62
              03673B314629DF8082FD0DF3917846DFD79E7887E27F35F0636C44E75CB69B8E
              85F385C07ECFA5C1F44639C177CA46E94D2EEE7AAA365AA011B60D05BA0ADFAA
              AB0BDB46C7496CF07DA5720D28C848EC62BF0086D38A9E38A388F308F0D7B42D
              3C107903DE5C481617BD09E7E44582473725942348E631E02714E2C73F251978
              71DF28C7D6CF1A1B471F233F496ECEEF01625F1FC32BF9F1FD3792F1731E5885
              CF6762A1B5B14E38DC521CFA6DE435B391FF447A2E494B70681C9B7EBB9E0ADF
              01413B48F406F83DC070B57F079DB389C873E0EC01AA8F45C47FFC628DED6E7C
              3A8B469E84FFDD208C83EFBF9E4C1D3E848F2288F5D570BE20CFD6F39F58C7A2
              F4DB7C4F4CC09D24797A9C23366B1E1BF38C67F3A0CF457F01A8B9C0187E4D2E
              7ECE8FE1FF82F99A363EBF9ECC7ABE54CF5702DD3BF5FCA7D2B129FA0AFEDE98
              A03912BD0E7DE03B644E37F2626CB60053948B22BC9CFC83A537BC521FE1D63A
              2139B93186FBF98ADF9CBCC4F893A0E4D7F4BE4D3D99F54CC52E0F1C1F89E59C
              FC7D3DFFA97524A4FFB459522381C7D01F19E79479DDCCCBB0FB03D0CBCA1C9F
              C749FB36BAC84223BCB80D614323BC03F227F8D3CBE17ABE30976B0ECA61CE89
              A17336E08D80FF65702DE3436D9D8EB1BF1F547D14E479AE06C7374428CEA554
              7DB50C14EF4627A96A91F4242CAC15880566B13B1BFBEF321EE1F3D0E9A6393F
              346338D562E445B98B229C504612E316FC2D244ED6D63367DB3BBF73E0EAE3F8
              2A8BF32BDB56C714FE444BAFBE8A3C41F9FFB256EAC082A4CE07BB8026E5E321
              1637B5998C58F071F87C18947CFA3ECC3CFD7F5088B9BEBE918C5DC9AFE90D9F
              7C75339E32F3953E2767188EE9D1AD04B69F3B8D6E507B16318DA3BDC64BCE24
              BA8F6FE95238CE9355D284D9980FE2F7769FCFDC6DE83EE0CF2791C9650AF626
              BF52AF76CCC76F46F9E4FF523936F0713628D9F7F63DF8686A9DB6DF968C4964
              1885BF85C472C04ED28C0F30FF2378B35A12B009271A9B1CEE00D11C43195BE7
              4B555E438F9CE887C5E679FC95F5BA713959EA730655E65B3B8F04EDEB6F3559
              4DB88CD52CE42A0A74587F274B8CC389F557BD3915E9E3F2D1B9E8652A2F798F
              7FB79F2FFA4540ED0DF477D6189F37A8324508485213DD466F128DEBF5D4FC92
              822D66234FC02EDBD7C4D507BEE6E3F31A623F0EFCA286CC25C123F0CE053637
              8FFF69768EC89D7036832AAF207F6B73EA8D837ACA56EB48B65B8A72A984F235
              7C4F048DDADB109E07EB249075D8ADC5FE55E9949DCCBD1D04A55EF03B1279A4
              F4C8119295A3198F873B171BBDB9EB7D6534737D698FE2F71CE2ED6363D7E07B
              BEE5EC7B41875C65C902E75A38375B73AF633F59EDADB9F61952C02EBE419782
              5F83EA37A97CF91A48592F59FFC9BDEECC3A793C42BEC34DF5E05D08EC1CF7A2
              3FDCE8B5471E0D6727B07997A9AEED41F2B329C8B748DE3DE6FDB939FAA28F1F
              8DC49E630A447CBB7866FC041CF7757D289D70B702C3D117A47F67FC989E35E9
              034D95939317F035A05724934B533DC966B8D61FC771BF9AC5FE1B780B5417D4
              B70DD29788CBF1ADBFB2639FEA88D503EC7891CD300BC3CF573DEE6BE45F3945
              CA439E08C7F77996EAEAA16D778C0565487CBA146436F782195C936720CF647C
              08E343181B3094BD7CEC657E07FA3719BFC6F825C66BB17F5EBAE445AEDF05E6
              6B368AF700CA8540DB535CF33F81CD1E157C90DB7BF0BB99F931A0DC02F95290
              95656541F4BE3613CE43C85381692BB8DF9C6E84A1BE4E05287237DFFC2B4B08
              A5BB0EB5A4E292F41D36B17AA272B20E1F59E63FC4BC9EF0027D555F3EE17B4B
              C6431FADAF00C57F2F05D77766D5A2E7642D7355B9BC09B67C6FEB3319F258A9
              00C5FF21B00B5E6BBC8593770D9BD85D311E1AB4BE021478361B1277692A6F4C
              417E83FE62789DAD8F3EE431B60214FC0150DE80EA25EA51EE251F67238258A3
              A1C9FEAB00459FCCE5680D9BF22EB88747F7F7F75FB421CF4315F8FF5E81FF05
              060F7BD861DE48600000000049454E44AE426082}
          end>
      end
      item
        Name = 'ProjNN_16'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000006624B474400FF00FF00FFA0BDA79300000267494441543811A55241
              681351109DD9DD4A8A0AD286485142BA09C62626562FA2A867112ADA8AE0CD83
              5EAC877A12EC410F221EF4204A3D89081E84B4A5574B41A5A8A820A84DDB94CD
              B6D02AD695869A1E9234BBE3FB9FA428786B98F7E7FD993FEFCF9F2CD1267FFC
              BFFACECEF47EC308FA98D96EE48BBE6F8CCCCF4F7D69EC37DC3F02B158F70ED3
              AC3E26E25E9CF80E4C83EF24920CB800C322954BAEEBAE826B33F48A25994C6E
              B7ACDA2B22E3100ACEA0F00911958035A02C629C853FCA1C7A994EA7B7816BDB
              10A8D7AD872214018E148B3363101984C86EF845145F70DDA9D12090C3A8EAA8
              56E53EBC36FD84582CB3D734FD3C330DF9BEDCC5DB1F80F700E71C673AA74F36
              16DBDED7CB1CE444822ED79D9DD31D9866BD0FF935DCDE6F183488C21EDCFEBC
              5E0F3E22AEADD9363A4177B44C64AA3991A5B3C409F83728FC20C237C0A958CC
              9F57BE894A455E271289138EE378887D360CD9034FBA034514D0EE4D88DC563C
              1E4F89826DA7726A0F1C0C822DE3F1783682EE6E05811E7053401C1C38003044
              F0041E0217885DC74DF7C0B561DF4DB4FE0933FA118D46AEA9A0EEC0F7AD116C
              228944EA143C394EBE1F5E704B58C4FC06FE97F12E0C707269E9675205B5C0C2
              C2D759B4F50C437C64DBE9A84AE0B6A7C0554CFC8EDA3750865F87F000BE4C13
              BCF90422CBAA5F81C0328ADEC6E35DA7F1948B38308C580BBCB249D31435F916
              C3E04CF3B3D61DA86CA15028B7B6F231A26002DD8C62808B881F07520085427C
              726E6E660282EF99E572369BDDAAE2A65A9AF03CAF562AFD1A6B6B0B6326EC21
              FE9B995FACAC78EF540E7B6A6F0F57F15777D46A325E2A79AB2AB629FC01FF99
              EC9EFA9425CB0000000049454E44AE426082}
          end>
      end
      item
        Name = 'ProjNN_32'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000005B7494441545809E5576B
              6C145514BEF7EE0EBB2D8606A9ACD845DADDA12DBBD5448CE00FA30DC81F0D44
              A0E20F4112A3464C8C62501213E5A12662A220263E127FA8F8205D2889898905
              1317FDE1B309DA6E5FECA38F6D89149704286CD9DDB97E6777667A77FB70E12F
              9BF3CD79DC33F79E73EE993BB38CDDE83F7E3D05080683378D8F0BAFA66517D2
              FD998CF3ECDCB9463212895C22FD5A5076007E7F50E75C6E96523ECC18BF1B8B
              94DE6BC0D62125FB4E08F16534DA1583FEBF543AC9941B1A1B1B176432E2750C
              6C0334A01CBACA39FF309D666F249391D46C37CC1AC0D2A5819586C1DA30C16D
              80451790E57154E32FCED92019A5E43BC1834009F111F8AE8FC7237F940CD8AA
              B0A51241D7038F62F13063CC5A7C100B6EE1FCAA2E043FC439EFC356A40B6017
              E107E23904F604842100246BA0FFA4EBC11628D3129FCEAAEBCBEE455661C698
              0B20FA3897BBBC7D606020EDF7072230048029846C4FC5E3DD7779BDDE0A97AB
              EA2063F229D3296D18FC814422F2BBA9DB4CD89229D4D7D75763712A7B7E7134
              DDF658AC7B1B2D6EBA044C5ECACE0B61BC48C664327925168B3C0D790740E416
              82B579BDC19B49513125806C56DB03874500C3E2FBE3F19E03244F835F39679B
              08528AB5998CC31F8DF69E54FD10F8BBD03F0040B2C6E592BB59C98FAB7A4343
              435D36EBE8856D0E308AFDF645A3D189E6E666673239B61A259D8732B7628C28
              84053691301B6A6B6BDD0E4725CDB9047E1386211B12899E41C8792AAA00B2A0
              06A2C569F056C3706D206178786C9794F27B6571329705DA3A34E26BA6B30B67
              04AD61AA8C1505C0396BB14730861B3F4307AF45E60D8ADD14256565CAB3B3AA
              AACAC3F0380F30CCB991B8053B006A3E189B0090ECC285680EB23E06DC4E0A01
              955883476FD5E2C59EBDA49742D79B9A59C9AFA3A32303D309007DC5EE549B51
              909120A5E6254EC033FE0DAAB1876464EF80BCA2203386A6FC011DFE63381CCE
              5A36954B69B4FBFDCB1E516D0559761638E39AC6BDA63CB905688E7CE7D3000E
              A033D168F76E2C6C06C138D9CB047A88B762EB5A547F3CDAA3962E84B40E37E6
              B48C2A470524E914044E442ADB2ED20189834882171102DD04DF9062D4B0555F
              F97C4D463CDED546763C5DC79CCEDC33F05D89AADA09D95B8093CA8E9031A386
              6E2260E2EBAE041AAED5E70B3C49F30C0D759E4FA72B5621B0E3EA5A8206099A
              9619216E2268F23CA320D078EFE4155CD09406F493E04708C86818E6694852FF
              7C8AAA3D4F83A3A31D97D3E9CAF51313EED3A413EC529002C70EF0E5C005B79B
              DF128944AE42B609DF04FBB0D82B644029BF46608F93AC02734CD9228C2371F9
              121AF800E422B22B405664F32D7160DE952B4567024C8CA1FB77E6055CE0AB81
              954B682BBE1F095807927D5F51009A96FB022356D66FEABAEE825E4A974CC3FD
              C8F604F01674075006C9BD78D3BEAD3A0A55E9EBEB4B403F083034501DCE864F
              485681D2B79BBA07FC41E0551C3EABC167243C82E3A8D811388420FBEAEA822B
              20E7C999BF2A178723BB2F9773D2DE2E42A36DF5F996E11D3FF94694D2F91C63
              D91CC6D6A21F2A0AB71A55053E7945A0599C2D547A34A29C8B850F630B8F4E7A
              14A4A20A90A9BFBFFF1CB2DF007902402568EF021FD5E2AD467A2CF6F759BC05
              1F83CF56D26700B649ACE15C84AC71F8EFB464954F098006A3D11E7AD76F819C
              06889E75E0958A4369333EC9E79061165CC449FA10BE8AC39C1BEF2B7EF7F87C
              C1FB143D2F4E1B008DE0110B09C19A1963A300D112ECE3A1745A8EF97C819094
              7223190928AF87380159AF4B24BA7F269912C13DBF914C4015761057E1509552
              39951A1BF178167C8E93CB8DB1E500F9BB386701F44013F43C61E2BE54EA5C3B
              29A9D4D901A6FCE6CF5F380E7F2BD886EA6A4F2B7CCE592EC21266E2BDBDBDFF
              62CF5FC082014CB4078DF7277C25A010FF45518AC48A0A761486330011CFE5E4
              3A122C704BB8168E3EB0FF9AE5720CDF0C8ECE44A2EB9F99E6C0EBF9657CDFDC
              21047BEFF4E9C8A999FC6E4CFB7FF021213BEE9CA1050000000049454E44AE42
              6082}
          end>
      end
      item
        Name = 'Select_16px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000006624B474400FF00FF00FFA0BDA79300000185494441543811C592BB
              4A0341148667968D48487A4150C14A219508BE846548DC4008DA68A58DDA8A8D
              78696C438C88CBBA90D237B013C5C24B27828DA44A972231C9FA9D213B2451EB
              2CE73F73AEFF9C991DA5C6FDE9D101B2D9EC04DF7A14451B5AEBF97EFE1DBF92
              4AA52ECBE5F2773F6696218262B138DDEBF56EC187E338E7ACAFA64AA90C64DB
              D873DD6E77350CC32F6C2396A0542A4D763A9D7B9AAE83203833D911E579DE3E
              C4B956ABB552ABD5DA92764409DAEDF616EBE77FCDE414B9638E524F24129BE2
              0B2C018E074E412C9A1DF385422147C04ECA514E80D41256CA12105C004F268A
              A2710DFF0633844848309562FC478C4560C412186F4031AADD95735B3B9D4E5B
              5BCA07095EB8E125090A386F00C91A76DEF7FD90D5087725356FC641B920169F
              917771EE804804896D9400D090EEB15E01238ED1A846A351816086F31EE26AF0
              4BB897036AA698A21A27870AE387C42E750A8F5CD77D68369B9ADFB68CBF43D3
              2CC7FCFB21913432F894096480A2F9195C2493C9EAE85396FC78F103B7179517
              122933CF0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Select_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000363494441545809ED96DF
              4B145114C767667FB4B0480405FD84B27CE84531E82FE8218CC055515CB55F2F
              BE86A661124906116541D2930FB281BA86A51646FF408F1584520F8649650506
              1126CBE6EE4E9FB38CDBCEDED971B77DD4E17CF79C7BEEB9DF73E6EC9D3BA369
              5BD766EF805E4C03DADADAF698A659C79A5A7000EC0222CBFC7C62EEA9DFEF9F
              8A4422DF191724051540E223B0DD244103DA006E92D275FD0901BD2323231FD0
              AEB26101246F20F1435882E838E413D893D86FD13F81C80EC330AA31EAF037A2
              FDE037B16728621A3BAFE879679820792784039870E9138944E2F2F8F8F8A2E6
              72B5B4B494137C87907A20DDE8A488FBD88E92B7009287482EAD3421BCE446E2
              C44C211DAC93422447EDE8E8E88C539C4C2AFED6D6D6FD38DF81324824F93DEC
              A2859BE8E6266EB3F0173C47B9896FD836C9B7A16E105506A658F45FC959ABB1
              56FE3EB9F3EDA954AA5F7CB930721DCDCDCD07354D3B0BFE507D17BA1481C2EC
              84608D0E5C805B1E5D86FF4429C0EBF5D6326DB060726C6C6C01BB2481631E2E
              79123C16B78DCF6B1B31A0E41A94869645622A686F6FF7ADAEAEF633110622D1
              6030786D6868684D06B9B0B81AD1A7987B0032A214C0CC61A051F56BD14EB092
              F764CDF5E03319F70245848BE4E22F979F6C18D903CBDE2D3A1E8FBB1DA7E724
              2607E7B53C17C7F3576B6AAFA533CAA980F4A3190804CC4C946AA4635477F11E
              A702D2D5D2B67D2E74114DBD225A9E2B168BAD732DE586381590DEF9C964B23A
              37787D2C1B0EFB16452E0BC4C6D7877614DE13C7AC898F96CE2865134238C386
              39890E11F5082862EDF62B4C08501B8A3CDA12F45C7EB2A17480E4D30424D0F5
              9CE7E5D825091C151084004D4D3E43DBC4B08D18F0D2F8C2DD0F63FAC15D50CA
              86834A97A35CB88679937E86CF264A0132CB6BF73A7A85D5215E2885B6992576
              61ED553CA781BC8CFAD08A78140F8EB9B9B995AAAAAAF7984DE0446565657C76
              76F62576A1A2D37A49DECF021334D1D937684574C593E5E00E321F24B81FF327
              76D3C645CDE52271399D1B20A40EA4D84B1DBC0F06B11DC5B500594111B64F32
              1EA929FC2F207EE5F3F9163882754EBA43F88E831AFC210AD8865DFA27192469
              0987C33B3D1E4F17E4177104809BC42860906E0D44A3D11F6E8132A7CB4FA1A0
              1BD99FE51514943EDB49B804C73CE3A23FCB59B7259BBC037F01E6C93FEF98FE
              8F3F0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Add Property_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000001C8494441545809ED94DF
              2E03411487AB512E70E131D08A08F106DEC1ADF76913345A6F82D7101E404824
              EEB8A816E1F7D59E66767776CDEA2656B439DF9E33BF73CECC74F64FAD36FBCD
              4EE0974F60CEB3FE87472B538AAD592F73E69FCC359FD314DB694E5D68CA7BB2
              953E01EF8E43FF6E685DA54FE07F3C0395BE05EE73640FA4DD161BBB35BED8EA
              7DB9B1F6674E20F94F92E3F1BF892E4DF943B12F1E05F6C025148E1742EBAD6E
              414157BC09FAB33851BE2132CD1ADD82A466639F1FAAB12776C46AC4AE7C5F8C
              043D17F26C582E6D14809B610CA611FBB853C196C8B26D25EE05BDA7F25E2309
              DEA447E49EBF4B1F8896708D79C0D5D8E08B046ED5BA7CCA688054224338924E
              7D473E69E890D4ADA79D4C30A6018843B85111F5DC678531438798A8C19E40BF
              924F19094825328467E9D42FCB63C47950B3A20B354F7505D35ADE37E1DBB9F3
              36C00E43588A56598B3C1B3222A966633CDA0617719BB701E50BD941816AABBD
              2CD09359DA52C65EC34DC5AED909BA9ABD86AF12EDD4144E67676A67B1221FA2
              B67A4A333EAB1C279B186AD69EE053BC280FBCA27DC52341CDB97C43946A6CA2
              AB19F9C2B1880F72C7AA297D71CD39B1A6A28EB816830862347BFA257FD927C3
              1E86AECCC69D680000000049454E44AE426082}
          end>
      end
      item
        Name = 'Add-Property_32px'
        SourceImages = <
          item
            Image.Data = {
              424D361000000000000036000000280000002000000020000000010020000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000002C0000008E000000D5000000F7000000F7000000D50000
              008E0000002B0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000600000094000000FC000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FC0000009200000005000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000060000
              00BA000000FF000000F900000097000000340000000700000007000000350000
              0098000000FA000000FF000000B8000000050000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000990000
              00FF000000E40000003000000000000000000000000000000000000000000000
              000000000032000000E5000000FF0000008D0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000002D000000FD0000
              00F70000002E000000000000000000000000000000FF000000FF000000000000
              00000000000000000030000000F8000000FB0000002900000000000000000000
              000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              008E00000000000000000000000000000000000000FF000000FF000000000000
              0000000000000000000000000091000000FF0000008E00000000000000000000
              000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              003500000000000000000000000000000000000000FF000000FF000000000000
              0000000000000000000000000038000000FF000000D400000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000F4000000FF0000
              000C00000000000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000000000000D000000FF000000F200000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000F3000000FF0000
              000C00000000000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000000000000D000000FF000000F200000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000D6000000FF0000
              003500000000000000000000000000000000000000FF000000FF000000000000
              0000000000000000000000000037000000FF000000D300000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000091000000FF0000
              008E00000000000000000000000000000000000000FF000000FF000000000000
              0000000000000000000000000091000000FF0000008D00000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000002C000000FD0000
              00F70000002D000000000000000000000000000000FF000000FF000000000000
              00000000000000000030000000F8000000FC0000002A00000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000FF0000
              00FF0000000000000000000000FF000000FF000000FF000000FF000000FF0000
              00FF000000E40000003000000000000000000000000000000000000000000000
              000000000032000000E5000000FF000000960000000000000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000FF0000
              00FF0000000000000000000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000F900000097000000340000001100000011000000350000
              0098000000FA000000FF000000B9000000060000000000000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000600000094000000FC000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF0000009300000005000000000000000000000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000002C0000008E000000D4000000EB000000EB000000D30000
              00FF000000FF0000000000000000000000000000000000000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000FF0000
              00FF0000000000000000000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
              00FF000000FF0000000000000000000000000000000000000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000FF0000
              00FF0000000000000000000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
              00FF000000FF0000000000000000000000000000000000000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00FF000000FF0000000000000000000000000000000000000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00FF000000FF0000000000000000000000000000000000000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00FF000000FF0000000000000000000000000000000000000000000000000000
              000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF0000000000000000000000000000000000000000000000000000
              000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF0000000000000000000000000000000000000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00FF000000FF0000000000000000000000000000000000000000000000000000
              000000000000000000FF000000FF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00FF000000FF0000000000000000000000000000000000000000000000000000
              000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF0000000000000000000000000000000000000000000000000000
              000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000}
          end>
      end
      item
        Name = 'Enter_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000000FE494441545809ED9641
              0EC2201045DBC6BD8987F2105E412F5113372EF45ADEC88D46FF5B34422C4380
              866E68E60798FF87994E4BD3AE6BD7CA1DE813F27F12B496D4CB3958CA1ADC26
              2389770709F1B31D5CBD03AD80D681D20EEC740A8E4215E318812919C53FB4C0
              77D118337420A64BE2F7523F0536BE6BB40C0DB034599C5BC4CDD881E4C090FC
              2884A9782B9C9851E39CC1018FE3397A8E05165BEDD10BD5ECA04C2F81BB3B6B
              0C193C08F1597E37F918D981E420220BD30483493168321DC3ABE6312316C474
              419E60E00AF8109D5C8731271618129B2218D8AA304B2CF014B4D173D45EB402
              5A0772FE8AFFDEE4921777F54750527C8B5DA4035FE7583D6906B753B5000000
              0049454E44AE426082}
          end>
      end
      item
        Name = 'File_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000000C2494441545809ED96C1
              0E82400C4417E20798C849FFFF673CC8CD283FA3F30E4D086137859AE0A1A493
              6677A7D3321C9652F2F963073E9A6D2B1EAAB9083F89ADCD8D3FAAFB2084C304
              BD42C627BF547415428110F08AC005771590DFCAA1211001D271055C70167B3E
              C44DEB5D8118F016C305F0E7434CDAD835046240F5AE805BC3B3A6D0D50EB48F
              98526971383718DFD6CBBCAA735AB202EBD506D26B0ED68B7068E400E9403A90
              0EA403E9403AE0F91F68DEE7D1BBFCF04F107D81AC0F3BF005A80244D7D63908
              650000000049454E44AE426082}
          end>
      end
      item
        Name = 'Back Arrow_16px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000006624B474400FF00FF00FFA0BDA79300000141494441543811A5934B
              4A034114455F8936EDC035481BA28D24BBC848C9CC556840DD4916A02E43501A
              EC283816A79299DF1D388BE776753595A41521E19D7A75EFAB4FAA2A315BF1E3
              DAE6CFCC52FC017441F1425330F89B3C176BB162A28311DE144E61BBE68C3C9D
              999D00EBA0164305B88209642DF50EFE035C825BAC1BE639DC41128AF4B7425F
              199D8036D0B793E5C1DC844FC8BC635A701FFD0A8DA71ABA031FA07B92550D1E
              62DC7855E93EFA1D8E821767FC020EE4ADAB813D7806EDAC9B2FE83F428F813D
              7288D2999566F604395CCFBD028622A5D980BF82754CF831EC32845BAFAA23EC
              A275FEE3E0C5999A8E70D87818E112778289D78737C882A78C5EBEC4BAA0672C
              1990480BFAFF7BC67AB06342F821E5F262A8E5700F17E0E25AD3570146F00513
              18D768A2BCA53B695D894929AB0EA00B8A5FFF4C2AAEC40F42A77C97041135D9
              0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Forward Button_16px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000006624B474400FF00FF00FFA0BDA793000001AB494441543811A5934B
              2B845118C77FEF3B8805F90A6E5144C9826CE496959DBD8C4B2197B52CE43B58
              30646F6F6584AC24B7923B9F011BD719FFE79C79999192BC9DE77E99FF799E33
              F0CF2FF8B1BE9F42F2E92445958B875CF1CA06AB3C393B8BC5B2745303E28C13
              634D4685E845542AEA25649E469E39605FF6E7C9461030C8B22256D84F823BE9
              5F67980ADE8521E492256542DA82A1314771A624CBB8A72BA7788062F961911B
              1EE8505925434C389F9847304D118FEE175BBE15970BFA8EF2ACE99924189214
              BBBC51263C4FA1733E686001C739C51658E156C29025359B3AE91E099C9247BB
              D979C644D5A21311BA5D1BD046EEB747883569D594AE153A22A046723D6A20FD
              9793D66263BAAAA5A5558E230131075C6838DD4E4DB0058E2474861855AC49E9
              CD1AE4A53C56DA20DFA6E9A1314AF448A09E01CA9D1D31B3D3CC28B947ABF3C5
              3644A8D54A93519A9771A675FF2DFA28F08E0C8FD668A6C506D9D61A27CD34F2
              6B34CD80450F29644470CFBD3BC38735B494BCE82125D422F390B21B58A63DE5
              31DD7756C6B9A01F4A5AEB46C96AF9E7749505E99FE77B031FF8C39FC917FC83
              7F00DFED672FE07021FB0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Forward-Button_16px'
        SourceImages = <
          item
            Image.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000006000080065004C00630071006300710065004C0060
              0008000000000000000000000000000000000000000000000000000000000000
              0000000000010063006C006400E9006400C10063009000630090006400C20064
              00E90065006A0000000000000000000000000000000000000000000000000000
              00010064009E006400C100660028000000000000000000000000000000000066
              0028006400C20064009C00000001000000000000000000000000000000000063
              0071006400C0005500060000000000000000000000000062000D000000000000
              000000550006006400C10065006F000000000000000000000000007100090064
              00E80062002200000000000000000000000000620022006400E50063002C0000
              00000000000000660023006400E70060000800000000000000000063004D0064
              00BA00000000000000000000000000000000000000000065006A006400E40065
              00260000000000000000006400BC0063004B0000000000000000006300740065
              008B000000000064004000640080006400800064008000640080006400B00064
              00EE0066002D000000000063008D006400730000000000000000006300740065
              008B000000000064004000640080006400800064008000640080006400B00065
              00E900630024000000000064008C0065007200000000000000000063004D0065
              00B9000000000000000000000000000000000000000000640054006400E60063
              002C0000000000000000006400BC0064004A0000000000000000007100090064
              00E80064002100000000000000000000000000620022006400E4006400290000
              00000000000000660023006400E7006000080000000000000000000000000063
              0071006400BF005500060000000000000000000000000062000D000000000000
              000000550006006400C10065006F000000000000000000000000000000000000
              00010064009E006400C100640021000000000000000000000000000000000066
              0023006300C30065009D00000001000000000000000000000000000000000000
              0000000000010063006C006400E5006400BB0063009000630090006400BC0064
              00E50064006B0000000100000000000000000000000000000000000000000000
              00000000000000000000006000080065004C00630071006300710065004C0060
              0008000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000}
          end>
      end
      item
        Name = 'Geography_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA7930000027D494441545809ED94CD
              6A535114464FF515AA36A58203410511F41544A45268A023F109DA8162B02AA2
              73DFC09F0A4E45C5AAE81368C51750044129458B3F83924685366D5C2B9C2349
              BDE426CDED2C65AFFB7D7B779F7D4ECF4D13C2E0677003BDDD4089F619780B55
              D888E8DFE0A761040A8F834C7C086ED8403B618FBDAEA1B5FF9862440DDC742D
              EA267A0BACC96DBC35FD3A5E5D45CBD05754589D063FC12F83C36751432FFA2B
              3CF4F63C8BDEDBB880DF56787A07D459ED1037758357E4BBC03017BDB5058CF9
              25F422B8D61913F89E628CEE2A38AC823A7C09353F89A63097949FC2982FA243
              900EBD82F7038C7417F7696B14CC1CF3BA8A032104AFADE803D499BB1FDAC2AB
              6D2B904C82F507A8D728F378E32C0FF304693352AE9E6B5642788C9ACB23FC6E
              9884B670A3B602C938184F7D440E477D1FB593A49EB4C6DE34EB8C491E1F69F0
              FA5BBF487EC6DA30DA1AF6496B6D2F89B56F688A43186B1FD0DCF00BC4E69DA0
              BA75F7AC57E03BDBDAB76379D601BEC6DDBC360F233F626D0F6A9E206D46CAD5
              7DCD4A08DF5173398237BEF86825EB009F62C3F1A88A9F01B5E42387D1F87B0F
              106D3811CDE7A8FF24EB002FE26FCB5195773EE018E4C5D1D890D698A67FBF97
              26798CD1B00E8D82A933EFBF2F226A9971876AD107B8CBCCAE6394CE2A78886B
              A8AF6A09353F8DA63097948F63CC17D121B801E62B68097A8A32DD1BB0095761
              161CF61AF540483017BDB5058CB9BDD7F1AE75C6047E5B516195431C3A8F5F06
              FD65D4D08BDE43EAED794E41EFE6E7F17DC514AB6BE0C0B5A81E6A2E7AEBF7F0
              D624F5AC52F31691FE63981137E10FB861277ED363AF6BB0C5861FA41946FAAE
              7FA1FEC552C3FBD99846476010831BE8FA06FE02290713F7FA8FD90D00000000
              49454E44AE426082}
          end>
      end
      item
        Name = 'Import_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA7930000010B494441545809ED9641
              0AC2301045AB08A24B5D0AED4210C583F710EA1174E35E1011BD457D7F51EC62
              3A841029D8CA3C12F3677EE23405B36CF8F4BD0323A70195A3C548E65EE318A7
              9435930033F3E40175758ADBC9CE3B301CE02F3AB0E7B65D610B4943B75778A6
              6BC40728AF64B4429AB034774D45A22D6987F006E59C18E79034642C2CD32D8B
              2F907E644CBE399E99CC85E64D72BEDC415A0C947E23E62D98513E859F47FDEB
              AC8D0A166F50C11916903C642EDA8C0B84FA1017E64B481A156E82A13536284F
              505EC96885346169EE9A8A849B8498C3015660853C84A5B96B2A126E5280280F
              61A6C6BC05A651ECE27080CE3B10F29FB0F502C53EF7665DE71D681E6698F7B3
              031F00D13EE2B10F14230000000049454E44AE426082}
          end>
      end
      item
        Name = 'Internet_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000678494441545809C59669
              6C555510C7FF87D7526859122C505059536841CA2621208D828288D140020889
              62C08518206044234BFC605043EA07F840A231B844B600914508141545AC2829
              5250FA284B0B9140A180406529A5BDFEE6BE77DFEB83B2C5882F336FFE67E69C
              3373E6CC39F748FFF3CFDD8D7F2FAC0E721A2E4F0F32AE2D9C063E8DEE241C56
              B2F25D679D477FC7E46ED7D32B64DA344DA6DFAB700FD89C1DC0F1317025B235
              CE33C0397012FC836A35DF75D777E07F475E899E62D52570259C070FF03C35B0
              596F90854AF58A35923EABE15A788377509DADEFADD89FECFA0E4CEEBCFD9AC3
              4A3660DBC62ABBE88ADE53924E39279B7CA64AB40C9BB45FFBE93BD83DAC4B0A
              A94CE51AC7B801D8EED335EDC436047C536A70BDC59C33E9629CCE22B5E3703A
              8D3E2FAB91B6E2A29C55CEA39D87BD39D22813BC09478391C9CAD01F04924120
              B91897A2DB4C36C683EBA5A41BB461CDC5F118F831262A67153F83FB30D13082
              E9039E75C3182905DD17F47F88FE1BE9BB96403ED1454D519A8E62FB8C208EB8
              6CED002750420658DD081CBC033FAF6A9D64B2027A9BD322D74DDFB0FB79B413
              C6D08E909D8C6B7A9D310B5054C3AFE07C35995808FE5CD21A6AA22532815CD0
              F2BE677D963E4F9B71368302CC528D1EF0ED9E8EE8322B49D5A37EDBFE3C9D71
              DDB59BA09FB0A6CF215D705DD9F77DEACF229A467545AAE468A6692FED2D6461
              3A3246493194A149E036A4711EE97A92426ACF24A8A06CF6BF04E79E3AD18A50
              88E369C8D5D1D54ADE3E9D655C39DCD3CCCCD349CDB49DC5CCA1BDDC3BA085AE
              8B4AC13EC53310D66F0CDAC28085C843585361A332A2EE44508534FAC2016D46
              6FC7D40B14BEF4348F5C2EC361B1DF8EFC15284BB914F71EEA633D199E1B518B
              5D05B137765E7BE37C259A49A802E722989DACAA09BAC88A00B724A781CAC495
              D3B93AFD1E51B17AE17C15F38DADA3C79DB56A340C715CD9DA4DA711E038D5EA
              202BB200E3DB15B7D687B2B82B3CE689A5D9EF14D2D3E8EC5EC9249B1D14FD35
              F065AD3A1259186CEDBA69B61C559019BB6A31DF11B5E22EB1794E25F4F6D44F
              0DC9036582AF8E812D58551B9C9CA0342CD5EB03A32F6B554461D6625FE5B7E3
              7F455178BD5ED47B63A568132BAE8CF6B1AD2C7599AA62F567D1D9870C112594
              EBB8C916459BFFA9E0D81E82A7044E2219703A45B4AD38FBE9ACB4223046E544
              6C9749DB8A683B10F59F8288F557442F38050EA880533388799A31DF8540697B
              65BB721C455BD755F66D3F07AE4BE90C2AAFABB80DBE84DD6A268571B5E00839
              85BDC36A4E239DD23F86F4291280E30322F5E2DB9F4A7476FDFA46FFCF532B26
              BA9B00227D3D2D219B5798A30616F817AEF7BE3EBE4A5DF9C06ADC4048F98824
              35D150E42A384E4E3DD495A328AED3B8F6E6C853A16F74FA89C5F4035BD15551
              C89BC1CFC0BB5C8EFE42FAE46780EAB43DD9CA800944BA1C4B291C507F80DD76
              B6AFC0DBD20E32E677E25B510CB6F12798773DFC028615708C9262C8298F00BE
              E5D2E9C9E32387810D63360317358A739C62D0E710093550AD1626621CE223EC
              6946D076592AA3EA07B2EF5BD13551236D44C6C8C51080E3B809C769A47CB0C2
              7A163C1EB51569BE1A6B29812DA69D0C1B15B96CBDCF9895D6F0D969AFCB927D
              CCCED09E8DFD63A44F5CE72DD806BB1B5AB2C8A164FDB019FC2D30E0B323724F
              39DCE4F379FDD8B5998ADE1E271F20ED32B10A1F0336CE451A198EB047A587F9
              6A4A6966A8CBAE3B5FC91A3DCEA24A79336C27F01E664F0880E84B503E074FA7
              205FE33131926DB10745BAAA3491A4BFCB04E7B0D7473FF2C55B83E10DFA58CD
              00E384C3996CC3A7D4C155B46DE02D5C7E1D13024029D2968FD397E03C9E558B
              906FA11F841CA1465481F422ED2AB82E95619FC0B68D45590E3E8D14C73A99FD
              CF340C8F828710DCDF48FB2A6EA35F32B87E62CF7289BA022E61121B2C6F8FFC
              D462EB8F7EB68D447E443BC3C7D8BD3FD598959D443F95716B915791EDD18D06
              5771DBDE6F7D034E28C2401948EF77B5A660E6D09E4CE4C5A4EF2BA2FE9A3C84
              29A25816FC1BAE5A7DB15BE18EA36F73FAD94A438C3D4F7B2D853D93DA0AD35E
              4796DF44FA74CB00FC1EFC117907891A904623BBC14615FC55C24DE174D86817
              CE5612C834F6DBF443C13DD12DA07EDA295963E8F421A7A99DEB1D79B0DC5100
              0C8A91FF7AAA513B146D59651AD2E8287F85ACEC0C52043C15C705CE1EAD0795
              42D55B8D2C21906AECB319378167D997E07B4304F436ECC1A5F054AF8C72BE37
              AE235EA285399C975228A289FFFF03479334019FAF86FC0000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'Internet_50px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000320000003208060000001E3F88
              B100000006624B474400FF00FF00FFA0BDA79300000A0B494441545809ED990D
              90955519C7FFE7B2B04B8AB428020613C6C7EEC22A0A115402A9532192418340
              91283A15E39043938D381A0139D34C638D4C5032CC38A463941434CA87E1182A
              3339C422C8C7EE0A144E4A22B28B2006B8EC3DFD9E73CFBD7BEFDEBBB0BB6C8A
              33DD79FEE739CFC739EFF39CF39E73DEF7BDD2FF7F17D608B88E08C7FF43DDF5
              81C6C86B2CFD5582C172EA016F22AF7A25F41A8ADD4AEA2575D6663748C7913B
              84DA9D88F78455A35B88E20E82BE09DE05B4854EE3BC9EB62B54A6B5CE911E8A
              F652BB12F1D59ACE05E7134405DC28C96C54216F866F8557AB416F9A21832EEA
              47A843B08D4437068C000960548D7EA12BD75326B4076D4AC4EFD300356A19C1
              DE182F7690FAAFD4594FBA41CD028F0E2D31BF8BC48A3403FBF7C115C0682309
              CD26A10326FC4FC02C4CF3353A063CA8F7B5BA87C48A0B5D0CDFB1607DDA86EF
              3AFF9AAE4BCBD9DC1F5009BE73F1394ABFD6F7BBD4A764FB74489DB5E0B8D043
              F12276A1557EBF2EB7CE7D953A639BC9851F30BFA0ABD1027C93C09B6CB03A30
              DD02F1335FDAFD18CCF49B54844ACC502F7CFE04EC1A8685E667B6F3867544C7
              8F02EBF803029E9DEED44618FD0E709899E9697AEC3F4236DF00D319B275D47F
              18740C06F57768B31DFE05D319A8CF010DC093E8AF4D77DEE0228B4287353A41
              7DBC7548D0C5E896011B61BBD86D415FA3CFA34B0550A3B325D24080A3639BDB
              69E34112DD6FFC1E859D8FFA04742780D9E69BEFB9D0E262A7B3692CBCDFD3C1
              1916F4D7DD10AD67FAFBA9B39E46BE06BDB0EF60EB1C4E3DA15AED840F011972
              1578205940B06CDAAD720D43E169B71D3E0C186D61679BE486EA106D26A2F833
              B09D6D0A7DADA6DE2299539E91240611C2F260F09A1B92B043AF481B32499831
              A95FB2FF5B30D3107392403E1B55AA4653435BE9912CC7519C4E1B99F54B087C
              2DD7BA179B0DF6637EAF3E43BD454A14B4383D8ABE1B1D3D45124BE9B89873E1
              197443419AEAD555AB6C1DA1B80FB48D9CEE0F6D4B64B35E9FD5F82AB6F8B5E1
              9A155A8C7E0DE88EAE6DEB85B5309569B57BB38ECEC222A6A38F8CB89D7B11D3
              D11053B526B72A101B211AEC0296C89C5635FA109CB8D57F1062AAD5768BB1D0
              25EDFECBE8693081B5B10EC54176F7011AC8A360ADAA9087836C4A622F753CF4
              71815A0C65208F5CCB8B3DED5B8B4F457CE83C8A32271EE46D6C0A23796628D1
              09FD13B937184F9BBFC07328778D38DD19AD4B08F2343BCA37908783E6B417FB
              F178300E6E6E6C835C66B7AF1BA063B4D9079AD308368549AE9F4E32C04B82D1
              6956E0CD8A445AA6C34BA84F048DEC1C4FC08DEC39C87873FC3D28CE6834DC81
              F692D3198D0A8DBD527D0621AB709A13A4063D0EB787D35BFCABBA887A0E2532
              524378162A46DEE2CA749093FB53D4C7807C727A25287D0C2208ED2CD27D386D
              6FA18771DCF27DDC557A835DB40A9FAE1C9B5F84E750532289F052249C37058F
              46DD046FB22364D1EBB29F6715193F1F389EA8ADBDD7016305D0893B647CD027
              B42970695CE419D614A85765D45605EE949775D0A78A238139F50AFCFC8ADEA1
              B957AACF20342B92E16EB141DE1A2D959167585322D2A0A0F5DA17B85411793E
              4BEA7054764422A93E3A65FA8C5D67319789656FD0FA186B105245762297A554
              7A2BF2BE91E7B33399D1BB3CDFD8664D2A9146BD739696FD822D116373EA19E4
              AC22B3E3701E9C46DF8587B6623794F303E1422376D66276B953C4759AB3A404
              9EA1EC1949257592E59E315F6095224E935448C9146B2AC3DB5914DF83F75057
              7583D7334307E157807C3AA55277ADDEC5A71E63292848EEDC27BBB5AB23BC6A
              866F04C22740213A485F7D39164BF135FB512BB2913D2347A2A14FE4FF8A3C9F
              95A45E75B9F8A17C639B3587E8670CAD5A4A021367889589CCDAB001344D0689
              4C4DE1E399D8B3CBA3AE36F2422CB53138BD5DC8D8269DD3A173FA7BED883E57
              475E1379863525E2541DB45ED7062EBD18793EF371463A22119F93C8C6FC8BA1
              49C4C797A4528938BD8A36879A12915E90FD9CAE37C6CC3C07CF5B54E86CD63E
              1DB80F4FA4A1DAEEC265F551AE09F4B342F6F3560434F2A4BD2ED49CBE12B8D7
              D6C0B38AA6444E6B33FA9360943D67D9F316F5E7413E798D8CCABF45DE7EE6F4
              72BA31AFBE8D3CB6DFC99A591C17B5996ADD401DE6E5EA4A8461E0988AF2EF96
              4C226E98DEA7F1D33876E22CB90D6E1F179607DEBCF01A1E551644D3D845651B
              98E75CD892ED4F329ED7EBB9E81602A30A1E1AEF22B999268075BC429C86E750
              2691A04D864765ABCE09874F99FE88500572C9A9DC6FD727D912EB30EC07EDA5
              7D1CBEF5851AD3F702829F87CD31C0CBA9DF4BDDE8B7569C15F61AC9D9F0A1BF
              EA724D7BB52E38B3D8BE071A81F9FCBBA5047266C4A695EC7F1A9D17322B3D63
              FD2363CC8C7D349F41000DA00F6B6529039E13377AC2B6B219C8FE795437309D
              F639689A7D68D6293D8B6E1C48539D4AD457FD65AFC43B5156821C2208670AFA
              F3C69B61170B7B587C1FFF8FD9D2FE566F0ED6C9CD44BB0A7D57F0242B7A96FB
              2C1FA9108CF232332509CC86BF4743FB3434C75D491A45E14F9D6DE8D3742929
              4C89B3B828AD6C35775A14DA9ED0D4D6B4610358475CE3F13D0E66E822ADF66F
              C89242B41321B0DC8246FB68F49DA87D84D198CC4E719C67E271E8D6801479CD
              0F5FD3CBB41AFF9A94B255E56E3EB5AE096DA5075BD50227E27A097603380226
              F2656503B7FF25D439F6AC2C001AFD414EB65E3AC15792CCA4B04597EB56E49F
              D3A4110CE21DF19B8C6C2389DC8A7C0A9C8B4EB1BD4F0F6D7A873F7A069EAD01
              1FB62FE6DA9BB93DED41B61EDFE7403760348E2F902BAD92B0A24594E927D896
              8162825FC5429B6D01B872DD873C1AFD76F82F18959E6EA8F6509F8FEE5CF4A0
              F9C64F490FE3BC15B44C5D18AAD46B77294E6914534F516BBF1BB043B4F8478F
              F5C453C0758CD8DDE617E45ACD62F4C2DF0B261B906DEB34DD1DE2876F2706E5
              01DA4DA69E88768F4976BB212F064B4C3650DF003CFE0FF99D2ACD41FC2BC2FC
              5A053A994667C78005D5717FBDF18D2AF6E949AA13F595C0AE611867C1717BDD
              18750799FDA6D9306344D81E63FD9C8C4E3AEECFD03D7C4A4AE8DB5CF46ED013
              18FD8EE25BC0033BD1D7731BDF4C5D24B20D3E9CDBF72E748F51CFA13625926E
              69B3C336318F057E4DD4D917C02A2EB219DD5678F87BDA5DADA38C7242FB7529
              8BB207BEC3B08F0463F1F91C7221AA6333984CFFCF60EC8EEF08369E57B815A7
              505F856E2FE74F056B35493D43ED4A24DD9ACEAFA7F3EF224F0605A71C7D4BF4
              3E86674968297DFC95BAD13192F82A9BC1166660318A7BC0E3AE42B7DBDA51EF
              F0A9AABFA4AFA15B0BCFD0792592EE257E4D1F434063D15582C1047819BC3B48
              82BA886AF84E6C5B54AC179C1DB42808FA6D5809B02FED2FC3ED56EA2F85C0ED
              097980E393297E3F43370FBC48225F52D6AF4312C9EAAF5D556ED53ED6905BE8
              2DE36910F84AEAD3C11A7031F832307A9344FA59258D0B22917430CD39898C40
              5705D264B7E30A490F93C8EBFA38FD98AD2748E800B89F6DD8368C8F53F86D8F
              F5BF27E0F4B9ABBD60EF0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Key_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000218494441545809ED944F
              4B545118878FD2CAB4106972A724B90C5CB8B340AA8D881F49D03E4530E23642
              10979242F409A272A26042A436FE5B18810B617A1EBD9719074F73EECC1521BC
              FC9EFBBEE7BEFFCE9C3B3321DC5EFFC109BCE433ACC07738CCD0AFE2BF806BD3
              233ABF83460736898F8792AFA7F4F3D33A7C1F7F09A6A192A1BF8C6FCC9C03FC
              1928458FE9720C367E831D84988608BC05738FB013D0B3DE87106CB886ED834E
              32679D246BB6B13DC92F958D3CD2FB914EF33CFF0175980335CCCD13B07616BF
              6B55A9B4C92236A63D02E6C86E685E4BB83E7B8DED5ADFA8B4C9136C4C3F0998
              236E86E5B9A6B8FBEC2BB66BFDA6D22683D898E609FC023792BF029661889BB5
              27D8AE65B14D62EFFF5F8DEF11B4D61EB817EABF3049777FE36759E678287E4D
              66259E4EE68690BA01876F53350CBEC34B4D7896A2852CE94366938DC3BF90ED
              F1D5B0A350546EFC88227BCC6293F590CC7CF80EBE6B4C21F591BD0E0EDFC226
              CB610EB550EB3AB9384B1CC16E803D3C81E4BF628739D4424FC0357D2EC998F8
              735B263205776100A6E1151C833907D8194892C376C8B4D0E115FCAB643C854D
              8AC720497EC16A6436E03354202673E41909ABF011FEC029D4A10ACFA1906A64
              37E0133C8076196BA73DA7A775DEFCAAE136CEE3ADD6E7A591378E35EC148FD5
              459FDF89469A01873657257BFD25F72BDC2EE504F2A6FEA3E57E6936B6816B3D
              F6D6DDDFF82B68DDCCAD7F2327F0172C498EDF2BBBCD6A0000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'Menu_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA7930000004B494441545809636018
              05A321301A02031C028C58ECFF8F458C9A4228763251D3E451B34643603404C8
              0901943C093560B41C8006C428351A0223240446CB811112D1A3DE1C0D81C11C
              0200D18A030AD96474930000000049454E44AE426082}
          end>
      end
      item
        Name = 'PDF 2_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000105494441545809ED93C1
              0AC2300C86EB987814AF7B1CDF4D1FC8D30E3ECC0E9EBC79111141F34183A56C
              5DC906BD74E427E9DFE46F483BE7EA5778029BC4F9DFC49E656BF4ACC6A2B466
              4D9B2136DA79469DA62427597C02B581E213D087527D6A02FC466070CE9D055B
              0106079EB2B80A3A01061703DE8C58ECE49562BE9FE0C9F35B368700384A39FE
              261E23067B59E05FE23162403C8B6636E39FF0F1615CF3F0FCCE7B753401746D
              F6888488AF0061DD0FE39083374385EEA230F6080FC29363BA02A99D35C4419C
              0817A2F709CAF9E5723725A8FC5B8EB8083A01A63C71C5A209AC35CAA44EFC4F
              2FEAD8525C1B283E8136E3DE78441969B694E213B0B55DAB569CC00FA1BB55F2
              A09FA7050000000049454E44AE426082}
          end>
      end
      item
        Name = 'PDF-2_32px'
        SourceImages = <
          item
            Image.Data = {
              424D361000000000000036000000280000002000000020000000010020000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B
              5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B
              5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B
              5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B
              5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF0000
              00000000000000000000000000005B5B5BFF5B5B5BFF5B5B5BFA5C5C5CB25858
              581A000000005B5B5BFF5B5B5BFF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF0000
              00000000000000000000000000005B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B
              5BB8000000005B5B5BFF5B5B5BFF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF5C5C
              5CEA5B5B5B8666666605000000005B5B5BFF5B5B5BFF5A5A5A115B5B5BFF5A5A
              5AF8000000005B5B5BFF5B5B5BFF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF5B5B
              5BFF5B5B5BFF5A5A5A85000000005B5B5BFF5B5B5BFF000000005B5B5BFF5B5B
              5BFF000000005B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF5A5A
              5A3E5B5B5BFF5B5B5BE6000000005B5B5BFF5B5B5BFF000000005B5B5BFF5B5B
              5BFF000000005B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF5D5D
              5D425B5B5BFF5B5B5BE4000000005B5B5BFF5B5B5BFF5555550F5B5B5BFF5A5A
              5AF8000000005B5B5BFF5B5B5BFF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF5B5B
              5BFF5B5B5BFF5A5A5A85000000005B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B
              5BB8000000005B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF5B5B
              5BE05B5B5B8666666605000000005B5B5BFF5B5B5BFF5B5B5BF65B5B5BBC5858
              581A000000005B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000005B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B
              5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B
              5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000005B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B
              5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B
              5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000}
          end>
      end
      item
        Name = 'Playlist_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA7930000011C494441545809ED9641
              0AC2301045A37804B78A4BB7AE5CBBF6369EC203E8111404EB0104CFE3421474
              A52B7D2309949029696BEB26E57F93CE64E64FA789D49874A50E34DB8139E9BB
              B034DE44D421E15F488E33B3251C99129704D6A193CAE77861DCC119ECC056E0
              0AD8A0F684EE7EC2BC15384111EBF3B3805BD81AF20504457B41AB3112A8B8A2
              CCD1EFB8D211892A217291D681E82788D45197FDBD037F2F407B056913A64DA8
              1E9B02C7105F062F9607C6CA904D18C3B55510F11B732D06573968897CFBD4A6
              9527F77DF97BBBACB9E141EABCA03FC71DC6AFFE888A4E8D141756C7FAAB024E
              E4D270D41C4576BF85DAFDCA2619338636E115FB00968626E8DBE53BCF7D5EC9
              49C8509296DF19F7B092387109A903ED75E003140384F6577CA6E80000000049
              454E44AE426082}
          end>
      end
      item
        Name = 'Plus Math_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000058494441545809ED94D1
              0A00200803ADFFFFE772CFE18B0A125C348260362E98190B029F13389E5FF223
              B777CED6E722000420008115544AA9DD8299BA7EDE1BFF02A5AA48A4A4F48C71
              020480000420906E308C10E8227001E95B0524ED0829FE0000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'Print_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000000F1494441545809ED5551
              0E82300CAD043D961FDE8D440F65BC0A1FC66388EF4DC8C65CEC24D3CD30D3D2
              96BDBDB50F8222F5B776053691020C91381FA6F237FE8E5FD7ED8707AA138D7C
              D18A6557A03650A4023BBC4847782F227C99E8488D318F7103C665C2F622D2C1
              B770D54E404C1B53C70EDCAADD80E0C17BC45476001139AF88AA114827F082CB
              199EC20690D011ACB5360D665CBF0757BE78935DD2531F414EFA8CB79955190A
              4A1C73EC4BE7319B8051FF3BFE46010C634C9DC8A09E1FB0317D1F8A5660E973
              774756398A5420F49CD549DCB19D3CC4E52C8B14A9C0AC43AF58AA844763CBEC
              0AD8566AB656051E1D3E3EB41BB5F1BC0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Replace_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA7930000021F494441545809ED953D
              6B54411486C74D1403825AC9921097D534DA09FE013B414850D1D2229D851F09
              827F44B113D4421435041B0B7F8560A358048285089A08BA6E92F579D859C9D5
              BB6466997297F799F7CC9D73CEDC3BBBB90961FC199F40DE093449BF0E6FE03D
              7C8181EE13B8368517D71C1D9FC136F4FE8169683378FD2B3E014575896E3FC0
              0D7EE18FE122B8E9515C1D6158846550E6D6E15A16B7C9DE019B3DC75B21ED63
              7E1D69D5316B1EF7C8BBF80DC8D1EECD7D80AB39C5E6CE306C808D3C05C22C59
              274B54E9DFF16948D643327BF0124691B562ED2B06E34778925A21048FBE83B7
              6114B9A1583BCBF01BBA701C2A6A5466FDC93CE6759FFE13F128DA479160618D
              C15E93F865A8A85199F527E7FB1656A297306FC03EE71CF6E203093D3809A574
              8246F65CC3F7D42619261FC24BE9208DECF913AFA85199F527FBFB16BAD14BD8
              D09E7537E0FBDC4D9B0E85988E7DD6A3FFB5BA1B781757CF462F61676293FFFE
              AAEA6EE06D4C5E885EC206BD5EA7346B8510B6A003B3A0FC0189712E7314F822
              922671929E90E5862F70652CC639F8325AA5C0DA7B78B266C8F41F8885378975
              21CCD21DB2ADFB861F832C5D217B07B6C1264298AC2532B7C0FA0B7896DCAC8E
              94266D92FCEAAC77F35BCCB365711D365A665884C3A0A6184EC135780A1DE8C1
              262C40511DA0DB06F8D50C5E2E6EB61B7FED0FC819AC130ED7E4F0A5DA9509AE
              DE85D3B00ECA2736FEC86425F2191F6B7C024927F00721B78F0910FEDA980000
              000049454E44AE426082}
          end>
      end
      item
        Name = 'Resize Vertical_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000171494441545809ED973D
              4EC34010462DA8A9292829380037224104AA50F2B347A4A5A1A5E0124B782FF2
              A2B59123627B6D0982E6CBFC6467DE682347A1AAFEFBDFF1C00B58D17F895ED0
              E4760BF1B3968B104E6777A0846FF0CAD88548CBDB2308A1B1F679FC40ADA8E5
              F02524E1EA9A382DE419D2F1ED8991C2040927ADCC9571BE8467AD8DA6672609
              CAE1941A0B981759A20B2ED0A5947152BE84BDA9DECB2FE812A0D6C46DB3AEDA
              F57B0AD67D3A9C41DACFCE687B43E933276C9810D528D68937F14A7C8A06D9C9
              8E6EE1AAEBC8AEDEAE9EBDEAC2D55E4DF9E1A33C99233E2C70B881DFDCC09047
              6948EFF699B8E0F503757DA5FA082A8EFCB040E51D9DA3DEB6A053809AE5AB18
              7EB5E425229768DF8435C5DBDF1688AC45BCBDB8E1E620073A385FC25C254220
              308F786F0F379E39D0C102D212C64A4AE0C538E2AF501173B000412EA157019A
              3EE23D832B67020409CC65CDF7CA91B3C9B3FE2C4F7BF87F80BF78D42A15A7F6
              826FA686FE2DDE17DD5579EE44C123AA0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Restore Window_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000000DC494441545809ED53D1
              0E8330087473CFFBFFFFDCF3E638138CA950CAA0D12535AD5528C771B4D3349E
              A1C0C90ADC94FC8B628F9A0FF9EE51C468FCC300383036F66B6E55D1CB2B2055
              F426632B7153C15620CAD9675867A0967526E787A634D49E979B2304D08A12CF
              FDDF4A00C9BAB4AB958054594A0BBC55D5924A244D9B97C08B10BD3114A20FED
              9EF22966FFAF6780E34BBC8D91B79A27456A578F5C79038C3119110AE0BF4618
              7E4C8ED9AFB063EE6DEB770D70DDD0FBE5BD86502295D3DF2880FB9F5A39835D
              5E01F1E432FB8CF57405328A1818438190025F6BB11930BF127F0C0000000049
              454E44AE426082}
          end>
      end
      item
        Name = 'Save_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000000EB494441545809ED945D
              0AC2301084AB780041FBA2F7BF8C0F2282A0A7D1F94AB76C6D4B371689426427
              99FD4BD6A9B5AACAA728F0A30A3C35D7529C75C64EF8C8965E6EFD17DDBE1792
              CD0EF08D6331F2EF71F34F4AC2EFDA0F4292D1087C133EF0313831000770B095
              63433CC48F42D83800F8067CE063639C1A40AED67215F06FDAC34603F00DF8C0
              C7C63835C072B5083E10EDDBAAEF769E15FBBCC5BAA21932D6EB634DFBBA5933
              2E9B84BB07D327F44E96665720FB00D14790FA0334C9671FDBDF2810FE466D61
              58B1EC0A94018A02D91598FAA308BF46ED6B17DD06F76557203A79A92B0A7C4D
              811708ED5102956C360A0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Sent_32px'
        SourceImages = <
          item
            Image.Data = {
              424D361000000000000036000000280000002000000020000000010020000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000080002C0081004500000001000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000800024008000FF008000DB008000740080001400000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000001008000EA008000FF008000FF008000F8008000A40080003C0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000008000B2008000FF008000DC008000FA008000FF008000FF0080
              00D30081006B0088000F00000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000081007B008000FF008000930083002100800088008000E80080
              00FF008000FF008000EC00800088008000260000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000800042008000FF008000CC0000000000000000008000080080
              0066008000CC008000FF008000FF008000FE008000BB00810055008000060000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000089000D008000FC008000FA008E000900000000000000000000
              0000000000000082002D00800099008000F1008000FF008000FF008000E90080
              00800080001C0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000008000D0008000FF0080003E00000000000000000000
              0000000000000000000000000000008B000B00800066008000CC008000FF0080
              00FF008000FC008000AA00800044008000020000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000800097008000FF0081007700000000000000000000
              00000000000000000000000000000000000000000000000000000082003B0080
              00AA008000F7008000FF008000FF008000E00081007700850019000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000081005F008000FF008000B000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000086001300810077008000D9008000FF008000FF008000FA008000AA0080
              0044008000020000000000000000000000000000000000000000000000000000
              0000000000000000000000800024008000FF008000FF008000FF008000FF0080
              00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
              00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
              00FF008000E30081007F0084001B000000000000000000000000000000000000
              0000000000000000000000800024008000FF008000FF008000FF008000FF0080
              00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
              00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
              00FF008000D60081006F00800010000000000000000000000000000000000000
              000000000000000000000081005B008000FF008000B000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000092000700810055008000BB008000FF008000FF008000FD008000BB0081
              005500AA00030000000000000000000000000000000000000000000000000000
              0000000000000000000000800093008000FF0080007800000000000000000000
              0000000000000000000000000000000000000000000000000000008300230080
              0088008000EA008000FF008000FF008000E80080008800800020000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000008000CC008000FF0082003F00000000000000000000
              00000000000000000000000000000080000200800044008000AA008000FC0080
              00FF008000FF008000CC0080005E009900050000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000008E0009008000FA008000FC0080000C00000000000000000000
              0000000000000085001900810077008000E0008000FF008000FF008000F10080
              00990082002D0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000080003E008000FF008000CE0000000000000000000000010080
              0044008000AA008000FA008000FF008000FF008000CC00800066008B000B0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000810077008000FF008000950080001000800066008000D50080
              00FF008000FF008000F7008000AA0082003B0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000008000B2008000FF008000DC008000FA008000FF008000FF0080
              00CE008000660080000C00000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000001008000EA008000FF008000FF008000F7008000A0008000380000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000800024008000FF008000DA008000720080001200000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000080002C0080004400000001000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000}
          end>
      end
      item
        Name = 'symlink_directory_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000155494441545809ED9541
              6EC2500C44D38A035442A2122B563D7FAFC0B6DD542A203847D7553BAFC29153
              FCF30D41FA9B200FDF1ECFC4C110D175F3ABF1061E0AF37F0AFC54FA62DEE3D4
              2B4EF52F2A17B8B8E38ADEDAB641F35B6DFDFE6CBE81F906E60D34DF40ED31EC
              1F971B93957CC54750BD6260022501BD08A63F28A17FD469F95E793A30839281
              5E04D33F2BD909A6218713950B338EA9D76A9E04D372AAEC63A50C0E90ABCC07
              265072F8E16F12A1054A0701070664A6C004222DC3F96EE933FC492272A07410
              706040660A4CE0BFD60F7F5793E13A3AB480DC030E782E9563025EBC54F121C0
              7FEACC7CAF6881E4D70526E05DAF2AE0F84567864B5EDC0CBD51300878D1970A
              B84D977FA10779C75989099CCBBF63AB77B8086A8561DAB0394646C61719F8D5
              7FEBB4BE9DA2C2A8F54313E4CD46CC0ED5EB34FF376C7E03B5BF6356E8367AFF
              B4F906EEFF91E62B5EB9815F6C686CACEF4791960000000049454E44AE426082}
          end>
      end
      item
        Name = 'Text Color_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000173494441545809ED94CD
              4A03311485D3625D5457525CEBB6C537D02750EC46C1828FE65EB7FD79027D03
              1F40712DAED4422BB67EA7D3C02C2633496814648673E6DCE6FE859B4E8CA99F
              7A02F113E891BA5CB38B46A1199595255D67B27AE7EDD542EA9736FE42936FB8
              80B21BE8AFE1844E1AFF3DFA00651FA3C16806676409834CCC2D2A22C6AEC94E
              CA6DAABFC119DC831D3887AFB00593E38C0E1AF918B5986068ED140D42CC110C
              D61DECE8F5D3DAD6A7B524DCA5EA277C876D68B183A1B50F5431881F4227D0A7
              AC1A0FD129B4D0A646FCD046CED164985059675DC6313149B04FD52F3883AE0D
              E86B103BC47821E4082EA8B8056FA06EBD22CAA74FF192988DC3E7C6CBDF901B
              DDC021D574E73FA10DE8827CCF3817F0C0783CBE4770452D15BF4397D005F914
              A358E5B8E282D71FC950F123B40A8A51AC72AA626BBFD159B9C6A031BA7C31EB
              85BD7CFF84310DBD7274B1540516EEBC2A29E72F9DA4CF064A0BE41A45997F7E
              0451BBAE93FED5047E0000FE4723EF1590E40000000049454E44AE426082}
          end>
      end
      item
        Name = 'TXT_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000116494441545809ED5551
              0E82300CED166EA526780E388AC6987814388724722EE6ABD80409635089FB70
              64A5E5B56BBBC70644E98ACC80F1D52F8AC2F97C1ABCAEEBC95A56936CCB3959
              2899AFF3D03CF187988CCE406A203A03B257FE574F7E1C86748C8F111F4B602D
              6276907DD775C65AFB30C6B455551DE0FBF880713CE2BC23F37A661C287672CE
              DD11724371A8D738BFEE2B6F4106389FAC6AB81A60DC404EFDD5C077EC4D22F8
              1CDBC00CEB39519F02B07095C4435BB0A55ADDC0D202A1387503D80317493EB4
              055BAA550D94659913514E440DF592BF313CAE1B765D781F2D2BE677CFC2A860
              6C27D984013ECB2CDF26E31C2CBE3CAA3DE04BA6C15303D11908FE0DE73690E6
              9D8FE7446760DC507AFE39034FE52D4A686E62231D0000000049454E44AE4260
              82}
          end>
      end
      item
        Name = 'Type_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000049494441545809EDD649
              0E00100C0040FCFFCFA40F10D20B61243D75CD9C94E211F85DA02E00FA22BF9B
              9EEE69BB136EAD0BA188F47DC7051C408000010204081048FF64341278466000
              C7A10324A3CD971C0000000049454E44AE426082}
          end>
      end
      item
        Name = 'WhatsApp_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000002BB494441545809ED944D
              4854511886CFD4048565096359114C629844B9890AA21F1A2871D30F58B40943
              6919A421D3A2160941D0DF565A491061455A1115852D84188A5A0411610A1532
              30154A996535D3F3C63D310EA3F7DCD14DE4E57DEEFBDD73DEEF9C7BCFA0C64C
              5FFFFB0984021E4084FC2ED80D51634C29688D14FE0EEEC04DE88729D552566B
              8351C8F89066BE03CA614A1463958FA08D7FE0D7A101AAA10C16C26A3808DAD8
              BEE410CF3B61523A40B736D5E677A9ABC04F2B0874817AD2F851284831BAF435
              5AA4957A06045113E19FA0FE3A3C904A487F007DC529BC501DA1516B0CE35113
              E03A4D568DDDB8FD727933CFC72104AEBA463003EDE0A479A4F4C63ABA75D456
              C728B490A8A176550541FD94FA39A2C6E1AA23A34D7AF06C2579D0B8B8451D44
              5709ABEF303E463AD631033CD482D4A59B47085F0056318A30B8AAD30BD678FE
              D7F2BDC0726FF699E732BDFD73151E715C478A39C9AE55919BCEF7024BBCD080
              E7D6CED9027F0D4194F4C28B3D9FD0DE30AB2FAEC473758301CDBDC59781AB22
              04D53788FB2A4142E12D78AE8A1978051990AFC2AD5652B44009E46A0D03EA79
              89FBEA2209855BF07CD2EFD8C784325FF138E8DF6F2FAEB1CFF8199805568D14
              9AEBC47DB58F84C24FF0F154C6C463502E1FBF98D3FF13EC8F6E7357AE01F755
              11894150C35633FE1566AA193E81B2D9743066554DA1171AC14BC149274969C1
              07B89F6613D8036D7005EA8D317A39CCCCE4D60D19380BCE8A9354533B3E1969
              53AD9362910838EB9131468DFBF1423487A64BA03586F1B5E0AC2292DF200D8B
              A01C0E81FE3A36E17EDA482001DA7C04DF0B81544B5ACDDFF13E509DCD53C64E
              C00EA8824AD80C4DD00336FB9E7A3D04D6053AEC22F224CF97E13C0C81C62642
              47DE4A6E2EF82A942791602C050F3D5EE0DA1033F3B96D876DB0018A611406A0
              17EEC17DF802052B5C70E774E3BF7802BF017879B9675D354763000000004945
              4E44AE426082}
          end>
      end
      item
        Name = 'Video Playlist_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000140494441545809ED943D
              6EC240104697C805528AD44848B9084DAA1C27E100481C06DADC8582825B8422
              2943BE8784C0C6FBED7AE528858DE6697FE67958C636218C9FA17760D2A101A7
              0E2E6A56ED07CC41936A53D7B6C79A19FD9EF116B4B5A6AFB667DD8E7FBF0555
              EC98DA6FEB8EB68BA3B5B3A51D98171F23E3424E0A4EFD56721D42988ADCA026
              247D24702279D84B7A1139810F4917099C48FE96ADE4997071F19D73CEE58817
              67A92B8E8235E3BBE6B1071B07A4F840026791071C7EF946931FC1DE4EE34234
              831CD4F64BDF825A91C6E251EB27511C9C125C01F2B0947414CCBF34AE44ECCD
              C001293E90C059E46FF990FC2C5C9C94040D3E90C059E4E120E955E4043E245D
              2470E2A7926FA212B9414D48FA48E0C4B94B4672D48448FABA8D04D79D7E66D4
              845A35D7C23BB976654F8BBFF81FE8E9686399A174E017D0185535C24A70D600
              00000049454E44AE426082}
          end>
      end
      item
        Name = 'Bluetooth_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA7930000015B494441545809ED95C1
              4A03311445831BA10B11ABD8D6BD3FD38D9F217E6A858AEDC2B65FD1A5E042CF
              593C490719AA6412849677C99BA49373DF9B0C93D2E9F78F3B70DBDAFB0E0377
              A8597C426E6A42036A8D911B543D8487B6D067A86A047C05D5FC95F11A0D128F
              ECDA6DB35075C9DA02996F18A7A8683CB19B9B5B696EC239C57272DE75AF5F98
              18A362D1AD309EB530252837F0C644F12EFC6442B8D2D016A8B95DD00C97E5A3
              6B42A012EA68E593F2D8C31D73134243BE0183557E6821254D2C990CF88EFCCF
              959F71F36F63C40D1728E29DE403558919943870D101C70DF3533468E4F06748
              82551CC2E2EF3F8CEFE8C23D07C295F9827F9AFB2614EF440E1724105E12A8CC
              7D03A2134B26AED05171CC217C60A77BB44673B4477D3162F11C158DBE8F51DE
              A11554BBC1307CD87E25D47190E7DF5786D09026AA551EA6026EE59398AC396A
              A0EA37A05B5C53B8669AB45DF049453BF00516766FFD4BF42A08000000004945
              4E44AE426082}
          end>
      end
      item
        Name = 'Alarm Clock_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000298494441545809ED95CD
              4B54511887CFB4892291462AC40A4C32776D83504BB1826A1DB4B38F3F205A88
              819BFE81A065ABB6454514411999D9A220DCF581492E0A24CB28A64546913D4F
              DE4BA333F7CEBD232D8219DE677EE79CF7F7BEF7CC997B674268BCFE831328B0
              C701C81BD6589BB76E99BF8BD96358846EC81A3D18AD99403BA1AEE8A3EA33D8
              E8037A1836C369B801CFC1F539D4B16BA7186F8223F011ACFD84F642AED81742
              F80E8B70135A61184AE05A1A7A86F0B5C22DD0BB80663EC10ECCF360E105742B
              3C05E77297F120EC849608C727188F821E79C2B80D2E82734FAB9D71CD18C361
              C155741BBC03E72FD03D502B0630CC80356F517B5C479DDF4753E320598DB3E8
              169804E7E32184665819E664E5BA2733C1A2B967A8BDDEA3CEDD20C3E4D84FEA
              008C800553E846A816E6A55AAEC8E234981F460F81BD91DAE1272861B3B8074D
              0AF39294F782E6BF602842E6F071B2D09B2AAD488FA4791E90D4338856C49A8A
              95A585A34B12AE44BA1A897BC43D33F57A8DCB5D77A269A147D23C5D24F5BC42
              33C7579C166D40D3424F35CA6B9A98E829A11591F4151422A785D1F0DF48D206
              66A3CBB5459A246EB41AE5FEB847DCB33C179236107F5FDDCBDCF54DE2C7F865
              B5F2A40DDC8ECCC7225D8DC43DE29E997AB5E0F2A6F11E883F014BB9A38F0A7B
              E4FE21A22E8CF066F1149AF4534C2A318A64A6C11EE7D0DCB19E8A49B0C17808
              C18648A6F0041FE1B4D63FA3758CEB8A0EAAE6C1466FD07EA815FEDBCD60B266
              0EDD0E75C7792A6DE423A4CA3DD606A11DD646EC404FC228E891B86688B5BA62
              37553FE017F4C159884FC30B24A1E70CDEBDF013166017E48A02EE31F02297C3
              DF5713C3E3700DA6E05B8463D7CCE961F94F5CE2DD1E77D0DCD14B859B6846EB
              0D6FDC8714F743231A2750F5047E037E2DB092733C1E2D0000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'Windows Explorer_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA7930000010C494441545809ED53CB
              0E02210C5C8D89274F3EE2FF7F90F162E28F184F3E866C8675D9160A1BB21E30
              AD85324C872E745DFBB50EFC59073ED013F30BD6F7F06A162BCEB52BAA1FE055
              8C4524F223923738317322687A5BF7C1F4CF82267029884562D175E1545880BC
              EA7602B478C7CE33BCD4C8EBF76FFC683C588DA7F5663977A08A8A26A075407B
              05BC70EED9703C27AAAF6AF14F90EA004FAD9E800025263BB878077204EC704A
              77A294BF80335B8E80B7913587B3CB0153C01342DC9D909C1833AF1988A21672
              0B06548369AFC07DE701D58F48BEC5545A47DA5B7830151F023D8330A0006169
              92CAE19D6CFE4D38E5A1C7843CB039C4BB39D2B29528E5E5931863E2247CCB2D
              DF812F2C216366D5E887560000000049454E44AE426082}
          end>
      end
      item
        Name = 'Text Input Form_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000000B5494441545809ED52BB
              0A80300C6CA58BBF26F8FF8BA0831FE1561369A28496829A7689F4C8A3E42E1E
              75CE3E73C01C30073A3BE0937E4CB175F0436B45A91744831C11EDDF4B76BCBB
              03A50566F8E715101316881340ED901009EC90508FE2E6FEFB88931965A356F3
              E0CB84F94385E0A8DC7FBEA6578F1B2199ACB1F784BC2FD5CF995CCE7AA54748
              4323240808BA073742E8AADCECA885703507EE11A54C3EC26B2B25AD2C6D7707
              B25B59D31C3007CC81960E9CF86E2324B4AAC4F40000000049454E44AE426082}
          end>
      end
      item
        Name = 'Pin_16px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000006624B474400FF00FF00FFA0BDA793000000E3494441543811D5CFBF
              4A42511CC0F11F99FDA3C136872021A2A147700B9C949620687069087A0697F6
              7A82DA5A6A11C1ADB1D921F0212AAAC921A9A9CF0902F122571B02E5FBB9E7DE
              73CFB9F71AF14FBF35EF39E1CF5DDB39A4C5CC35ED78A44C8F0BA66ED7CA2776
              48951C7A5C32B1863B0FBC32E094D1B65C7C7046A643335F1CB0C126A3EDB9E8
              73C52A990A666EB86785DF169C9C47C40BE9E186C915DD6AD3219D1BA21211E9
              B3B78D5355B3EA99F4A0A2719D0199D2A78D4F364CDC72CC2277ECD327B7BA15
              EF54492D3974F924F7BF8F6FB6E7A765C723727BB3A2C69CF50D11AA21F9F9F1
              AD660000000049454E44AE426082}
          end>
      end
      item
        Name = 'Download_16px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000006624B474400FF00FF00FFA0BDA79300000089494441543811DD90BB
              0D834010440723530199ABA0221A21B8568801BB1417E2D429C26F1002615970
              64C8AB79DAD1EEDE573A7B0449411B71D9E845B5FE74831B8FCFE05BAEB9B7AA
              FFFA838A8906BC8034CABEC5B9475A942C767629AE861C9E9040012F28A1875D
              F9C40753EF893BD93552BCAE8C76E0ABDB638FCBA79AE89541D2B043D0A9E203
              F41E156302ACC92A0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Download_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000000F3494441545809EDD54D
              0E01411005E0E604564858389E849BDA6261E328BC6FD16223266610D2524F55
              D7CFABEEEA314A699F36817E13B8A41CA25E93F16B65C355B50DB409B409B409
              FCCC04D679F74D83AE324BA29AA8FEB20D85F7FD3E1A71D44DF8E1E68821E710
              CDBF89EE2D9330EC0284A7E84550850FEA5A4C0E9F1AB535D64B23428858038D
              105A037B992F316BB96AE21A4E1022D640230DD9B02AA59C834B20476ECCE1C5
              FD7A16343A869E866A8B4DE37FAB389D536A7C0F3EB1B736AFE41A695837C0E6
              ABF18F68D7E1E7F691B13F3AD13C011B89FA51193DD9B73B7E92D229FCB0CFD7
              FF8C3A6DBF25FDF504AEFFA434878588EE850000000049454E44AE426082}
          end>
      end
      item
        Name = 'Close Window_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000190494441545809ED56C1
              4A03410C1DAD273D94A248A53FD57E83E0C58B9F20F875855A2988850A7E8956
              DF1B483BCC24D95DD6753D6CC9DBCC247999B7E9141AC2F01926D0F3044E94F3
              19DB2BF1B621F61CE54D4EF300F61400F7EBA6F63D738EF946AE508C5853E3C1
              5F16C913400E45D0B70105987CED2B308BBB483415700F11978065D748CC8156
              46511C3D6F6DDAE8011BC6D7F09A081EFE8ADC27B000C4AC7E922FBC4598A072
              0550C416FE06109B61B103985BC28F0131AB9FE40BEF113411DEE16CEEF563BE
              40152115F10EF607A0BD39C2D1AAFAC5A2F4518740111B907830C17B918E1DA9
              83B9FD983C5436589CA3F60210E39A31D9B7F214C5B7DA1B5D6688CB857BC6FA
              05607D7E31118E56D52F16A50F8F901E2EB77D02B2F5EB402A78FD982F6011B4
              C385EC89B0FA09B7F016E109951CF506FE0AC86D8AC01BC09A5B7831AB9FE40B
              6F1146A87C0C216887231C8D22EEE2EAF8B0FA1D2BB2556342C6CFB76E3F2673
              C29FEE7B17E0FD21E11F095EA84E27D2FB04F896DA1B5A71ADB66EACF369D615
              32D4FDAF09FC00BF126372C07B4DEB0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Minimize Window_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA7930000007A494441545809ED96DB
              0AC0200C43DDE5FF3F79B33EF85443A19D84414450A2ADF120D4D6D444804CE0
              00E7BF40AFCAEEBCB39AB11A7F07099CE3603F5A8644E9046440044440044480
              4E202A46B3B83C36C914A6CBE246AC0DEBFE1B02DB8C6E4BBC06EE55BA81E811
              C29F8CBF4B4EA113C8D95694087C48A0035656053588812F6E0000000049454E
              44AE426082}
          end>
      end
      item
        Name = 'Chevron Right_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000001B2494441545809ED96BD
              4E4241108507C5682C342644FC2BB0A6D3C29F18253E818FC45B584B245476C6
              4750132BE21FD18617D0206A8DDF216CD85C5181DCBD58B039E7CE30BB77CEEC
              6C365CB3F118AC036996E7E148308DEA05FC848730514CA25681AD0E9BD85D98
              08247E8A92C41BD87328FF0DBB038342E225142428F12D7CC5CA58C582175134
              33098947F80ED122B6DD44DC3643C22A540135EC0A74F08B6810547730F1639E
              94D75045D4CD6C1D3AA4708EA1E6743B0A1668448BC85977F8457C102E58A0F1
              6F8AB862836A79DDCC72D61D295C771CEAC401BF83409D187911736CED12B6E0
              335C830ED14EECBB89B8ED02096FA08A78C066A1837F455F096EC29E98E8191D
              3C38C32B22E61BA688CCC258B14436ED5ABBBFC7F7772FC133629AFB75F7AC19
              0A127FE44D09242EBE8C703FE22FACFBF1DC991B0ABEF81D19B2D0C16FBBC437
              DC445C362ABEE8250E2EAE7FC01A823AF35B6CA2E21904AB50E24FD855E8E0DF
              F577827B307614EDEF0F92266B828893D7B4CB128E3AE03E3A142B776241C5D1
              684382BD3E4A13116F57C0434554B0EA8498A838BA6D4CF03C8141EE3979FB42
              9A557938466C1DF802674A81E0E2DB98BB0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Pencil Drawing_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000195494441545809ED96BB
              4A03411486E30D4444B011AC6D2DEC8395FA025E5AC15BE10D048322C45DF005
              7C065F40ED14B4542CBC3422E62D2C1441E3BA7E3F38B08404C7CC3011DCF07F
              7B6666CF9C7FCF64032914F24F7E027E4F609B723BD0126DE19AC2070C4350C5
              B8A5F00E531054316E29C87C9A1854116E2D37AFF210C13B2F61AACEF5C2CD32
              B6D1884D924D8E314F48B6355F2457F965A2932276ABF3DF1CFB3A7B3E410F30
              4F6C5ABBEC74315F607FD3FA33E633962DAC91678EDD5BE7C1CD97E942DFB938
              61DC0F3F492F594292BADF203AE981DD323754980F4023CD7143E6CA77369791
              BA78A668116E41858F88F5B4CAA2F2F500FACD3375D324DB65784E9406B9BC82
              4C0E887D60E4DD5C85F7B9E80162A25199C11BA470073D90355F62EE4D375492
              D13831AB21268FA07BA7449D88F06ADE4BE12AC8E498D805591599E89E6193B9
              574D50CD14573C643E06119CC10B685D94187BD71E1555BC117AD3EFC9590167
              75D6A9305AB3A6BF5AD7AC5D7C73497C022F6AABA9D2CD5CDD5D116528B30AE3
              0482A81D970EC8F57F4EE00BF4A8816F40E6A9320000000049454E44AE426082}
          end>
      end
      item
        Name = 'Unchecked Checkbox_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000059494441545809EDD641
              0A00200844518BEE7FE53A800C8318B8F92DCD545E1B2338080C0B2CD1FF8A78
              379CFAED6EC5EEFB630AA4894DBEBA96A2E3020C800002082080000208B88D48
              6E326AF5A9C6C7BFA03A30F9087C1778A9E6032F98083DB20000000049454E44
              AE426082}
          end>
      end
      item
        Name = 'Circle_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000001FA494441545809ED954D
              2B44511CC62F2B8A85A20CA62691B2E35BD094913D6B129952127B5F010B0B6A
              44DE42F14D94508A948D66846166AEDF536794699AFB76ACCCEDF9DDE7DC99FF
              FFB9E79C7B0DC7A91FFF7D071A026E408CFA711883387480F4CCE91E4EE0089E
              C0AAFA48DB8322B81EA846B5EAA134BA26887805DDF803DF8671E8853683C6AA
              DBE13A0FAACDE12988A434DD2550A0569570BC0F4DE68032F56837E619879266
              AF8002DD614216E853AF32928C03A987EA2C6815693CAC166954C60B1E03DFDA
              A2D285438822FD959D12A0AC4DDC97128EE368DBF2B89E271649FD747F4201E2
              E0293D6FCD38E359E9BF402FB032672B5B1A2B3FE07A04A4639D2C51CE1AF593
              774D9166DB87DBD20041CABCC23D95A342C52DB82DB512A4CC2CFE4BD51E81DE
              5C15A941FEA7549BC0A3B963B7711B56CE7AA80CAB36815B533464DC860D9B90
              3BE33F566D0267E6DB94711B366642CE8DD7B41EBEFD029B3F44CA2A90E9EB87
              883A679D930B47507E291906967A4FE952D606EE5B5D5466418DCB7858ADD2A8
              8C173C068194A2BA0825588220D2CA576850AF32928C43294D9742B48A7DC609
              C7FBE8A544FF45D5A39BCF711D491374BF82023FF00C4CC220344133683C85EF
              826A5C3C07DA452CBADA8958837750782DDEA851AD7A18DA955EA419222FE116
              B45A71C3F802A6A113EAAAEF80EF1DF80672617CB2EC0FBE930000000049454E
              44AE426082}
          end>
      end
      item
        Name = 'Erase_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000001F5494441545809ED963D
              2F045114864F7C5512BB1282881D5F514A141A7AA5CAAFD06835FE82BFB0099D
              82DF40212C0512DFECA012111285723CEF6E2E636577EF7E8C6A6FDE67CE9DD9
              73EE7B5C7716B3D668ED40E33B9062897538831C2C431BFC8B0671B980A884AC
              9925DEC410269720F373E20C2CC127E859D6126C628CC5433393518E9806A779
              261FA0CFB6881DD054C9FC8115657048D41920FC52624D8C6353CD9C94829ADE
              C408CBDE817EF213621F54D302094D39131916BA87089E600A7CB540A26B6285
              79CD0ACC2C0F113C82E229D16707482B6891ABEAAE89356994ECD08AA7FD98A8
              7B1D3C2D76C5FD10F828435204CFE0AD71321F408547C43448292EB534D14DFE
              1E689D0DA29726C872DB2D3399F2E85BBAD7732D5A692764BE4B95F24233EB87
              AA1A26E3095474409419E18FF4BC5213A5E681790E7D7BC97C9FFC1EA8A4724D
              D46D2EB3372E6A6080E8A3D22626298A6F7B60358ED08AA77E8EE82BBD927A35
              D5F80D458AA1990556C758A5460BBC10A7C157819939F33CF3C0EA1C9DD4ED40
              04BE4DC47FE779EA026B70B453BF0911BCC32C94532F1FE84B4AB9DA01BD453C
              6A5C3E4DC4CDCFB1F43DB8A4FAA95213899BBB16BB986C83B65867628EF928B8
              572DCF3CB08447BC89082F87FBD7CBDDFB44CAEB93DE8E354A6FE115DCDF781F
              D3780EA52DB576E06707BE00189AAC682A2366790000000049454E44AE426082}
          end>
      end
      item
        Name = 'Paint Palette_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000002F5494441545809ED96CD
              4B545118878F935999F4BDA9A416D1CA3082A0281414CA1A24FA0BDAF43F4492
              5050D022FAAE8D41D03EFA0B24FC2C6A55D126C1691C1522D320FAB6C69E27E7
              E63478C7B1B185E0E5F7DCDF7BDEF39EF79CB977D00961E95A644F601FE7BD02
              4FE1034CE518C39FC025D80F0BAE463A3E8668C3B9DCDA06EACBD64A3ADC852C
              B8E97BFC2A1C854D10691B412BDC8271B0368B3BB607E1FCB59E25FD60B36FF8
              05A881B9B48A8236F80CAEEDC6D7C1BCE4A95D68835156EE8548AD0429188424
              C4A98E89D730057D500D25EB26952E1CC6B743BE320CA672A443F1AB96E921B0
              BE032F4907A8FA095F6117146A84840DC5C330FCA356A2C2A7534FEE0B58DF84
              CFA94E2A2C6EC767939BF85A3C48B2A0C003B956D261E63A4368AE1F2FAADDCC
              5A3881D7402B147E2252B1F250AE170F1315AE26B0A7F93DC4B13ACBCC14DC00
              6513C7920E735F1E7894320F52F874A2EFD579E663D5C38C9B458B6DE45832CC
              95A3232CB64F0F1E2B4F6FD1D65C45B14F942B29D9365369EF317C565592F5DB
              3F892760A15541C32CB887316108F91B3921CB98C9CFFB57EC18B993D0001E14
              2B2A9F5C8A8A41885E2761C87273F3FCFEA466F486D0C7548B5B781AFF04E622
              528C9BA198324C46F5E9307D6DC4CC4DE0B17AC08C452FF05E30CEE29DD00103
              60EE3BDE08711A61C23AF1300C430B37C7FD78AC7630F31C2C94B7C487205282
              E03238378057C26CF2158C3231024950D7B8B9EE225E54CB996DCEB1062F5482
              C42BB0D941BC1455533401AEC9FFC746EADF748F65363B812B3F718AA0F04B47
              EAB7CE8510AC7F842F88BAE9624337260C196E8E251DFEBEEA19FADB208B97FA
              C4288D979BBAD1474AD682F25D9B130F634E6AB9A5C3F4A7BF8D97AD0D741807
              376AC32379A851061E2489AB3A6E43606D2F5E0565EB381D6CD81542A880D954
              4DF21444BF01FA883D3856BE0ED3C2033CC37DBC557802B6400B5C8777608DEF
              FC0EB1BF11B185D10ADABC043728465708A109FE8B76D2F53E8CC124FC806178
              08EDE0B71E5BD2227902BF00B247DDB96D2F97280000000049454E44AE426082}
          end>
      end>
    Left = 260
    Top = 80
  end
  object VirtualImageList1: TVirtualImageList
    DisabledGrayscale = False
    DisabledSuffix = '_Disabled'
    Images = <
      item
        CollectionIndex = 6
        CollectionName = 'Select_32px'
        Disabled = False
        Name = 'Select_32px'
      end
      item
        CollectionIndex = 10
        CollectionName = 'File_32px'
        Disabled = False
        Name = 'File_32px'
      end
      item
        CollectionIndex = 14
        CollectionName = 'Geography_32px'
        Disabled = False
        Name = 'Geography_32px'
      end
      item
        CollectionIndex = 20
        CollectionName = 'PDF 2_32px'
        Disabled = False
        Name = 'PDF 2_32px'
      end
      item
        CollectionIndex = 21
        CollectionName = 'PDF-2_32px'
        Disabled = False
        Name = 'PDF-2_32px'
      end
      item
        CollectionIndex = 22
        CollectionName = 'Playlist_32px'
        Disabled = False
        Name = 'Playlist_32px'
      end
      item
        CollectionIndex = 24
        CollectionName = 'Print_32px'
        Disabled = False
        Name = 'Print_32px'
      end
      item
        CollectionIndex = 28
        CollectionName = 'Save_32px'
        Disabled = False
        Name = 'Save_32px'
      end
      item
        CollectionIndex = 31
        CollectionName = 'Text Color_32px'
        Disabled = False
        Name = 'Text Color_32px'
      end
      item
        CollectionIndex = 33
        CollectionName = 'Type_32px'
        Disabled = False
        Name = 'Type_32px'
      end
      item
        CollectionIndex = 35
        CollectionName = 'Video Playlist_32px'
        Disabled = False
        Name = 'Video Playlist_32px'
      end
      item
        CollectionIndex = 36
        CollectionName = 'Bluetooth_32px'
        Disabled = False
        Name = 'Bluetooth_32px'
      end
      item
        CollectionIndex = 37
        CollectionName = 'Alarm Clock_32px'
        Disabled = False
        Name = 'Alarm Clock_32px'
      end
      item
        CollectionIndex = 38
        CollectionName = 'Windows Explorer_32px'
        Disabled = False
        Name = 'Windows Explorer_32px'
      end
      item
        CollectionIndex = 39
        CollectionName = 'Text Input Form_32px'
        Disabled = False
        Name = 'Text Input Form_32px'
      end
      item
        CollectionIndex = 40
        CollectionName = 'Pin_16px'
        Disabled = False
        Name = 'Pin_16px'
      end
      item
        CollectionIndex = 23
        CollectionName = 'Plus Math_32px'
        Disabled = False
        Name = 'Plus Math_32px'
      end
      item
        CollectionIndex = 9
        CollectionName = 'Enter_32px'
        Disabled = False
        Name = 'Back-Arrow_16px'
      end
      item
        CollectionIndex = 12
        CollectionName = 'Forward Button_16px'
        Disabled = False
        Name = 'Forward Button_16px'
      end
      item
        CollectionIndex = 11
        CollectionName = 'Back Arrow_16px'
        Disabled = False
        Name = 'Back Arrow_16px'
      end
      item
        CollectionIndex = 42
        CollectionName = 'Download_32px'
        Disabled = False
        Name = 'Download_32px'
      end
      item
        CollectionIndex = 17
        CollectionName = 'Internet_50px'
        Disabled = False
        Name = 'Internet_50px'
      end
      item
        CollectionIndex = 43
        CollectionName = 'Close Window_32px'
        Disabled = False
        Name = 'Close Window_32px'
      end
      item
        CollectionIndex = 44
        CollectionName = 'Minimize Window_32px'
        Disabled = False
        Name = 'Minimize Window_32px'
      end
      item
        CollectionIndex = 45
        CollectionName = 'Chevron Right_32px'
        Disabled = False
        Name = 'Chevron Right_32px'
      end
      item
        CollectionIndex = 46
        CollectionName = 'Pencil Drawing_32px'
        Disabled = False
        Name = 'Pencil Drawing_32px'
      end
      item
        CollectionIndex = 47
        CollectionName = 'Unchecked Checkbox_32px'
        Disabled = False
        Name = 'Prison_32px'
      end
      item
        CollectionIndex = 48
        CollectionName = 'Circle_32px'
        Disabled = False
        Name = 'Circle_32px'
      end
      item
        CollectionIndex = 49
        CollectionName = 'Erase_32px'
        Disabled = False
        Name = 'Erase_32px'
      end
      item
        CollectionIndex = 50
        CollectionName = 'Paint Palette_32px'
        Disabled = False
        Name = 'Paint Palette_32px'
      end>
    ImageCollection = ImageCollection1
    Left = 260
    Top = 110
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Application|*.exe'
    InitialDir = 'C:\Program Files'
    Left = 290
    Top = 80
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders, fdoPathMustExist]
    Left = 940
    Top = 440
  end
  object MainMenu1: TMainMenu
    OwnerDraw = True
    Left = 290
    Top = 110
    object TMenuItem
      Visible = False
    end
  end
end
