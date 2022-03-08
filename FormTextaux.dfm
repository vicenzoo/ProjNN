object Ftxtaux: TFtxtaux
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aux'#237'liar de Texto'
  ClientHeight = 363
  ClientWidth = 529
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
  object Memo1: TMemo
    Left = 5
    Top = 90
    Width = 518
    Height = 265
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 170
    Height = 84
    Caption = 'Importa'#231#227'o'
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 5
      Top = 16
      Width = 162
      Height = 25
      Caption = 'Importar .Txt'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 5
      Top = 47
      Width = 162
      Height = 25
      Caption = 'Apagar Repeti'#231#227'o'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 184
    Top = 0
    Width = 167
    Height = 84
    Caption = 'Caractere Especial'
    TabOrder = 2
    object Label1: TLabel
      Left = 7
      Top = 26
      Width = 86
      Height = 13
      Caption = 'Inserir Caractere:'
    end
    object Edit1: TEdit
      Left = 113
      Top = 23
      Width = 41
      Height = 21
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 3
      Top = 47
      Width = 162
      Height = 25
      Caption = 'Inserir'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 355
    Top = 0
    Width = 168
    Height = 84
    Caption = 'Salvar Arquivo em:'
    TabOrder = 3
    object Edit2: TEdit
      Left = 3
      Top = 23
      Width = 162
      Height = 21
      TabOrder = 0
      OnExit = Edit2Exit
    end
    object BitBtn4: TBitBtn
      Left = 3
      Top = 47
      Width = 162
      Height = 25
      Caption = 'Salvar Arquivo'
      TabOrder = 1
      OnClick = BitBtn4Click
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'text|*.txt'
    Left = 30
    Top = 20
  end
end
