object FSend: TFSend
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Enviar Mensagem'
  ClientHeight = 201
  ClientWidth = 447
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
  object Label3: TLabel
    Left = 8
    Top = 11
    Width = 41
    Height = 13
    Caption = 'Numero:'
  end
  object Edit1: TEdit
    Left = 8
    Top = 30
    Width = 431
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = '+5554'
  end
  object Memo1: TMemo
    Left = 8
    Top = 57
    Width = 313
    Height = 136
    ReadOnly = True
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 327
    Top = 57
    Width = 112
    Height = 136
    Glyph.Data = {
      42100000424D4210000000000000420000002800000020000000200000000100
      20000300000000100000000000000000000000000000000000000000FF0000FF
      0000FF0000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000080002C00810045000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000800024008000FF008000DB0080
      0074008000140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001008000EA008000FF0080
      00FF008000F8008000A40080003C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008000B2008000FF0080
      00DC008000FA008000FF008000FF008000D30081006B0088000F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000081007B008000FF0080
      00930083002100800088008000E8008000FF008000FF008000EC008000880080
      0026000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000800042008000FF0080
      00CC00000000000000000080000800800066008000CC008000FF008000FF0080
      00FE008000BB0081005500800006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000089000D008000FC0080
      00FA008E0009000000000000000000000000000000000082002D008000990080
      00F1008000FF008000FF008000E9008000800080001C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000D00080
      00FF0080003E000000000000000000000000000000000000000000000000008B
      000B00800066008000CC008000FF008000FF008000FC008000AA008000440080
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000970080
      00FF008100770000000000000000000000000000000000000000000000000000
      000000000000000000000082003B008000AA008000F7008000FF008000FF0080
      00E0008100770085001900000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000081005F0080
      00FF008000B00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000086001300810077008000D90080
      00FF008000FF008000FA008000AA008000440080000200000000000000000000
      0000000000000000000000000000000000000000000000000000008000240080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000E30081007F0084001B0000
      0000000000000000000000000000000000000000000000000000008000240080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000D60081006F008000100000
      00000000000000000000000000000000000000000000000000000081005B0080
      00FF008000B00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000092000700810055008000BB0080
      00FF008000FF008000FD008000BB0081005500AA000300000000000000000000
      0000000000000000000000000000000000000000000000000000008000930080
      00FF008000780000000000000000000000000000000000000000000000000000
      000000000000000000000083002300800088008000EA008000FF008000FF0080
      00E8008000880080002000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000CC0080
      00FF0082003F0000000000000000000000000000000000000000000000000080
      000200800044008000AA008000FC008000FF008000FF008000CC0080005E0099
      0005000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008E0009008000FA0080
      00FC0080000C0000000000000000000000000000000000850019008100770080
      00E0008000FF008000FF008000F1008000990082002D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000080003E008000FF0080
      00CE00000000000000000000000100800044008000AA008000FA008000FF0080
      00FF008000CC00800066008B000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000810077008000FF0080
      00950080001000800066008000D5008000FF008000FF008000F7008000AA0082
      003B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008000B2008000FF0080
      00DC008000FA008000FF008000FF008000CE008000660080000C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001008000EA008000FF0080
      00FF008000F7008000A000800038000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000800024008000FF008000DA0080
      0072008000120000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080002C00800044000000010000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    Layout = blGlyphRight
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
