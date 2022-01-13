object FMusica: TFMusica
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Musica'
  ClientHeight = 472
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 705
    Height = 77
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Login'
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      705
      77)
    object Image1: TImage
      Left = 583
      Top = 12
      Width = 61
      Height = 57
      Align = alCustom
      Stretch = True
    end
    object Label1: TLabel
      Left = 437
      Top = 14
      Width = 137
      Height = 19
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Nome do usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 537
      Top = 39
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image4: TImage
      Left = 2
      Top = 2
      Width = 80
      Height = 73
      Align = alLeft
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
        AC4944415478DA63641860C038EA0012D4FEA7859D43D201E4461B56FDA30E18
        75C090778010104702F1D481700013101F036273206E03E26A5A3B001B7003E2
        8D40CC01C41380B890DE0E4077443F101751C301E414BBFF1820D1D204C4F503
        E980890C90A840378366511005C48B809819889B81B88E80A7A8EA0064CB7105
        3DD51C802F1B7603711989FA29760008084143610A99FA877E513CEA8051070C
        8803280543D7013401A30E000047BE3F21A102C1730000000049454E44AE4260
        82}
      OnClick = Button2Click
    end
    object Image5: TImage
      Left = 82
      Top = 2
      Width = 80
      Height = 73
      Align = alLeft
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000002
        054944415478DAED97DB2B44411CC767F3CAE692A5E49250AC42C91B8AF58678
        505E4528F913107F8217115EF1801779704F5EA494DBBA4459976257CAF2CEF7
        D7FC4E6DA773F6ECB9EC8A76EA53D399DFCCF73B33BF99D975895F2EAEA40107
        C66801DDA01E64F2B777B00F16C156BC0C148369E03388DB0003E0DE490334DB
        55900542600AAC8100B71782363008B2C11BE804074E1828058720032C813EF0
        A5139B06E6409790DB5207EEEC1AD8038D609907FE3688278D15D0017640B31D
        03B4DF9BBCA425E04323A6154CB2B161B0CEAB752B649236815DAB0666412F18
        03133A310F209FEB9413455C1F07A36046C8A4B464E01A94812A70AA13F304F2
        B8FE080AB85E038EC11528B76AE013A40A995C7A89475B40C793B6A05FC82D10
        DC27CC63B8AD1A08F340E9427BFFA31537F7B16CC0C3CB4709550D4E4C1AA805
        47C2E21690F836A80497A041C89360A650D28E080B4948E2747EBD2C4EC7E8C5
        A4B8E56398C33327713F777E35291E7911D1583E756334719A79850D717A2BE6
        41BB307915478A5F08797DAAC5952BF89945E871BAE1EF5E161DE2E537F518A9
        C569E6418D38A3374029F41CD37D10D06A541BC865713A26E73CF3A0CEC08A01
        7A987A84BCE9E8A54CE155A1445B1072DF758BDA809FC5CF583C14C3AC6DFDAA
        527756043C1AE20935A037A8517B5C0C383EEB3F6B202EFF21F40CC412FB3F0D
        24BC240DFC00494B7B219F6ACE090000000049454E44AE426082}
      OnClick = Button1Click
      ExplicitLeft = 81
    end
    object Panel3: TPanel
      Left = 650
      Top = 2
      Width = 53
      Height = 73
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object Image2: TImage
        Left = 0
        Top = 0
        Width = 53
        Height = 73
        Align = alClient
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
        ExplicitLeft = 30
        ExplicitWidth = 64
      end
    end
    object Button3: TButton
      Left = 168
      Top = 20
      Width = 77
      Height = 51
      Caption = 'Ultima tocada'
      TabOrder = 1
      Visible = False
      OnClick = Button3Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 77
    Width = 705
    Height = 343
    Align = alClient
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 1
    ExplicitHeight = 354
  end
  object Panel2: TPanel
    Left = 0
    Top = 420
    Width = 705
    Height = 52
    Align = alBottom
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 2
      Width = 31
      Height = 13
      Caption = 'Label3'
    end
    object Image3: TImage
      Left = 650
      Top = 1
      Width = 54
      Height = 50
      Align = alRight
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000001
        5B4944415478DA63641860C038EA8051076011FB4F4F3B07B503A81D3D58CD1D
        D40EA015183A0E18F028187500231E3162D3093E3386960348013A409C04C46E
        402C0E157B0115A7A903D880B80F88338098198FBA29405C04C4BF4971002951
        F00B88E701F15C20BE0B155301E26468C8B002F12E20F605A9A5B6039E02B10F
        105FC0216F04C49B81580A88A703711635A20014B717A13E3703E2CB04CC3200
        E21340CC02C47AD470C04420CE03E27E0648DC1263164C4F1F351C700D8835A1
        BE3F4DA459E6D050B8420D077C06621E20E605E22F0C84CB0846A8DA4F20BDD4
        7000C8526E5A388054404A145800F17120BE4A4D07909308FBA951E3E93240F2
        3D281B8212D725020E8065435069A947AD2A772610A731905610818AED626A39
        00540F6C01625706D4A2185628E931A016C53B192045F16F6A363A88A98CFE02
        F13490CF19F0544694025875EC0EC44A50B17B505F8342E52AB2620073456D1A
        723BB26D0000000049454E44AE426082}
      OnClick = Button5Click
      ExplicitLeft = 700
      ExplicitTop = 6
      ExplicitHeight = 39
    end
    object Image6: TImage
      Left = 596
      Top = 1
      Width = 54
      Height = 50
      Align = alRight
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
        F14944415478DA63641860C038EA80E1EE006F20DE0EC4FF4875C07F2A790C64
        CE0B205E08C43380F8C1403800067E01F106A8430EC0E4681D0530072C03E260
        206687F28D80F83C3D1D00B2470488E380D80488A3D0838A1E0EC00AE8950686
        9E03A805461D3074D3C0803B805A606439400E88FB81D80ECA3F0CC481E43A80
        D834300D88B3A1965F006241523D4AA9032C80F82410AF05E2203CEA681E059F
        809877201DF0198879F0388E9FD60E00B574FC71C8AD01E250521D406C1A980A
        C43940AC01C4C7183013E13B203600E2C7B47200A89D074A88A0E6152C1BBA42
        F5EF06E2427C96E37300DDC0A803461D00005144392142809FD5000000004945
        4E44AE426082}
      OnClick = Button4Click
      ExplicitLeft = 570
    end
    object MediaPlayer1: TMediaPlayer
      Left = 5
      Top = 16
      Width = 253
      Height = 30
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
  object RESTClient1: TRESTClient
    Authenticator = OAuth2Authenticator1
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.spotify.com'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 436
    Top = 140
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Resource = 'v1/me'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 482
    Top = 216
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 512
    Top = 220
  end
  object OAuth2Authenticator1: TOAuth2Authenticator
    TokenType = ttBEARER
    Left = 604
    Top = 140
  end
  object IdHTTPServer1: TIdHTTPServer
    Bindings = <>
    DefaultPort = 9090
    OnCommandGet = IdHTTPServer1CommandGet
    Left = 60
    Top = 132
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'user_id'
        Options = [poAutoCreated]
      end
      item
        Name = 'offset'
        Value = '0'
      end>
    Resource = 'v1/users/{user_id}/playlists'
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 478
    Top = 250
  end
  object RESTResponse2: TRESTResponse
    ContentType = 'application/json'
    Left = 516
    Top = 250
  end
  object RESTRequest3: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'user_id'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/users/{user_id}/playlists'
    Response = RESTResponse3
    SynchronizedEvents = False
    Left = 474
    Top = 293
  end
  object RESTResponse3: TRESTResponse
    ContentType = 'application/json'
    Left = 520
    Top = 293
  end
  object RESTClient2: TRESTClient
    Authenticator = OAuth2Authenticator1
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Params = <>
    Left = 470
    Top = 140
  end
  object RESTRequest4: TRESTRequest
    Client = RESTClient2
    Params = <>
    Response = RESTResponse4
    SynchronizedEvents = False
    Left = 480
    Top = 333
  end
  object RESTResponse4: TRESTResponse
    Left = 520
    Top = 333
  end
  object RESTRequest5: TRESTRequest
    Client = RESTClient2
    Params = <>
    Resource = 'v1/me/player/recently-played'
    Response = RESTResponse4
    SynchronizedEvents = False
    Left = 480
    Top = 373
  end
  object RESTResponse5: TRESTResponse
    Left = 520
    Top = 373
  end
end
