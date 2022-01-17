object FExplorer: TFExplorer
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'NONS Explorer'
  ClientHeight = 356
  ClientWidth = 611
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
    Left = 221
    Top = 0
    Width = 390
    Height = 356
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitWidth = 341
    object FileListBox1: TFileListBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 349
      Height = 350
      Align = alClient
      BevelInner = bvNone
      ItemHeight = 13
      TabOrder = 0
      OnMouseDown = FileListBox1MouseDown
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 339
      ExplicitHeight = 333
    end
    object Panel3: TPanel
      Left = 355
      Top = 0
      Width = 35
      Height = 356
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object Image1: TImage
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
          7B4944415478DA63641860C038EA805107E010FF4F2FFB06BD03A8154538CD1B
          920EF80BC44C445A0CD33F3C1DC00CC4FF88D43FF44380144BE9E600BA460172
          BCFF661880340073C03720E61AC810201550DD017C40FC8104C7D0240D101BEC
          44C90D3907100386A703280543D701D40643C7017403A30E18750000E9F94521
          22C9CDA90000000049454E44AE426082}
        ShowHint = False
        OnClick = Image1Click
        ExplicitLeft = 10
        ExplicitTop = 1
        ExplicitWidth = 354
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 221
    Height = 356
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object DriveComboBox1: TDriveComboBox
      Left = 0
      Top = 0
      Width = 221
      Height = 19
      Align = alTop
      TabOrder = 0
      OnChange = DriveComboBox1Change
      ExplicitLeft = 1
      ExplicitTop = 336
      ExplicitWidth = 259
    end
    object DirectoryListBox1: TDirectoryListBox
      AlignWithMargins = True
      Left = 3
      Top = 22
      Width = 215
      Height = 331
      Align = alClient
      TabOrder = 1
      OnChange = DirectoryListBox1Change
      ExplicitLeft = 2
      ExplicitTop = 11
      ExplicitWidth = 259
      ExplicitHeight = 335
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 341
    Top = 160
    object MoverArquivo1: TMenuItem
      Caption = 'Mover Arquivo'
      OnClick = MoverArquivo1Click
    end
    object DeletarArquivo1: TMenuItem
      Caption = 'Deletar Arquivo'
      OnClick = DeletarArquivo1Click
    end
  end
end
