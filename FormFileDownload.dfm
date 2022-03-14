object FFiledownload: TFFiledownload
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NONS Downloader'
  ClientHeight = 205
  ClientWidth = 334
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
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 328
    Height = 199
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 37
    ExplicitWidth = 294
    ExplicitHeight = 185
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 328
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Destino:'
      ExplicitWidth = 40
    end
    object Label3: TLabel
      Left = 0
      Top = 80
      Width = 328
      Height = 13
      Margins.Top = 5
      Align = alTop
      Alignment = taCenter
      Caption = 'Nome Arquivo: '
      ExplicitWidth = 74
    end
    object Label1: TLabel
      Left = 0
      Top = 40
      Width = 328
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Url:'
      ExplicitWidth = 17
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 125
      Width = 81
      Height = 24
      Margins.Top = 5
      Align = alLeft
      Caption = 'Extens'#227'o:'
      ExplicitLeft = 0
      ExplicitTop = 120
      ExplicitHeight = 35
    end
    object Edit2: TEdit
      AlignWithMargins = True
      Left = 3
      Top = 16
      Width = 322
      Height = 21
      Align = alTop
      ReadOnly = True
      TabOrder = 0
      OnExit = Edit2Exit
      ExplicitWidth = 445
    end
    object Edit3: TEdit
      AlignWithMargins = True
      Left = 3
      Top = 96
      Width = 322
      Height = 21
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 445
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 3
      Top = 56
      Width = 322
      Height = 21
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 445
    end
    object ComboBox1: TComboBox
      AlignWithMargins = True
      Left = 217
      Top = 122
      Width = 108
      Height = 21
      Margins.Top = 2
      Align = alRight
      Style = csDropDownList
      TabOrder = 3
      ExplicitLeft = 340
      ExplicitTop = 123
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 155
      Width = 322
      Height = 41
      Align = alBottom
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitLeft = 0
      ExplicitTop = 158
      ExplicitWidth = 328
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 41
        Height = 37
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
          754944415478DA63641860C038EA003C72FFE961E7907000B9D184AE1FAB79A3
          0E1875C0A803E8E1007128FB15BD1D700D883581F82610FF83B24162DAF47200
          C8E77B912CBC0AC4CE40FC925E0E000131240B410E7A85AE80D60E2068CEA803
          461D30EA8051078C3A809ECDF2A1E700BA805107000013293F21F8AC56D80000
          000049454E44AE426082}
        OnClick = Image1Click
      end
      object Image2: TImage
        Left = 277
        Top = 0
        Width = 41
        Height = 37
        Align = alRight
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
          E24944415478DA63641860C038EA80A1EE80FF949A33EA8051078C3A60D401A3
          0E2056630610AF03E257443A401C8803817806351C9003C49381F82A103B03F1
          4B020E0059BE0F88B5A07AA752EA000120DE0DC426407C1B881D81F8290E0748
          03F17E205605E23340EC0AC41F2875003E47203B4006EA73A22D27C501D81CE1
          04C48FA1728A509F2B906239A90E000150FCEE05626D20BE0EC49A507118FB2A
          D461AF8835909CEC831C12C880249F53E2006C8E20CB724A1C0002B0EC064A88
          24053BB51C0002125007BC24D78041DF2AFE4F942914D833E81D407330EA8001
          770000C6F23B21C1EA15390000000049454E44AE426082}
        OnClick = Image2Click
        ExplicitLeft = 260
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '|.jpg||.png||.jpeg||.mp4||.avi||.mpg||.avc||.aac'
    Left = 60
    Top = 120
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders, fdoPathMustExist]
    Left = 149
    Top = 9
  end
end
