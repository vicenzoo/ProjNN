object FClock: TFClock
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Previs'#227'o do Tempo'
  ClientHeight = 286
  ClientWidth = 567
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 567
    Height = 286
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    ExplicitLeft = 140
    ExplicitWidth = 240
    ExplicitHeight = 140
    object Panel2: TPanel
      Left = 0
      Top = 267
      Width = 567
      Height = 19
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 121
      ExplicitWidth = 240
      object Label8: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 561
        Height = 13
        Align = alClient
        Caption = 'Previs'#227'o do tempo por: Weatherstack'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 182
      end
    end
    object TabControl1: TTabControl
      Left = 0
      Top = 0
      Width = 567
      Height = 264
      Align = alTop
      MultiLine = True
      TabOrder = 1
      Tabs.Strings = (
        'Op'#231#245'es'
        'Sobre')
      TabIndex = 0
      OnChange = TabControl1Change
      object Panel3: TPanel
        Left = 4
        Top = 112
        Width = 559
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        object Label2: TLabel
          Left = 0
          Top = 13
          Width = 559
          Height = 26
          Align = alTop
          Caption = 'Delphi 10.3'#13'Desenvolvido por: Vicenzo Fran'#231'a'
          ExplicitWidth = 162
        end
        object Label6: TLabel
          Left = 0
          Top = 0
          Width = 559
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
        object Label3: TLabel
          Left = 0
          Top = 39
          Width = 559
          Height = 13
          Align = alTop
          Caption = 'Label3'
          ExplicitWidth = 31
        end
      end
      object Panel5: TPanel
        Left = 4
        Top = 24
        Width = 559
        Height = 88
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label10: TLabel
          Left = 0
          Top = 0
          Width = 559
          Height = 13
          Align = alTop
          Caption = 'Op'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 41
        end
        object Label9: TLabel
          Left = 0
          Top = 42
          Width = 36
          Height = 13
          Caption = 'Estilos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CheckBox1: TCheckBox
          Left = 0
          Top = 19
          Width = 97
          Height = 17
          Caption = 'Paineis Vis'#237'veis'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = CheckBox1Click
        end
        object ComboBox1: TComboBox
          Left = 0
          Top = 61
          Width = 145
          Height = 21
          Style = csDropDownList
          TabOrder = 1
          OnChange = ComboBox1Change
        end
      end
    end
  end
end
