object Form2: TForm2
  Left = 404
  Height = 217
  Top = 109
  Width = 290
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 217
  ClientWidth = 290
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  FormStyle = fsStayOnTop
  Icon.Data = {
    FE0200000000010001002020100001000400E802000016000000280000002000
    0000400000000100040000000000800200000000000000000000000000000000
    000000000000000080000080000000808000800000008000800080800000C0C0
    C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
    FF00000000000000000000000000000000000000F80000000000000000000000
    00000000F7777777777777777777778000000000F7FFFFFFFFFFFFFFFFFFF780
    00000000FFF88888888888888F77F78000000000FFF77777777777777F77F780
    00000000FFF88888888888888F77F78000000000FFF77777777777777F77F780
    00000000FFF88888888888888F77F78000000000FFFFFFFFFFFFFFFFFFFFF780
    00000000F7777777777777777777778000000000000000000000000000000000
    0000000088888888888888888888888000000000F88FFFFFFFFFFFFFFFFFF780
    00000000F78F777777777F777777F78000000000F78F888888888F788887F780
    00000000F78F777777777F7F0087F78000000000F78F888888888F7F0087F780
    00000000F78F777777777F7FFF87F78000000000F78FFFFFFFFFFF777777F780
    00000000F78FFFFFFFFFFFFFFFFFF78000000000F787777777777777FFFFF780
    00000000F787444444444447F8F8F78000000000F787444444444447F8F8F780
    00000000F787444444444447F8F8F78000000000F787444444444447FFFFF780
    00000000F787444444444447FFFFF78000000000F787777777777777FFFFF780
    00000000F78FFFFFFFFFFFFFFFFFF78000000000F78888888888888888888880
    00000000F7777777777777777777777000000000FFFFFFFFFFFFFFFFFFFFFFF0
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000
  }
  Position = poScreenCenter
  LCLVersion = '1.6.4.0'
  object Label302: TLabel
    Left = 81
    Height = 24
    Top = 56
    Width = 117
    Caption = 'Мониторинг '
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 49
    Height = 24
    Top = 80
    Width = 188
    Caption = 'Modbus - устройства'
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 65
    Height = 24
    Top = 0
    Width = 170
    Caption = 'ModbusLook    Light'
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 113
    Height = 16
    Top = 24
    Width = 47
    Caption = 'V 1.5.0'
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 41
    Height = 13
    Top = 44
    Width = 221
    Caption = 'Свободно распространяемая версия'
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label9: TLabel
    Left = 72
    Height = 16
    Top = 120
    Width = 158
    Caption = 'opc-server@yandex.ru'
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Timer1: TTimer
    Interval = 200
    OnTimer = Timer1Timer
    left = 248
    top = 8
  end
end
