object FExplorer: TFExplorer
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'NONS Explorer'
  ClientHeight = 356
  ClientWidth = 684
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
    Width = 684
    Height = 356
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 221
    ExplicitWidth = 463
    object Panel3: TPanel
      Left = 649
      Top = 0
      Width = 35
      Height = 356
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 428
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
        ExplicitLeft = 6
        ExplicitTop = 247
      end
      object Image2: TImage
        Left = 0
        Top = 317
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
    end
    object RzShellList1: TRzShellList
      Left = 0
      Top = 0
      Width = 649
      Height = 356
      Align = alClient
      IconOptions.AutoArrange = True
      TabOrder = 1
      ExplicitWidth = 428
    end
  end
end
