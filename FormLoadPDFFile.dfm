object FLoadPDFFile: TFLoadPDFFile
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Visualizar PDF'
  ClientHeight = 524
  ClientWidth = 758
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
  object AcroPDF1: TAcroPDF
    Left = 0
    Top = 41
    Width = 758
    Height = 483
    Align = alClient
    TabOrder = 0
    ExplicitTop = 0
    ExplicitWidth = 687
    ExplicitHeight = 340
    ControlData = {000E0000574E0000EB310000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 51
      Height = 41
      Align = alLeft
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
        C14944415478DA63641860C038EA003C72FFE961D7907000A5D184D79C51078C
        3A6050970383C601B0207C08C4CB80B81E887F23897F07E263401C07C4CF18B0
        971F38ED21C50130D006C4D558C47702B1072D1DE00CC47B81F82910CB20890B
        00F10720FE09C41C0C24265E521C600FC40781F839104BA159848D4D941DD488
        02BA39E03510CF61C04C844240FC8E810E51C088431C06D01321DD1C000A8D1D
        409CC1809A0DA9E6009A8241ED8001AF8C461D30EA8041D32C1F3007D0058C3A
        000010B34A21D0C74F6B0000000049454E44AE426082}
      OnClick = Image1Click
    end
    object Image2: TImage
      Left = 719
      Top = 0
      Width = 39
      Height = 41
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
      ExplicitLeft = 0
      ExplicitHeight = 758
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'PDF File|*.pdf'
    Left = 278
    Top = 328
  end
end
