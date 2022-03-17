object FDraw: TFDraw
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NONS Draw'
  ClientHeight = 446
  ClientWidth = 794
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 64
    Width = 794
    Height = 382
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 779
    ExplicitHeight = 349
    object Image1: TImage
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 788
      Height = 376
      Align = alClient
      Center = True
      OnMouseDown = Image1MouseDown
      OnMouseMove = Image1MouseMove
      OnMouseUp = Image1MouseUp
      ExplicitLeft = 120
      ExplicitTop = 290
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
    object SplitView1: TSplitView
      Left = 794
      Top = 0
      Width = 0
      Height = 382
      Opened = False
      OpenedWidth = 160
      Placement = svpRight
      TabOrder = 0
      OnClosing = SplitView1Closing
      ExplicitLeft = 779
      ExplicitHeight = 349
      object RzColorPicker1: TRzColorPicker
        Left = 0
        Top = 0
        Width = 0
        Height = 137
        DefaultColor = clBlack
        ShowCustomColor = True
        ShowDefaultColor = True
        Align = alTop
        BorderOuter = fsFlat
        FlatColor = 11775403
        ParentColor = True
        TabOrder = 0
        OnClick = RzColorPicker1Click
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 64
    Align = alTop
    BevelKind = bkSoft
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 779
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 784
      Height = 54
      Align = alClient
      ButtonHeight = 50
      ButtonWidth = 31
      Caption = 'ToolBar1'
      Images = ProjNONS.VirtualImageList1
      TabOrder = 0
      ExplicitWidth = 739
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Caption = 'ToolButton1'
        ImageIndex = 25
        OnClick = ToolButton1Click
      end
      object ToolButton4: TToolButton
        Left = 31
        Top = 0
        Caption = 'ToolButton4'
        ImageIndex = 26
        OnClick = ToolButton4Click
      end
      object ToolButton5: TToolButton
        Left = 62
        Top = 0
        Caption = 'ToolButton5'
        ImageIndex = 27
        OnClick = ToolButton5Click
      end
      object ToolButton6: TToolButton
        Left = 93
        Top = 0
        Caption = 'ToolButton6'
        ImageIndex = 28
        OnClick = ToolButton6Click
      end
      object ToolButton2: TToolButton
        Left = 124
        Top = 0
        Caption = 'ToolButton2'
        ImageIndex = 7
        OnClick = ToolButton2Click
      end
      object ToolButton3: TToolButton
        Left = 155
        Top = 0
        Caption = 'ToolButton3'
        ImageIndex = 17
        OnClick = ToolButton3Click
      end
      object ToolButton7: TToolButton
        Left = 186
        Top = 0
        Caption = 'ToolButton7'
        ImageIndex = 29
        OnClick = ToolButton7Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '|*.bmp'
    Left = 150
    Top = 18
  end
  object OpenDialog2: TOpenDialog
    Filter = '|*.jpg'
    Left = 150
    Top = 44
  end
end
