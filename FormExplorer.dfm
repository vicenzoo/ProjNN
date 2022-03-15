object FExplorer: TFExplorer
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'NONS Explorer'
  ClientHeight = 419
  ClientWidth = 763
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 763
    Height = 419
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Panel3: TPanel
      Left = 728
      Top = 0
      Width = 35
      Height = 419
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object Image2: TImage
        Left = 0
        Top = 380
        Width = 35
        Height = 39
        Align = alBottom
        Center = True
        ParentShowHint = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
          E44944415478DA63641860C038EA001CE2FFE965DFA07700B95184AE1FA779A3
          0E1875C0A80368ED007128FB15B51D80ABA082A9BF06C49A407C1388FF41D920
          316D7A3900E4F3BD48165E056267207E492D0780801410EF0762351CE6892159
          0872D02B6C8690EB0064CB4F03B1290EF5043D428E034096EF036275A8E56E40
          FC9E5E0E40B6FC0C10BB02F1073CEAA9EA00610648C2D207E22B0C9044F58A01
          3FA0AA033600B13F0324453B116139D51DF0198879805811881F106139D51D70
          1088EDA8600ED91A41596E09101B0331D34038801C30EA008A1D402D30F41C40
          3730EA0000D0015521C1DB499D0000000049454E44AE426082}
        ShowHint = False
        OnClick = Image2Click
        ExplicitLeft = -8
        ExplicitTop = 136
      end
      object Image3: TImage
        Left = 0
        Top = 0
        Width = 35
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
        OnClick = Image3Click
        ExplicitTop = 10
      end
    end
    object RzShellList1: TRzShellList
      Left = 6
      Top = 0
      Width = 722
      Height = 419
      Align = alClient
      IconOptions.AutoArrange = True
      MultiSelect = True
      TabOrder = 1
    end
    object SplitView1: TSplitView
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 0
      Height = 413
      Opened = False
      OpenedWidth = 150
      Placement = svpLeft
      TabOrder = 2
      object Label1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 370
        Width = -6
        Height = 13
        Align = alBottom
        Alignment = taCenter
        Caption = 'Estilos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 39
      end
      object ComboBox1: TComboBox
        AlignWithMargins = True
        Left = 3
        Top = 389
        Width = 0
        Height = 21
        Align = alBottom
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'Icone'
        OnCloseUp = ComboBox1CloseUp
        Items.Strings = (
          'Icone'
          'Lista'
          'Relat'#243'rio'
          'Itens Pequenos')
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 0
        Height = 361
        Align = alClient
        Caption = 'Utilit'#225'rios:'
        TabOrder = 1
        object BitBtn1: TBitBtn
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 134
          Height = 25
          Align = alTop
          Caption = 'Exportar Arquivo'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
      end
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders, fdoPathMustExist]
    Left = 66
    Top = 28
  end
end
