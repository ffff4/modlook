object Form1: TForm1
  Left = 126
  Height = 632
  Top = 188
  Width = 1096
  Caption = 'ModbusLook Light V 1.5.0 '
  ClientHeight = 632
  ClientWidth = 1096
  Color = clForm
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
  OnClose = FormClose
  OnCreate = FormCreate
  Position = poScreenCenter
  LCLVersion = '1.6.4.0'
  object GroupBox1: TGroupBox
    Left = 896
    Height = 113
    Top = 34
    Width = 184
    Caption = 'Параметры TCP'
    ClientHeight = 95
    ClientWidth = 180
    TabOrder = 158
    object IP_addr: TEdit
      Left = 64
      Height = 21
      Top = 2
      Width = 104
      OnChange = IP_addrChange
      TabOrder = 0
      Text = '127.0.0.1'
    end
    object Label27: TLabel
      Left = 16
      Height = 13
      Top = 2
      Width = 43
      Caption = 'IP-адрес'
      ParentColor = False
    end
    object Label28: TLabel
      Left = 12
      Height = 13
      Top = 32
      Width = 47
      Caption = 'TCP порт'
      ParentColor = False
    end
    object TCP_Port_SE: TSpinEdit
      Left = 64
      Height = 21
      Top = 27
      Width = 104
      MaxValue = 999999
      MinValue = 1
      OnChange = TCP_Port_SEChange
      TabOrder = 1
      Value = 4001
    end
    object out_mess_st: TStaticText
      Left = 8
      Height = 25
      Top = 56
      Width = 168
      Caption = '  '
      TabOrder = 2
    end
  end
  object Label301: TLabel
    Left = 24
    Height = 16
    Top = 8
    Width = 105
    Caption = 'Адрес устр-ва    '
    Color = clForm
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label302: TLabel
    Left = 224
    Height = 24
    Top = 8
    Width = 305
    Caption = 'Мониторинг Modbus - устройства'
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
  end
  object Label303: TLabel
    Left = 224
    Height = 16
    Top = 40
    Width = 121
    Caption = 'Нач. регистр  4хххх'
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
  end
  object Label304: TLabel
    Left = 224
    Height = 16
    Top = 64
    Width = 99
    Caption = 'Длина запроса'
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
  end
  object Label305: TLabel
    Left = 16
    Height = 16
    Top = 64
    Width = 99
    Caption = 'Длина запроса'
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
  end
  object Label306: TLabel
    Left = 544
    Height = 16
    Top = 64
    Width = 99
    Caption = 'Длина запроса'
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
  end
  object Label307: TLabel
    Left = 16
    Height = 16
    Top = 40
    Width = 121
    Caption = 'Нач. регистр  1хххх'
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
  end
  object Label308: TLabel
    Left = 544
    Height = 16
    Top = 40
    Width = 121
    Caption = 'Нач. регистр  0хххх'
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
  end
  object Shape1000: TShape
    Left = 776
    Height = 22
    Hint = 'Связь с устройством'
    Top = 8
    Width = 48
    ParentShowHint = False
    ShowHint = True
  end
  object Label311: TLabel
    Left = 304
    Height = 24
    Top = 536
    Width = 345
    AutoSize = False
    Caption = '                                                                     '
    Color = clAppWorkspace
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Shape2: TShape
    Left = 688
    Height = 9
    Top = 136
    Width = 9
    Brush.Color = clSilver
  end
  object Shape1: TShape
    Left = 688
    Height = 9
    Top = 120
    Width = 9
    Brush.Color = clSilver
  end
  object Shape3: TShape
    Left = 688
    Height = 9
    Top = 152
    Width = 9
    Brush.Color = clSilver
  end
  object Shape4: TShape
    Left = 688
    Height = 9
    Top = 168
    Width = 9
    Brush.Color = clSilver
  end
  object Shape5: TShape
    Left = 688
    Height = 9
    Top = 184
    Width = 9
    Brush.Color = clSilver
  end
  object Shape6: TShape
    Left = 688
    Height = 9
    Top = 200
    Width = 9
    Brush.Color = clSilver
  end
  object Shape7: TShape
    Left = 688
    Height = 9
    Top = 216
    Width = 9
    Brush.Color = clSilver
  end
  object Shape8: TShape
    Left = 688
    Height = 9
    Top = 232
    Width = 9
    Brush.Color = clSilver
  end
  object Shape9: TShape
    Left = 688
    Height = 9
    Top = 248
    Width = 9
    Brush.Color = clSilver
  end
  object Shape10: TShape
    Left = 688
    Height = 9
    Top = 264
    Width = 9
    Brush.Color = clSilver
  end
  object Shape11: TShape
    Left = 688
    Height = 9
    Top = 280
    Width = 9
    Brush.Color = clSilver
  end
  object Shape12: TShape
    Left = 688
    Height = 9
    Top = 296
    Width = 9
    Brush.Color = clSilver
  end
  object Shape13: TShape
    Left = 688
    Height = 9
    Top = 312
    Width = 9
    Brush.Color = clSilver
  end
  object Shape14: TShape
    Left = 688
    Height = 9
    Top = 328
    Width = 9
    Brush.Color = clSilver
  end
  object Shape15: TShape
    Left = 688
    Height = 9
    Top = 344
    Width = 9
    Brush.Color = clSilver
  end
  object Shape16: TShape
    Left = 688
    Height = 9
    Top = 360
    Width = 9
    Brush.Color = clSilver
  end
  object Shape17: TShape
    Left = 688
    Height = 9
    Top = 376
    Width = 9
    Brush.Color = clSilver
  end
  object Shape18: TShape
    Left = 688
    Height = 9
    Top = 392
    Width = 9
    Brush.Color = clSilver
  end
  object Shape19: TShape
    Left = 688
    Height = 9
    Top = 408
    Width = 9
    Brush.Color = clSilver
  end
  object Shape20: TShape
    Left = 688
    Height = 9
    Top = 424
    Width = 9
    Brush.Color = clSilver
  end
  object Shape21: TShape
    Left = 688
    Height = 9
    Top = 440
    Width = 9
    Brush.Color = clSilver
  end
  object Shape22: TShape
    Left = 688
    Height = 9
    Top = 456
    Width = 9
    Brush.Color = clSilver
  end
  object Shape23: TShape
    Left = 688
    Height = 9
    Top = 472
    Width = 9
    Brush.Color = clSilver
  end
  object Shape24: TShape
    Left = 688
    Height = 9
    Top = 488
    Width = 9
    Brush.Color = clSilver
  end
  object Label901: TLabel
    Left = 656
    Height = 13
    Top = 120
    Width = 30
    Caption = '00001'
    ParentColor = False
  end
  object Label902: TLabel
    Left = 656
    Height = 13
    Top = 136
    Width = 30
    Caption = '00002'
    ParentColor = False
  end
  object Label903: TLabel
    Left = 656
    Height = 13
    Top = 152
    Width = 30
    Caption = '00003'
    ParentColor = False
  end
  object Label904: TLabel
    Left = 656
    Height = 13
    Top = 168
    Width = 30
    Caption = '00004'
    ParentColor = False
  end
  object Label905: TLabel
    Left = 656
    Height = 13
    Top = 184
    Width = 30
    Caption = '00005'
    ParentColor = False
  end
  object Label906: TLabel
    Left = 656
    Height = 13
    Top = 200
    Width = 30
    Caption = '00006'
    ParentColor = False
  end
  object Label907: TLabel
    Left = 656
    Height = 13
    Top = 216
    Width = 30
    Caption = '00007'
    ParentColor = False
  end
  object Label908: TLabel
    Left = 656
    Height = 13
    Top = 232
    Width = 30
    Caption = '00008'
    ParentColor = False
  end
  object Label909: TLabel
    Left = 656
    Height = 13
    Top = 248
    Width = 30
    Caption = '00009'
    ParentColor = False
  end
  object Label910: TLabel
    Left = 656
    Height = 13
    Top = 264
    Width = 30
    Caption = '00010'
    ParentColor = False
  end
  object Label911: TLabel
    Left = 656
    Height = 13
    Top = 280
    Width = 30
    Caption = '00011'
    ParentColor = False
  end
  object Label912: TLabel
    Left = 656
    Height = 13
    Top = 296
    Width = 30
    Caption = '00012'
    ParentColor = False
  end
  object Label913: TLabel
    Left = 656
    Height = 13
    Top = 312
    Width = 30
    Caption = '00013'
    ParentColor = False
  end
  object Label914: TLabel
    Left = 656
    Height = 13
    Top = 328
    Width = 30
    Caption = '00014'
    ParentColor = False
  end
  object Label915: TLabel
    Left = 656
    Height = 13
    Top = 344
    Width = 30
    Caption = '00015'
    ParentColor = False
  end
  object Label916: TLabel
    Left = 656
    Height = 13
    Top = 360
    Width = 30
    Caption = '00016'
    ParentColor = False
  end
  object Label917: TLabel
    Left = 656
    Height = 13
    Top = 376
    Width = 30
    Caption = '00017'
    ParentColor = False
  end
  object Label918: TLabel
    Left = 656
    Height = 13
    Top = 392
    Width = 30
    Caption = '00018'
    ParentColor = False
  end
  object Label919: TLabel
    Left = 656
    Height = 13
    Top = 408
    Width = 30
    Caption = '00019'
    ParentColor = False
  end
  object Label920: TLabel
    Left = 656
    Height = 13
    Top = 424
    Width = 30
    Caption = '00020'
    ParentColor = False
  end
  object Label921: TLabel
    Left = 656
    Height = 13
    Top = 440
    Width = 30
    Caption = '00021'
    ParentColor = False
  end
  object Label922: TLabel
    Left = 656
    Height = 13
    Top = 456
    Width = 30
    Caption = '00022'
    ParentColor = False
  end
  object Label923: TLabel
    Left = 656
    Height = 13
    Top = 472
    Width = 30
    Caption = '00023'
    ParentColor = False
  end
  object Label924: TLabel
    Left = 656
    Height = 13
    Top = 488
    Width = 30
    Caption = '00024'
    ParentColor = False
  end
  object Shape25: TShape
    Left = 736
    Height = 8
    Top = 121
    Width = 9
    Brush.Color = clSilver
  end
  object Shape26: TShape
    Left = 736
    Height = 9
    Top = 136
    Width = 9
    Brush.Color = clSilver
  end
  object Shape27: TShape
    Left = 736
    Height = 9
    Top = 152
    Width = 9
    Brush.Color = clSilver
  end
  object Shape28: TShape
    Left = 736
    Height = 9
    Top = 168
    Width = 9
    Brush.Color = clSilver
  end
  object Shape29: TShape
    Left = 736
    Height = 9
    Top = 184
    Width = 9
    Brush.Color = clSilver
  end
  object Shape30: TShape
    Left = 736
    Height = 9
    Top = 200
    Width = 9
    Brush.Color = clSilver
  end
  object Shape31: TShape
    Left = 736
    Height = 9
    Top = 216
    Width = 9
    Brush.Color = clSilver
  end
  object Shape32: TShape
    Left = 736
    Height = 9
    Top = 232
    Width = 9
    Brush.Color = clSilver
  end
  object Shape33: TShape
    Left = 736
    Height = 9
    Top = 248
    Width = 9
    Brush.Color = clSilver
  end
  object Shape34: TShape
    Left = 736
    Height = 9
    Top = 264
    Width = 9
    Brush.Color = clSilver
  end
  object Shape35: TShape
    Left = 736
    Height = 9
    Top = 280
    Width = 9
    Brush.Color = clSilver
  end
  object Shape36: TShape
    Left = 736
    Height = 9
    Top = 296
    Width = 9
    Brush.Color = clSilver
  end
  object Shape37: TShape
    Left = 736
    Height = 9
    Top = 312
    Width = 9
    Brush.Color = clSilver
  end
  object Shape38: TShape
    Left = 736
    Height = 9
    Top = 328
    Width = 9
    Brush.Color = clSilver
  end
  object Shape39: TShape
    Left = 736
    Height = 9
    Top = 344
    Width = 9
    Brush.Color = clSilver
  end
  object Shape40: TShape
    Left = 736
    Height = 9
    Top = 360
    Width = 9
    Brush.Color = clSilver
  end
  object Shape41: TShape
    Left = 736
    Height = 9
    Top = 376
    Width = 9
    Brush.Color = clSilver
  end
  object Shape42: TShape
    Left = 736
    Height = 9
    Top = 392
    Width = 9
    Brush.Color = clSilver
  end
  object Shape43: TShape
    Left = 736
    Height = 9
    Top = 408
    Width = 9
    Brush.Color = clSilver
  end
  object Shape44: TShape
    Left = 736
    Height = 9
    Top = 424
    Width = 9
    Brush.Color = clSilver
  end
  object Shape45: TShape
    Left = 736
    Height = 9
    Top = 440
    Width = 9
    Brush.Color = clSilver
  end
  object Shape46: TShape
    Left = 736
    Height = 9
    Top = 456
    Width = 9
    Brush.Color = clSilver
  end
  object Shape47: TShape
    Left = 736
    Height = 9
    Top = 472
    Width = 9
    Brush.Color = clSilver
  end
  object Shape48: TShape
    Left = 736
    Height = 9
    Top = 488
    Width = 9
    Brush.Color = clSilver
  end
  object Label925: TLabel
    Left = 704
    Height = 13
    Top = 120
    Width = 30
    Caption = '00025'
    ParentColor = False
  end
  object Label926: TLabel
    Left = 704
    Height = 13
    Top = 136
    Width = 30
    Caption = '00026'
    ParentColor = False
  end
  object Label927: TLabel
    Left = 704
    Height = 13
    Top = 152
    Width = 30
    Caption = '00027'
    ParentColor = False
  end
  object Label928: TLabel
    Left = 704
    Height = 13
    Top = 168
    Width = 30
    Caption = '00028'
    ParentColor = False
  end
  object Label929: TLabel
    Left = 704
    Height = 13
    Top = 184
    Width = 30
    Caption = '00029'
    ParentColor = False
  end
  object Label930: TLabel
    Left = 704
    Height = 13
    Top = 200
    Width = 30
    Caption = '00030'
    ParentColor = False
  end
  object Label931: TLabel
    Left = 704
    Height = 13
    Top = 216
    Width = 30
    Caption = '00031'
    ParentColor = False
  end
  object Label932: TLabel
    Left = 704
    Height = 13
    Top = 232
    Width = 30
    Caption = '00032'
    ParentColor = False
  end
  object Label933: TLabel
    Left = 704
    Height = 13
    Top = 248
    Width = 30
    Caption = '00033'
    ParentColor = False
  end
  object Label934: TLabel
    Left = 704
    Height = 13
    Top = 264
    Width = 30
    Caption = '00034'
    ParentColor = False
  end
  object Label935: TLabel
    Left = 704
    Height = 13
    Top = 280
    Width = 30
    Caption = '00035'
    ParentColor = False
  end
  object Label936: TLabel
    Left = 704
    Height = 13
    Top = 296
    Width = 30
    Caption = '00036'
    ParentColor = False
  end
  object Label937: TLabel
    Left = 704
    Height = 13
    Top = 312
    Width = 30
    Caption = '00037'
    ParentColor = False
  end
  object Label938: TLabel
    Left = 704
    Height = 13
    Top = 328
    Width = 30
    Caption = '00038'
    ParentColor = False
  end
  object Label939: TLabel
    Left = 704
    Height = 13
    Top = 344
    Width = 30
    Caption = '00039'
    ParentColor = False
  end
  object Label940: TLabel
    Left = 704
    Height = 13
    Top = 360
    Width = 30
    Caption = '00040'
    ParentColor = False
  end
  object Label941: TLabel
    Left = 704
    Height = 13
    Top = 376
    Width = 30
    Caption = '00041'
    ParentColor = False
  end
  object Label942: TLabel
    Left = 704
    Height = 13
    Top = 392
    Width = 30
    Caption = '00042'
    ParentColor = False
  end
  object Label943: TLabel
    Left = 704
    Height = 13
    Top = 408
    Width = 30
    Caption = '00043'
    ParentColor = False
  end
  object Label944: TLabel
    Left = 704
    Height = 13
    Top = 424
    Width = 30
    Caption = '00044'
    ParentColor = False
  end
  object Label945: TLabel
    Left = 704
    Height = 13
    Top = 440
    Width = 30
    Caption = '00045'
    ParentColor = False
  end
  object Label946: TLabel
    Left = 704
    Height = 13
    Top = 456
    Width = 30
    Caption = '00046'
    ParentColor = False
  end
  object Label947: TLabel
    Left = 704
    Height = 13
    Top = 472
    Width = 30
    Caption = '00047'
    ParentColor = False
  end
  object Label948: TLabel
    Left = 704
    Height = 13
    Top = 488
    Width = 30
    Caption = '00048'
    ParentColor = False
  end
  object Shape49: TShape
    Left = 784
    Height = 9
    Top = 120
    Width = 9
    Brush.Color = clSilver
  end
  object Shape50: TShape
    Left = 784
    Height = 9
    Top = 136
    Width = 9
    Brush.Color = clSilver
  end
  object Shape51: TShape
    Left = 784
    Height = 9
    Top = 152
    Width = 9
    Brush.Color = clSilver
  end
  object Shape52: TShape
    Left = 784
    Height = 9
    Top = 168
    Width = 9
    Brush.Color = clSilver
  end
  object Shape53: TShape
    Left = 784
    Height = 9
    Top = 184
    Width = 9
    Brush.Color = clSilver
  end
  object Shape54: TShape
    Left = 784
    Height = 9
    Top = 200
    Width = 9
    Brush.Color = clSilver
  end
  object Shape55: TShape
    Left = 784
    Height = 9
    Top = 216
    Width = 9
    Brush.Color = clSilver
  end
  object Shape56: TShape
    Left = 784
    Height = 9
    Top = 232
    Width = 9
    Brush.Color = clSilver
  end
  object Shape57: TShape
    Left = 784
    Height = 9
    Top = 248
    Width = 9
    Brush.Color = clSilver
  end
  object Shape58: TShape
    Left = 784
    Height = 9
    Top = 264
    Width = 9
    Brush.Color = clSilver
  end
  object Shape59: TShape
    Left = 784
    Height = 9
    Top = 280
    Width = 9
    Brush.Color = clSilver
  end
  object Shape60: TShape
    Left = 784
    Height = 9
    Top = 296
    Width = 9
    Brush.Color = clSilver
  end
  object Shape61: TShape
    Left = 784
    Height = 9
    Top = 312
    Width = 9
    Brush.Color = clSilver
  end
  object Shape62: TShape
    Left = 784
    Height = 9
    Top = 328
    Width = 9
    Brush.Color = clSilver
  end
  object Shape63: TShape
    Left = 784
    Height = 9
    Top = 344
    Width = 9
    Brush.Color = clSilver
  end
  object Shape64: TShape
    Left = 784
    Height = 9
    Top = 360
    Width = 9
    Brush.Color = clSilver
  end
  object Shape65: TShape
    Left = 784
    Height = 9
    Top = 376
    Width = 9
    Brush.Color = clSilver
  end
  object Shape66: TShape
    Left = 784
    Height = 9
    Top = 392
    Width = 9
    Brush.Color = clSilver
  end
  object Shape67: TShape
    Left = 784
    Height = 9
    Top = 408
    Width = 9
    Brush.Color = clSilver
  end
  object Shape68: TShape
    Left = 784
    Height = 9
    Top = 424
    Width = 9
    Brush.Color = clSilver
  end
  object Shape69: TShape
    Left = 784
    Height = 9
    Top = 440
    Width = 9
    Brush.Color = clSilver
  end
  object Shape70: TShape
    Left = 784
    Height = 9
    Top = 456
    Width = 9
    Brush.Color = clSilver
  end
  object Shape71: TShape
    Left = 784
    Height = 9
    Top = 472
    Width = 9
    Brush.Color = clSilver
  end
  object Shape72: TShape
    Left = 784
    Height = 9
    Top = 488
    Width = 9
    Brush.Color = clSilver
  end
  object Label949: TLabel
    Left = 752
    Height = 13
    Top = 120
    Width = 30
    Caption = '00049'
    ParentColor = False
  end
  object Label950: TLabel
    Left = 752
    Height = 13
    Top = 136
    Width = 30
    Caption = '00050'
    ParentColor = False
  end
  object Label951: TLabel
    Left = 752
    Height = 13
    Top = 152
    Width = 30
    Caption = '00051'
    ParentColor = False
  end
  object Label952: TLabel
    Left = 752
    Height = 13
    Top = 168
    Width = 30
    Caption = '00052'
    ParentColor = False
  end
  object Label953: TLabel
    Left = 752
    Height = 13
    Top = 184
    Width = 30
    Caption = '00053'
    ParentColor = False
  end
  object Label954: TLabel
    Left = 752
    Height = 13
    Top = 200
    Width = 30
    Caption = '00054'
    ParentColor = False
  end
  object Label955: TLabel
    Left = 752
    Height = 13
    Top = 216
    Width = 30
    Caption = '00055'
    ParentColor = False
  end
  object Label956: TLabel
    Left = 752
    Height = 13
    Top = 232
    Width = 30
    Caption = '00056'
    ParentColor = False
  end
  object Label957: TLabel
    Left = 752
    Height = 13
    Top = 248
    Width = 30
    Caption = '00057'
    ParentColor = False
  end
  object Label958: TLabel
    Left = 752
    Height = 13
    Top = 264
    Width = 30
    Caption = '00058'
    ParentColor = False
  end
  object Label959: TLabel
    Left = 752
    Height = 13
    Top = 280
    Width = 30
    Caption = '00059'
    ParentColor = False
  end
  object Label960: TLabel
    Left = 752
    Height = 13
    Top = 296
    Width = 30
    Caption = '00060'
    ParentColor = False
  end
  object Label961: TLabel
    Left = 752
    Height = 13
    Top = 312
    Width = 30
    Caption = '00061'
    ParentColor = False
  end
  object Label962: TLabel
    Left = 752
    Height = 13
    Top = 328
    Width = 30
    Caption = '00062'
    ParentColor = False
  end
  object Label963: TLabel
    Left = 752
    Height = 13
    Top = 344
    Width = 30
    Caption = '00063'
    ParentColor = False
  end
  object Label964: TLabel
    Left = 752
    Height = 13
    Top = 360
    Width = 30
    Caption = '00064'
    ParentColor = False
  end
  object Label965: TLabel
    Left = 752
    Height = 13
    Top = 376
    Width = 30
    Caption = '00065'
    ParentColor = False
  end
  object Label966: TLabel
    Left = 752
    Height = 13
    Top = 392
    Width = 30
    Caption = '00066'
    ParentColor = False
  end
  object Label967: TLabel
    Left = 752
    Height = 13
    Top = 408
    Width = 30
    Caption = '00067'
    ParentColor = False
  end
  object Label968: TLabel
    Left = 752
    Height = 13
    Top = 424
    Width = 30
    Caption = '00068'
    ParentColor = False
  end
  object Label969: TLabel
    Left = 752
    Height = 13
    Top = 440
    Width = 30
    Caption = '00069'
    ParentColor = False
  end
  object Label970: TLabel
    Left = 752
    Height = 13
    Top = 456
    Width = 30
    Caption = '00070'
    ParentColor = False
  end
  object Label971: TLabel
    Left = 752
    Height = 13
    Top = 472
    Width = 30
    Caption = '00071'
    ParentColor = False
  end
  object Label972: TLabel
    Left = 752
    Height = 13
    Top = 488
    Width = 30
    Caption = '00072'
    ParentColor = False
  end
  object Shape73: TShape
    Left = 832
    Height = 8
    Top = 121
    Width = 9
    Brush.Color = clSilver
  end
  object Shape74: TShape
    Left = 832
    Height = 9
    Top = 136
    Width = 9
    Brush.Color = clSilver
  end
  object Shape75: TShape
    Left = 832
    Height = 9
    Top = 152
    Width = 9
    Brush.Color = clSilver
  end
  object Shape76: TShape
    Left = 832
    Height = 9
    Top = 168
    Width = 9
    Brush.Color = clSilver
  end
  object Shape77: TShape
    Left = 832
    Height = 9
    Top = 184
    Width = 9
    Brush.Color = clSilver
  end
  object Shape78: TShape
    Left = 832
    Height = 9
    Top = 200
    Width = 9
    Brush.Color = clSilver
  end
  object Shape79: TShape
    Left = 832
    Height = 9
    Top = 216
    Width = 9
    Brush.Color = clSilver
  end
  object Shape80: TShape
    Left = 832
    Height = 9
    Top = 232
    Width = 9
    Brush.Color = clSilver
  end
  object Shape81: TShape
    Left = 832
    Height = 9
    Top = 248
    Width = 9
    Brush.Color = clSilver
  end
  object Shape82: TShape
    Left = 832
    Height = 9
    Top = 264
    Width = 9
    Brush.Color = clSilver
  end
  object Shape83: TShape
    Left = 832
    Height = 9
    Top = 280
    Width = 9
    Brush.Color = clSilver
  end
  object Shape84: TShape
    Left = 832
    Height = 9
    Top = 296
    Width = 9
    Brush.Color = clSilver
  end
  object Shape85: TShape
    Left = 832
    Height = 9
    Top = 312
    Width = 9
    Brush.Color = clSilver
  end
  object Shape86: TShape
    Left = 832
    Height = 9
    Top = 328
    Width = 9
    Brush.Color = clSilver
  end
  object Shape87: TShape
    Left = 832
    Height = 9
    Top = 344
    Width = 9
    Brush.Color = clSilver
  end
  object Shape88: TShape
    Left = 832
    Height = 9
    Top = 360
    Width = 9
    Brush.Color = clSilver
  end
  object Shape89: TShape
    Left = 832
    Height = 9
    Top = 376
    Width = 9
    Brush.Color = clSilver
  end
  object Shape90: TShape
    Left = 832
    Height = 9
    Top = 392
    Width = 9
    Brush.Color = clSilver
  end
  object Shape91: TShape
    Left = 832
    Height = 9
    Top = 408
    Width = 9
    Brush.Color = clSilver
  end
  object Shape92: TShape
    Left = 832
    Height = 9
    Top = 424
    Width = 9
    Brush.Color = clSilver
  end
  object Shape93: TShape
    Left = 832
    Height = 9
    Top = 440
    Width = 9
    Brush.Color = clSilver
  end
  object Shape94: TShape
    Left = 832
    Height = 9
    Top = 456
    Width = 9
    Brush.Color = clSilver
  end
  object Shape95: TShape
    Left = 832
    Height = 9
    Top = 472
    Width = 9
    Brush.Color = clSilver
  end
  object Shape96: TShape
    Left = 832
    Height = 9
    Top = 488
    Width = 9
    Brush.Color = clSilver
  end
  object Label973: TLabel
    Left = 800
    Height = 13
    Top = 120
    Width = 30
    Caption = '00073'
    ParentColor = False
  end
  object Label974: TLabel
    Left = 800
    Height = 13
    Top = 136
    Width = 30
    Caption = '00074'
    ParentColor = False
  end
  object Label975: TLabel
    Left = 800
    Height = 13
    Top = 152
    Width = 30
    Caption = '00075'
    ParentColor = False
  end
  object Label976: TLabel
    Left = 800
    Height = 13
    Top = 168
    Width = 30
    Caption = '00076'
    ParentColor = False
  end
  object Label977: TLabel
    Left = 800
    Height = 13
    Top = 184
    Width = 30
    Caption = '00077'
    ParentColor = False
  end
  object Label978: TLabel
    Left = 800
    Height = 13
    Top = 200
    Width = 30
    Caption = '00078'
    ParentColor = False
  end
  object Label979: TLabel
    Left = 800
    Height = 13
    Top = 216
    Width = 30
    Caption = '00079'
    ParentColor = False
  end
  object Label980: TLabel
    Left = 800
    Height = 13
    Top = 232
    Width = 30
    Caption = '00080'
    ParentColor = False
  end
  object Label981: TLabel
    Left = 800
    Height = 13
    Top = 248
    Width = 30
    Caption = '00081'
    ParentColor = False
  end
  object Label982: TLabel
    Left = 800
    Height = 13
    Top = 264
    Width = 30
    Caption = '00082'
    ParentColor = False
  end
  object Label983: TLabel
    Left = 800
    Height = 13
    Top = 280
    Width = 30
    Caption = '00083'
    ParentColor = False
  end
  object Label984: TLabel
    Left = 800
    Height = 13
    Top = 296
    Width = 30
    Caption = '00084'
    ParentColor = False
  end
  object Label985: TLabel
    Left = 800
    Height = 13
    Top = 312
    Width = 30
    Caption = '00085'
    ParentColor = False
  end
  object Label986: TLabel
    Left = 800
    Height = 13
    Top = 328
    Width = 30
    Caption = '00086'
    ParentColor = False
  end
  object Label987: TLabel
    Left = 800
    Height = 13
    Top = 344
    Width = 30
    Caption = '00087'
    ParentColor = False
  end
  object Label988: TLabel
    Left = 800
    Height = 13
    Top = 360
    Width = 30
    Caption = '00088'
    ParentColor = False
  end
  object Label989: TLabel
    Left = 800
    Height = 13
    Top = 376
    Width = 30
    Caption = '00089'
    ParentColor = False
  end
  object Label990: TLabel
    Left = 800
    Height = 13
    Top = 392
    Width = 30
    Caption = '00090'
    ParentColor = False
  end
  object Label991: TLabel
    Left = 800
    Height = 13
    Top = 408
    Width = 30
    Caption = '00091'
    ParentColor = False
  end
  object Label992: TLabel
    Left = 800
    Height = 13
    Top = 424
    Width = 30
    Caption = '00092'
    ParentColor = False
  end
  object Label993: TLabel
    Left = 800
    Height = 13
    Top = 440
    Width = 30
    Caption = '00093'
    ParentColor = False
  end
  object Label994: TLabel
    Left = 800
    Height = 13
    Top = 456
    Width = 30
    Caption = '00094'
    ParentColor = False
  end
  object Label995: TLabel
    Left = 800
    Height = 13
    Top = 472
    Width = 30
    Caption = '00095'
    ParentColor = False
  end
  object Label996: TLabel
    Left = 800
    Height = 13
    Top = 488
    Width = 30
    Caption = '00096'
    ParentColor = False
  end
  object Shape97: TShape
    Left = 880
    Height = 8
    Top = 121
    Width = 9
    Brush.Color = clSilver
  end
  object Shape98: TShape
    Left = 880
    Height = 9
    Top = 136
    Width = 9
    Brush.Color = clSilver
  end
  object Shape99: TShape
    Left = 880
    Height = 9
    Top = 152
    Width = 9
    Brush.Color = clSilver
  end
  object Shape100: TShape
    Left = 880
    Height = 9
    Top = 168
    Width = 9
    Brush.Color = clSilver
  end
  object Shape101: TShape
    Left = 880
    Height = 9
    Top = 184
    Width = 9
    Brush.Color = clSilver
  end
  object Shape102: TShape
    Left = 880
    Height = 9
    Top = 200
    Width = 9
    Brush.Color = clSilver
  end
  object Shape103: TShape
    Left = 880
    Height = 9
    Top = 216
    Width = 9
    Brush.Color = clSilver
  end
  object Shape104: TShape
    Left = 880
    Height = 9
    Top = 232
    Width = 9
    Brush.Color = clSilver
  end
  object Shape105: TShape
    Left = 880
    Height = 9
    Top = 248
    Width = 9
    Brush.Color = clSilver
  end
  object Shape106: TShape
    Left = 880
    Height = 9
    Top = 264
    Width = 9
    Brush.Color = clSilver
  end
  object Shape107: TShape
    Left = 880
    Height = 9
    Top = 280
    Width = 9
    Brush.Color = clSilver
  end
  object Shape108: TShape
    Left = 880
    Height = 9
    Top = 296
    Width = 9
    Brush.Color = clSilver
  end
  object Shape109: TShape
    Left = 880
    Height = 9
    Top = 312
    Width = 9
    Brush.Color = clSilver
  end
  object Shape110: TShape
    Left = 880
    Height = 9
    Top = 328
    Width = 9
    Brush.Color = clSilver
  end
  object Shape111: TShape
    Left = 880
    Height = 9
    Top = 344
    Width = 9
    Brush.Color = clSilver
  end
  object Shape112: TShape
    Left = 880
    Height = 9
    Top = 360
    Width = 9
    Brush.Color = clSilver
  end
  object Shape113: TShape
    Left = 880
    Height = 9
    Top = 376
    Width = 9
    Brush.Color = clSilver
  end
  object Shape114: TShape
    Left = 880
    Height = 9
    Top = 392
    Width = 9
    Brush.Color = clSilver
  end
  object Shape115: TShape
    Left = 880
    Height = 9
    Top = 408
    Width = 9
    Brush.Color = clSilver
  end
  object Shape116: TShape
    Left = 880
    Height = 9
    Top = 424
    Width = 9
    Brush.Color = clSilver
  end
  object Shape117: TShape
    Left = 880
    Height = 9
    Top = 440
    Width = 9
    Brush.Color = clSilver
  end
  object Shape118: TShape
    Left = 880
    Height = 9
    Top = 456
    Width = 9
    Brush.Color = clSilver
  end
  object Shape119: TShape
    Left = 880
    Height = 9
    Top = 472
    Width = 9
    Brush.Color = clSilver
  end
  object Shape120: TShape
    Left = 880
    Height = 9
    Top = 488
    Width = 9
    Brush.Color = clSilver
  end
  object Label997: TLabel
    Left = 848
    Height = 13
    Top = 120
    Width = 30
    Caption = '00097'
    ParentColor = False
  end
  object Label998: TLabel
    Left = 848
    Height = 13
    Top = 136
    Width = 30
    Caption = '00098'
    ParentColor = False
  end
  object Label999: TLabel
    Left = 848
    Height = 13
    Top = 152
    Width = 30
    Caption = '00099'
    ParentColor = False
  end
  object Label1000: TLabel
    Left = 848
    Height = 13
    Top = 168
    Width = 30
    Caption = '00100'
    ParentColor = False
  end
  object Label1001: TLabel
    Left = 848
    Height = 13
    Top = 184
    Width = 30
    Caption = '00101'
    ParentColor = False
  end
  object Label1002: TLabel
    Left = 848
    Height = 13
    Top = 200
    Width = 30
    Caption = '00102'
    ParentColor = False
  end
  object Label1003: TLabel
    Left = 848
    Height = 13
    Top = 216
    Width = 30
    Caption = '00103'
    ParentColor = False
  end
  object Label1004: TLabel
    Left = 848
    Height = 13
    Top = 232
    Width = 30
    Caption = '00104'
    ParentColor = False
  end
  object Label1005: TLabel
    Left = 848
    Height = 13
    Top = 248
    Width = 30
    Caption = '00105'
    ParentColor = False
  end
  object Label1006: TLabel
    Left = 848
    Height = 13
    Top = 264
    Width = 30
    Caption = '00106'
    ParentColor = False
  end
  object Label1007: TLabel
    Left = 848
    Height = 13
    Top = 280
    Width = 30
    Caption = '00107'
    ParentColor = False
  end
  object Label1008: TLabel
    Left = 848
    Height = 13
    Top = 296
    Width = 30
    Caption = '00108'
    ParentColor = False
  end
  object Label1009: TLabel
    Left = 848
    Height = 13
    Top = 312
    Width = 30
    Caption = '00109'
    ParentColor = False
  end
  object Label1010: TLabel
    Left = 848
    Height = 13
    Top = 328
    Width = 30
    Caption = '00110'
    ParentColor = False
  end
  object Label1011: TLabel
    Left = 848
    Height = 13
    Top = 344
    Width = 30
    Caption = '00111'
    ParentColor = False
  end
  object Label1012: TLabel
    Left = 848
    Height = 13
    Top = 360
    Width = 30
    Caption = '00112'
    ParentColor = False
  end
  object Label1013: TLabel
    Left = 848
    Height = 13
    Top = 376
    Width = 30
    Caption = '00113'
    ParentColor = False
  end
  object Label1014: TLabel
    Left = 848
    Height = 13
    Top = 392
    Width = 30
    Caption = '00114'
    ParentColor = False
  end
  object Label1015: TLabel
    Left = 848
    Height = 13
    Top = 408
    Width = 30
    Caption = '00115'
    ParentColor = False
  end
  object Label1016: TLabel
    Left = 848
    Height = 13
    Top = 424
    Width = 30
    Caption = '00116'
    ParentColor = False
  end
  object Label1017: TLabel
    Left = 848
    Height = 13
    Top = 440
    Width = 30
    Caption = '00017'
    ParentColor = False
  end
  object Label1018: TLabel
    Left = 848
    Height = 13
    Top = 456
    Width = 30
    Caption = '00118'
    ParentColor = False
  end
  object Label1019: TLabel
    Left = 848
    Height = 13
    Top = 472
    Width = 30
    Caption = '00119'
    ParentColor = False
  end
  object Label1020: TLabel
    Left = 848
    Height = 13
    Top = 488
    Width = 30
    Caption = '00120'
    ParentColor = False
  end
  object Label1: TLabel
    Left = 264
    Height = 17
    Top = 120
    Width = 33
    AutoSize = False
    Caption = '40001'
    ParentColor = False
  end
  object Label2: TLabel
    Left = 264
    Height = 17
    Top = 136
    Width = 33
    AutoSize = False
    Caption = '40002'
    ParentColor = False
  end
  object Label3: TLabel
    Left = 264
    Height = 17
    Top = 152
    Width = 33
    AutoSize = False
    Caption = '40003'
    ParentColor = False
  end
  object Label4: TLabel
    Left = 264
    Height = 17
    Top = 168
    Width = 33
    AutoSize = False
    Caption = '40004'
    ParentColor = False
  end
  object Label5: TLabel
    Left = 264
    Height = 17
    Top = 184
    Width = 33
    AutoSize = False
    Caption = '40005'
    ParentColor = False
  end
  object Label6: TLabel
    Left = 264
    Height = 17
    Top = 200
    Width = 33
    AutoSize = False
    Caption = '40006'
    ParentColor = False
  end
  object Label7: TLabel
    Left = 264
    Height = 17
    Top = 216
    Width = 33
    AutoSize = False
    Caption = '40007'
    ParentColor = False
  end
  object Label8: TLabel
    Left = 264
    Height = 17
    Top = 232
    Width = 33
    AutoSize = False
    Caption = '40008'
    ParentColor = False
  end
  object Label9: TLabel
    Left = 264
    Height = 17
    Top = 248
    Width = 33
    AutoSize = False
    Caption = '40009'
    ParentColor = False
  end
  object Label10: TLabel
    Left = 264
    Height = 17
    Top = 264
    Width = 33
    AutoSize = False
    Caption = '40010'
    ParentColor = False
  end
  object Label11: TLabel
    Left = 264
    Height = 17
    Top = 280
    Width = 33
    AutoSize = False
    Caption = '40011'
    ParentColor = False
  end
  object Label12: TLabel
    Left = 264
    Height = 17
    Top = 296
    Width = 33
    AutoSize = False
    Caption = '40012'
    ParentColor = False
  end
  object Label13: TLabel
    Left = 264
    Height = 17
    Top = 312
    Width = 33
    AutoSize = False
    Caption = '40013'
    ParentColor = False
  end
  object Label14: TLabel
    Left = 264
    Height = 17
    Top = 328
    Width = 33
    AutoSize = False
    Caption = '40014'
    ParentColor = False
  end
  object Label15: TLabel
    Left = 264
    Height = 17
    Top = 344
    Width = 33
    AutoSize = False
    Caption = '40015'
    ParentColor = False
  end
  object Label16: TLabel
    Left = 264
    Height = 17
    Top = 360
    Width = 33
    AutoSize = False
    Caption = '40016'
    ParentColor = False
  end
  object Label17: TLabel
    Left = 264
    Height = 17
    Top = 376
    Width = 33
    AutoSize = False
    Caption = '40017'
    ParentColor = False
  end
  object Label18: TLabel
    Left = 264
    Height = 17
    Top = 392
    Width = 33
    AutoSize = False
    Caption = '40018'
    ParentColor = False
  end
  object Label19: TLabel
    Left = 264
    Height = 17
    Top = 408
    Width = 33
    AutoSize = False
    Caption = '40019'
    ParentColor = False
  end
  object Label20: TLabel
    Left = 264
    Height = 17
    Top = 424
    Width = 33
    AutoSize = False
    Caption = '40020'
    ParentColor = False
  end
  object Label21: TLabel
    Left = 264
    Height = 17
    Top = 440
    Width = 33
    AutoSize = False
    Caption = '40021'
    ParentColor = False
  end
  object Label22: TLabel
    Left = 264
    Height = 17
    Top = 456
    Width = 33
    AutoSize = False
    Caption = '40022'
    ParentColor = False
  end
  object Label23: TLabel
    Left = 264
    Height = 17
    Top = 472
    Width = 33
    AutoSize = False
    Caption = '40023'
    ParentColor = False
  end
  object Label24: TLabel
    Left = 264
    Height = 17
    Top = 488
    Width = 33
    AutoSize = False
    Caption = '40024'
    ParentColor = False
  end
  object Label25: TLabel
    Left = 264
    Height = 17
    Top = 504
    Width = 33
    AutoSize = False
    Caption = '40025'
    ParentColor = False
  end
  object Shape121: TShape
    Left = 40
    Height = 9
    Top = 120
    Width = 9
    Brush.Color = clSilver
  end
  object Shape122: TShape
    Left = 40
    Height = 9
    Top = 136
    Width = 9
    Brush.Color = clSilver
  end
  object Shape123: TShape
    Left = 40
    Height = 9
    Top = 152
    Width = 9
    Brush.Color = clSilver
  end
  object Shape124: TShape
    Left = 40
    Height = 9
    Top = 168
    Width = 9
    Brush.Color = clSilver
  end
  object Shape125: TShape
    Left = 40
    Height = 9
    Top = 184
    Width = 9
    Brush.Color = clSilver
  end
  object Shape126: TShape
    Left = 40
    Height = 9
    Top = 200
    Width = 9
    Brush.Color = clSilver
  end
  object Shape127: TShape
    Left = 40
    Height = 9
    Top = 216
    Width = 9
    Brush.Color = clSilver
  end
  object Shape128: TShape
    Left = 40
    Height = 9
    Top = 232
    Width = 9
    Brush.Color = clSilver
  end
  object Shape129: TShape
    Left = 40
    Height = 9
    Top = 248
    Width = 9
    Brush.Color = clSilver
  end
  object Shape130: TShape
    Left = 40
    Height = 9
    Top = 264
    Width = 9
    Brush.Color = clSilver
  end
  object Shape131: TShape
    Left = 40
    Height = 9
    Top = 280
    Width = 9
    Brush.Color = clSilver
  end
  object Shape132: TShape
    Left = 40
    Height = 9
    Top = 296
    Width = 9
    Brush.Color = clSilver
  end
  object Shape133: TShape
    Left = 40
    Height = 9
    Top = 312
    Width = 9
    Brush.Color = clSilver
  end
  object Shape134: TShape
    Left = 40
    Height = 9
    Top = 328
    Width = 9
    Brush.Color = clSilver
  end
  object Shape135: TShape
    Left = 40
    Height = 9
    Top = 344
    Width = 9
    Brush.Color = clSilver
  end
  object Shape136: TShape
    Left = 40
    Height = 9
    Top = 360
    Width = 9
    Brush.Color = clSilver
  end
  object Shape137: TShape
    Left = 40
    Height = 9
    Top = 376
    Width = 9
    Brush.Color = clSilver
  end
  object Shape138: TShape
    Left = 40
    Height = 9
    Top = 392
    Width = 9
    Brush.Color = clSilver
  end
  object Shape139: TShape
    Left = 40
    Height = 9
    Top = 408
    Width = 9
    Brush.Color = clSilver
  end
  object Shape140: TShape
    Left = 40
    Height = 9
    Top = 424
    Width = 9
    Brush.Color = clSilver
  end
  object Shape141: TShape
    Left = 40
    Height = 9
    Top = 440
    Width = 9
    Brush.Color = clSilver
  end
  object Shape142: TShape
    Left = 40
    Height = 9
    Top = 456
    Width = 9
    Brush.Color = clSilver
  end
  object Shape143: TShape
    Left = 40
    Height = 9
    Top = 472
    Width = 9
    Brush.Color = clSilver
  end
  object Shape144: TShape
    Left = 40
    Height = 9
    Top = 488
    Width = 9
    Brush.Color = clSilver
  end
  object Label126: TLabel
    Left = 8
    Height = 13
    Top = 120
    Width = 30
    Caption = '10001'
    ParentColor = False
  end
  object Label127: TLabel
    Left = 8
    Height = 13
    Top = 136
    Width = 30
    Caption = '10002'
    ParentColor = False
  end
  object Label128: TLabel
    Left = 8
    Height = 13
    Top = 152
    Width = 30
    Caption = '10003'
    ParentColor = False
  end
  object Label129: TLabel
    Left = 8
    Height = 13
    Top = 168
    Width = 30
    Caption = '10004'
    ParentColor = False
  end
  object Label130: TLabel
    Left = 8
    Height = 13
    Top = 184
    Width = 30
    Caption = '10005'
    ParentColor = False
  end
  object Label131: TLabel
    Left = 8
    Height = 13
    Top = 200
    Width = 30
    Caption = '10006'
    ParentColor = False
  end
  object Label132: TLabel
    Left = 8
    Height = 13
    Top = 216
    Width = 30
    Caption = '10007'
    ParentColor = False
  end
  object Label133: TLabel
    Left = 8
    Height = 13
    Top = 232
    Width = 30
    Caption = '10008'
    ParentColor = False
  end
  object Label134: TLabel
    Left = 8
    Height = 13
    Top = 248
    Width = 30
    Caption = '10009'
    ParentColor = False
  end
  object Label135: TLabel
    Left = 8
    Height = 13
    Top = 264
    Width = 30
    Caption = '10010'
    ParentColor = False
  end
  object Label136: TLabel
    Left = 8
    Height = 13
    Top = 280
    Width = 30
    Caption = '10011'
    ParentColor = False
  end
  object Label137: TLabel
    Left = 8
    Height = 13
    Top = 296
    Width = 30
    Caption = '10012'
    ParentColor = False
  end
  object Label138: TLabel
    Left = 8
    Height = 13
    Top = 312
    Width = 30
    Caption = '10013'
    ParentColor = False
  end
  object Label139: TLabel
    Left = 8
    Height = 13
    Top = 328
    Width = 30
    Caption = '10014'
    ParentColor = False
  end
  object Label140: TLabel
    Left = 8
    Height = 13
    Top = 344
    Width = 30
    Caption = '10015'
    ParentColor = False
  end
  object Label141: TLabel
    Left = 8
    Height = 13
    Top = 360
    Width = 30
    Caption = '10016'
    ParentColor = False
  end
  object Label142: TLabel
    Left = 8
    Height = 13
    Top = 376
    Width = 30
    Caption = '10017'
    ParentColor = False
  end
  object Label143: TLabel
    Left = 8
    Height = 13
    Top = 392
    Width = 30
    Caption = '10018'
    ParentColor = False
  end
  object Label144: TLabel
    Left = 8
    Height = 13
    Top = 408
    Width = 30
    Caption = '10019'
    ParentColor = False
  end
  object Label145: TLabel
    Left = 8
    Height = 13
    Top = 424
    Width = 30
    Caption = '10020'
    ParentColor = False
  end
  object Label146: TLabel
    Left = 8
    Height = 13
    Top = 440
    Width = 30
    Caption = '10021'
    ParentColor = False
  end
  object Label147: TLabel
    Left = 8
    Height = 13
    Top = 456
    Width = 30
    Caption = '10022'
    ParentColor = False
  end
  object Label148: TLabel
    Left = 8
    Height = 13
    Top = 472
    Width = 30
    Caption = '10023'
    ParentColor = False
  end
  object Label149: TLabel
    Left = 8
    Height = 13
    Top = 488
    Width = 30
    Caption = '10024'
    ParentColor = False
  end
  object Shape145: TShape
    Left = 88
    Height = 8
    Top = 121
    Width = 9
    Brush.Color = clSilver
  end
  object Shape146: TShape
    Left = 88
    Height = 9
    Top = 136
    Width = 9
    Brush.Color = clSilver
  end
  object Shape147: TShape
    Left = 88
    Height = 9
    Top = 152
    Width = 9
    Brush.Color = clSilver
  end
  object Shape148: TShape
    Left = 88
    Height = 9
    Top = 168
    Width = 9
    Brush.Color = clSilver
  end
  object Shape149: TShape
    Left = 88
    Height = 9
    Top = 184
    Width = 9
    Brush.Color = clSilver
  end
  object Shape150: TShape
    Left = 88
    Height = 9
    Top = 200
    Width = 9
    Brush.Color = clSilver
  end
  object Shape151: TShape
    Left = 88
    Height = 9
    Top = 216
    Width = 9
    Brush.Color = clSilver
  end
  object Shape152: TShape
    Left = 88
    Height = 9
    Top = 232
    Width = 9
    Brush.Color = clSilver
  end
  object Shape153: TShape
    Left = 88
    Height = 9
    Top = 248
    Width = 9
    Brush.Color = clSilver
  end
  object Shape154: TShape
    Left = 88
    Height = 9
    Top = 264
    Width = 9
    Brush.Color = clSilver
  end
  object Shape155: TShape
    Left = 88
    Height = 9
    Top = 280
    Width = 9
    Brush.Color = clSilver
  end
  object Shape156: TShape
    Left = 88
    Height = 9
    Top = 296
    Width = 9
    Brush.Color = clSilver
  end
  object Shape157: TShape
    Left = 88
    Height = 9
    Top = 312
    Width = 9
    Brush.Color = clSilver
  end
  object Shape158: TShape
    Left = 88
    Height = 9
    Top = 328
    Width = 9
    Brush.Color = clSilver
  end
  object Shape159: TShape
    Left = 88
    Height = 9
    Top = 344
    Width = 9
    Brush.Color = clSilver
  end
  object Shape160: TShape
    Left = 88
    Height = 9
    Top = 360
    Width = 9
    Brush.Color = clSilver
  end
  object Shape161: TShape
    Left = 88
    Height = 9
    Top = 376
    Width = 9
    Brush.Color = clSilver
  end
  object Shape162: TShape
    Left = 88
    Height = 9
    Top = 392
    Width = 9
    Brush.Color = clSilver
  end
  object Shape163: TShape
    Left = 88
    Height = 9
    Top = 408
    Width = 9
    Brush.Color = clSilver
  end
  object Shape164: TShape
    Left = 88
    Height = 9
    Top = 424
    Width = 9
    Brush.Color = clSilver
  end
  object Shape165: TShape
    Left = 88
    Height = 9
    Top = 440
    Width = 9
    Brush.Color = clSilver
  end
  object Shape166: TShape
    Left = 88
    Height = 9
    Top = 456
    Width = 9
    Brush.Color = clSilver
  end
  object Shape167: TShape
    Left = 88
    Height = 9
    Top = 472
    Width = 9
    Brush.Color = clSilver
  end
  object Shape168: TShape
    Left = 88
    Height = 9
    Top = 488
    Width = 9
    Brush.Color = clSilver
  end
  object Label150: TLabel
    Left = 56
    Height = 13
    Top = 120
    Width = 30
    Caption = '00025'
    ParentColor = False
  end
  object Label151: TLabel
    Left = 56
    Height = 13
    Top = 136
    Width = 30
    Caption = '00026'
    ParentColor = False
  end
  object Label152: TLabel
    Left = 56
    Height = 13
    Top = 152
    Width = 30
    Caption = '00027'
    ParentColor = False
  end
  object Label153: TLabel
    Left = 56
    Height = 13
    Top = 168
    Width = 30
    Caption = '00028'
    ParentColor = False
  end
  object Label154: TLabel
    Left = 56
    Height = 13
    Top = 184
    Width = 30
    Caption = '00029'
    ParentColor = False
  end
  object Label155: TLabel
    Left = 56
    Height = 13
    Top = 200
    Width = 30
    Caption = '00030'
    ParentColor = False
  end
  object Label156: TLabel
    Left = 56
    Height = 13
    Top = 216
    Width = 30
    Caption = '00031'
    ParentColor = False
  end
  object Label157: TLabel
    Left = 56
    Height = 13
    Top = 232
    Width = 30
    Caption = '00032'
    ParentColor = False
  end
  object Label158: TLabel
    Left = 56
    Height = 13
    Top = 248
    Width = 30
    Caption = '00033'
    ParentColor = False
  end
  object Label159: TLabel
    Left = 56
    Height = 13
    Top = 264
    Width = 30
    Caption = '00034'
    ParentColor = False
  end
  object Label160: TLabel
    Left = 56
    Height = 13
    Top = 280
    Width = 30
    Caption = '00035'
    ParentColor = False
  end
  object Label161: TLabel
    Left = 56
    Height = 13
    Top = 296
    Width = 30
    Caption = '00036'
    ParentColor = False
  end
  object Label162: TLabel
    Left = 56
    Height = 13
    Top = 312
    Width = 30
    Caption = '00037'
    ParentColor = False
  end
  object Label163: TLabel
    Left = 56
    Height = 13
    Top = 328
    Width = 30
    Caption = '00038'
    ParentColor = False
  end
  object Label164: TLabel
    Left = 56
    Height = 13
    Top = 344
    Width = 30
    Caption = '00039'
    ParentColor = False
  end
  object Label165: TLabel
    Left = 56
    Height = 13
    Top = 360
    Width = 30
    Caption = '00040'
    ParentColor = False
  end
  object Label166: TLabel
    Left = 56
    Height = 13
    Top = 376
    Width = 30
    Caption = '00041'
    ParentColor = False
  end
  object Label167: TLabel
    Left = 56
    Height = 13
    Top = 392
    Width = 30
    Caption = '00042'
    ParentColor = False
  end
  object Label168: TLabel
    Left = 56
    Height = 13
    Top = 408
    Width = 30
    Caption = '00043'
    ParentColor = False
  end
  object Label169: TLabel
    Left = 56
    Height = 13
    Top = 424
    Width = 30
    Caption = '00044'
    ParentColor = False
  end
  object Label170: TLabel
    Left = 56
    Height = 13
    Top = 440
    Width = 30
    Caption = '00045'
    ParentColor = False
  end
  object Label171: TLabel
    Left = 56
    Height = 13
    Top = 456
    Width = 30
    Caption = '00046'
    ParentColor = False
  end
  object Label172: TLabel
    Left = 56
    Height = 13
    Top = 472
    Width = 30
    Caption = '00047'
    ParentColor = False
  end
  object Label173: TLabel
    Left = 56
    Height = 13
    Top = 488
    Width = 30
    Caption = '00048'
    ParentColor = False
  end
  object Shape169: TShape
    Left = 136
    Height = 9
    Top = 120
    Width = 9
    Brush.Color = clSilver
  end
  object Shape170: TShape
    Left = 136
    Height = 9
    Top = 136
    Width = 9
    Brush.Color = clSilver
  end
  object Shape171: TShape
    Left = 136
    Height = 9
    Top = 152
    Width = 9
    Brush.Color = clSilver
  end
  object Shape172: TShape
    Left = 136
    Height = 9
    Top = 168
    Width = 9
    Brush.Color = clSilver
  end
  object Shape173: TShape
    Left = 136
    Height = 9
    Top = 184
    Width = 9
    Brush.Color = clSilver
  end
  object Shape174: TShape
    Left = 136
    Height = 9
    Top = 200
    Width = 9
    Brush.Color = clSilver
  end
  object Shape175: TShape
    Left = 136
    Height = 9
    Top = 216
    Width = 9
    Brush.Color = clSilver
  end
  object Shape176: TShape
    Left = 136
    Height = 9
    Top = 232
    Width = 9
    Brush.Color = clSilver
  end
  object Shape177: TShape
    Left = 136
    Height = 9
    Top = 248
    Width = 9
    Brush.Color = clSilver
  end
  object Shape178: TShape
    Left = 136
    Height = 9
    Top = 264
    Width = 9
    Brush.Color = clSilver
  end
  object Shape179: TShape
    Left = 136
    Height = 9
    Top = 280
    Width = 9
    Brush.Color = clSilver
  end
  object Shape180: TShape
    Left = 136
    Height = 9
    Top = 296
    Width = 9
    Brush.Color = clSilver
  end
  object Shape181: TShape
    Left = 136
    Height = 9
    Top = 312
    Width = 9
    Brush.Color = clSilver
  end
  object Shape182: TShape
    Left = 136
    Height = 9
    Top = 328
    Width = 9
    Brush.Color = clSilver
  end
  object Shape183: TShape
    Left = 136
    Height = 9
    Top = 344
    Width = 9
    Brush.Color = clSilver
  end
  object Shape184: TShape
    Left = 136
    Height = 9
    Top = 360
    Width = 9
    Brush.Color = clSilver
  end
  object Shape185: TShape
    Left = 136
    Height = 9
    Top = 376
    Width = 9
    Brush.Color = clSilver
  end
  object Shape186: TShape
    Left = 136
    Height = 9
    Top = 392
    Width = 9
    Brush.Color = clSilver
  end
  object Shape187: TShape
    Left = 136
    Height = 9
    Top = 408
    Width = 9
    Brush.Color = clSilver
  end
  object Shape188: TShape
    Left = 136
    Height = 9
    Top = 424
    Width = 9
    Brush.Color = clSilver
  end
  object Shape189: TShape
    Left = 136
    Height = 9
    Top = 440
    Width = 9
    Brush.Color = clSilver
  end
  object Shape190: TShape
    Left = 136
    Height = 9
    Top = 456
    Width = 9
    Brush.Color = clSilver
  end
  object Shape191: TShape
    Left = 136
    Height = 9
    Top = 472
    Width = 9
    Brush.Color = clSilver
  end
  object Shape192: TShape
    Left = 136
    Height = 9
    Top = 488
    Width = 9
    Brush.Color = clSilver
  end
  object Label174: TLabel
    Left = 104
    Height = 13
    Top = 120
    Width = 30
    Caption = '00049'
    ParentColor = False
  end
  object Label175: TLabel
    Left = 104
    Height = 13
    Top = 136
    Width = 30
    Caption = '00050'
    ParentColor = False
  end
  object Label176: TLabel
    Left = 104
    Height = 13
    Top = 152
    Width = 30
    Caption = '00051'
    ParentColor = False
  end
  object Label177: TLabel
    Left = 104
    Height = 13
    Top = 168
    Width = 30
    Caption = '00052'
    ParentColor = False
  end
  object Label178: TLabel
    Left = 104
    Height = 13
    Top = 184
    Width = 30
    Caption = '00053'
    ParentColor = False
  end
  object Label179: TLabel
    Left = 104
    Height = 13
    Top = 200
    Width = 30
    Caption = '00054'
    ParentColor = False
  end
  object Label180: TLabel
    Left = 104
    Height = 13
    Top = 216
    Width = 30
    Caption = '00055'
    ParentColor = False
  end
  object Label181: TLabel
    Left = 104
    Height = 13
    Top = 232
    Width = 30
    Caption = '00056'
    ParentColor = False
  end
  object Label182: TLabel
    Left = 104
    Height = 13
    Top = 248
    Width = 30
    Caption = '00057'
    ParentColor = False
  end
  object Label183: TLabel
    Left = 104
    Height = 13
    Top = 264
    Width = 30
    Caption = '00058'
    ParentColor = False
  end
  object Label184: TLabel
    Left = 104
    Height = 13
    Top = 280
    Width = 30
    Caption = '00059'
    ParentColor = False
  end
  object Label185: TLabel
    Left = 104
    Height = 13
    Top = 296
    Width = 30
    Caption = '00060'
    ParentColor = False
  end
  object Label186: TLabel
    Left = 104
    Height = 13
    Top = 312
    Width = 30
    Caption = '00061'
    ParentColor = False
  end
  object Label187: TLabel
    Left = 104
    Height = 13
    Top = 328
    Width = 30
    Caption = '00062'
    ParentColor = False
  end
  object Label188: TLabel
    Left = 104
    Height = 13
    Top = 344
    Width = 30
    Caption = '00063'
    ParentColor = False
  end
  object Label189: TLabel
    Left = 104
    Height = 13
    Top = 360
    Width = 30
    Caption = '00064'
    ParentColor = False
  end
  object Label190: TLabel
    Left = 104
    Height = 13
    Top = 376
    Width = 30
    Caption = '00065'
    ParentColor = False
  end
  object Label191: TLabel
    Left = 104
    Height = 13
    Top = 392
    Width = 30
    Caption = '00066'
    ParentColor = False
  end
  object Label192: TLabel
    Left = 104
    Height = 13
    Top = 408
    Width = 30
    Caption = '00067'
    ParentColor = False
  end
  object Label193: TLabel
    Left = 104
    Height = 13
    Top = 424
    Width = 30
    Caption = '00068'
    ParentColor = False
  end
  object Label194: TLabel
    Left = 104
    Height = 13
    Top = 440
    Width = 30
    Caption = '00069'
    ParentColor = False
  end
  object Label195: TLabel
    Left = 104
    Height = 13
    Top = 456
    Width = 30
    Caption = '00070'
    ParentColor = False
  end
  object Label196: TLabel
    Left = 104
    Height = 13
    Top = 472
    Width = 30
    Caption = '00071'
    ParentColor = False
  end
  object Label197: TLabel
    Left = 104
    Height = 13
    Top = 488
    Width = 30
    Caption = '00072'
    ParentColor = False
  end
  object Shape193: TShape
    Left = 184
    Height = 8
    Top = 121
    Width = 9
    Brush.Color = clSilver
  end
  object Shape194: TShape
    Left = 184
    Height = 9
    Top = 136
    Width = 9
    Brush.Color = clSilver
  end
  object Shape195: TShape
    Left = 184
    Height = 9
    Top = 152
    Width = 9
    Brush.Color = clSilver
  end
  object Shape196: TShape
    Left = 184
    Height = 9
    Top = 168
    Width = 9
    Brush.Color = clSilver
  end
  object Shape197: TShape
    Left = 184
    Height = 9
    Top = 184
    Width = 9
    Brush.Color = clSilver
  end
  object Shape198: TShape
    Left = 184
    Height = 9
    Top = 200
    Width = 9
    Brush.Color = clSilver
  end
  object Shape199: TShape
    Left = 184
    Height = 9
    Top = 216
    Width = 9
    Brush.Color = clSilver
  end
  object Shape200: TShape
    Left = 184
    Height = 9
    Top = 232
    Width = 9
    Brush.Color = clSilver
  end
  object Shape201: TShape
    Left = 184
    Height = 9
    Top = 248
    Width = 9
    Brush.Color = clSilver
  end
  object Shape202: TShape
    Left = 184
    Height = 9
    Top = 264
    Width = 9
    Brush.Color = clSilver
  end
  object Shape203: TShape
    Left = 184
    Height = 9
    Top = 280
    Width = 9
    Brush.Color = clSilver
  end
  object Shape204: TShape
    Left = 184
    Height = 9
    Top = 296
    Width = 9
    Brush.Color = clSilver
  end
  object Shape205: TShape
    Left = 184
    Height = 9
    Top = 312
    Width = 9
    Brush.Color = clSilver
  end
  object Shape206: TShape
    Left = 184
    Height = 9
    Top = 328
    Width = 9
    Brush.Color = clSilver
  end
  object Shape207: TShape
    Left = 184
    Height = 9
    Top = 344
    Width = 9
    Brush.Color = clSilver
  end
  object Shape208: TShape
    Left = 184
    Height = 9
    Top = 360
    Width = 9
    Brush.Color = clSilver
  end
  object Shape209: TShape
    Left = 184
    Height = 9
    Top = 376
    Width = 9
    Brush.Color = clSilver
  end
  object Shape210: TShape
    Left = 184
    Height = 9
    Top = 392
    Width = 9
    Brush.Color = clSilver
  end
  object Shape211: TShape
    Left = 184
    Height = 9
    Top = 408
    Width = 9
    Brush.Color = clSilver
  end
  object Shape212: TShape
    Left = 184
    Height = 9
    Top = 424
    Width = 9
    Brush.Color = clSilver
  end
  object Shape213: TShape
    Left = 184
    Height = 9
    Top = 440
    Width = 9
    Brush.Color = clSilver
  end
  object Shape214: TShape
    Left = 184
    Height = 9
    Top = 456
    Width = 9
    Brush.Color = clSilver
  end
  object Shape215: TShape
    Left = 184
    Height = 9
    Top = 472
    Width = 9
    Brush.Color = clSilver
  end
  object Shape216: TShape
    Left = 184
    Height = 9
    Top = 488
    Width = 9
    Brush.Color = clSilver
  end
  object Label198: TLabel
    Left = 152
    Height = 13
    Top = 120
    Width = 30
    Caption = '00073'
    ParentColor = False
  end
  object Label199: TLabel
    Left = 152
    Height = 13
    Top = 136
    Width = 30
    Caption = '00074'
    ParentColor = False
  end
  object Label200: TLabel
    Left = 152
    Height = 13
    Top = 152
    Width = 30
    Caption = '00075'
    ParentColor = False
  end
  object Label201: TLabel
    Left = 152
    Height = 13
    Top = 168
    Width = 30
    Caption = '00076'
    ParentColor = False
  end
  object Label202: TLabel
    Left = 152
    Height = 13
    Top = 184
    Width = 30
    Caption = '00077'
    ParentColor = False
  end
  object Label203: TLabel
    Left = 152
    Height = 13
    Top = 200
    Width = 30
    Caption = '00078'
    ParentColor = False
  end
  object Label204: TLabel
    Left = 152
    Height = 13
    Top = 216
    Width = 30
    Caption = '00079'
    ParentColor = False
  end
  object Label205: TLabel
    Left = 152
    Height = 13
    Top = 232
    Width = 30
    Caption = '00080'
    ParentColor = False
  end
  object Label206: TLabel
    Left = 152
    Height = 13
    Top = 248
    Width = 30
    Caption = '00081'
    ParentColor = False
  end
  object Label207: TLabel
    Left = 152
    Height = 13
    Top = 264
    Width = 30
    Caption = '00082'
    ParentColor = False
  end
  object Label208: TLabel
    Left = 152
    Height = 13
    Top = 280
    Width = 30
    Caption = '00083'
    ParentColor = False
  end
  object Label209: TLabel
    Left = 152
    Height = 13
    Top = 296
    Width = 30
    Caption = '00084'
    ParentColor = False
  end
  object Label210: TLabel
    Left = 152
    Height = 13
    Top = 312
    Width = 30
    Caption = '00085'
    ParentColor = False
  end
  object Label211: TLabel
    Left = 152
    Height = 13
    Top = 328
    Width = 30
    Caption = '00086'
    ParentColor = False
  end
  object Label212: TLabel
    Left = 152
    Height = 13
    Top = 344
    Width = 30
    Caption = '00087'
    ParentColor = False
  end
  object Label213: TLabel
    Left = 152
    Height = 13
    Top = 360
    Width = 30
    Caption = '00088'
    ParentColor = False
  end
  object Label214: TLabel
    Left = 152
    Height = 13
    Top = 376
    Width = 30
    Caption = '00089'
    ParentColor = False
  end
  object Label215: TLabel
    Left = 152
    Height = 13
    Top = 392
    Width = 30
    Caption = '00090'
    ParentColor = False
  end
  object Label216: TLabel
    Left = 152
    Height = 13
    Top = 408
    Width = 30
    Caption = '00091'
    ParentColor = False
  end
  object Label217: TLabel
    Left = 152
    Height = 13
    Top = 424
    Width = 30
    Caption = '00092'
    ParentColor = False
  end
  object Label218: TLabel
    Left = 152
    Height = 13
    Top = 440
    Width = 30
    Caption = '00093'
    ParentColor = False
  end
  object Label219: TLabel
    Left = 152
    Height = 13
    Top = 456
    Width = 30
    Caption = '00094'
    ParentColor = False
  end
  object Label220: TLabel
    Left = 152
    Height = 13
    Top = 472
    Width = 30
    Caption = '00095'
    ParentColor = False
  end
  object Label221: TLabel
    Left = 152
    Height = 13
    Top = 488
    Width = 30
    Caption = '00096'
    ParentColor = False
  end
  object Shape217: TShape
    Left = 232
    Height = 8
    Top = 121
    Width = 9
    Brush.Color = clSilver
  end
  object Shape218: TShape
    Left = 232
    Height = 9
    Top = 136
    Width = 9
    Brush.Color = clSilver
  end
  object Shape219: TShape
    Left = 232
    Height = 9
    Top = 152
    Width = 9
    Brush.Color = clSilver
  end
  object Shape220: TShape
    Left = 232
    Height = 9
    Top = 168
    Width = 9
    Brush.Color = clSilver
  end
  object Shape221: TShape
    Left = 232
    Height = 9
    Top = 184
    Width = 9
    Brush.Color = clSilver
  end
  object Shape222: TShape
    Left = 232
    Height = 9
    Top = 200
    Width = 9
    Brush.Color = clSilver
  end
  object Shape223: TShape
    Left = 232
    Height = 9
    Top = 216
    Width = 9
    Brush.Color = clSilver
  end
  object Shape224: TShape
    Left = 232
    Height = 9
    Top = 232
    Width = 9
    Brush.Color = clSilver
  end
  object Shape225: TShape
    Left = 232
    Height = 9
    Top = 248
    Width = 9
    Brush.Color = clSilver
  end
  object Shape226: TShape
    Left = 232
    Height = 9
    Top = 264
    Width = 9
    Brush.Color = clSilver
  end
  object Shape227: TShape
    Left = 232
    Height = 9
    Top = 280
    Width = 9
    Brush.Color = clSilver
  end
  object Shape228: TShape
    Left = 232
    Height = 9
    Top = 296
    Width = 9
    Brush.Color = clSilver
  end
  object Shape229: TShape
    Left = 232
    Height = 9
    Top = 312
    Width = 9
    Brush.Color = clSilver
  end
  object Shape230: TShape
    Left = 232
    Height = 9
    Top = 328
    Width = 9
    Brush.Color = clSilver
  end
  object Shape231: TShape
    Left = 232
    Height = 9
    Top = 344
    Width = 9
    Brush.Color = clSilver
  end
  object Shape232: TShape
    Left = 232
    Height = 9
    Top = 360
    Width = 9
    Brush.Color = clSilver
  end
  object Shape233: TShape
    Left = 232
    Height = 9
    Top = 376
    Width = 9
    Brush.Color = clSilver
  end
  object Shape234: TShape
    Left = 232
    Height = 9
    Top = 392
    Width = 9
    Brush.Color = clSilver
  end
  object Shape235: TShape
    Left = 232
    Height = 9
    Top = 408
    Width = 9
    Brush.Color = clSilver
  end
  object Shape236: TShape
    Left = 232
    Height = 9
    Top = 424
    Width = 9
    Brush.Color = clSilver
  end
  object Shape237: TShape
    Left = 232
    Height = 9
    Top = 440
    Width = 9
    Brush.Color = clSilver
  end
  object Shape238: TShape
    Left = 232
    Height = 9
    Top = 456
    Width = 9
    Brush.Color = clSilver
  end
  object Shape239: TShape
    Left = 232
    Height = 9
    Top = 472
    Width = 9
    Brush.Color = clSilver
  end
  object Shape240: TShape
    Left = 232
    Height = 9
    Top = 488
    Width = 9
    Brush.Color = clSilver
  end
  object Label222: TLabel
    Left = 200
    Height = 13
    Top = 120
    Width = 30
    Caption = '00097'
    ParentColor = False
  end
  object Label223: TLabel
    Left = 200
    Height = 13
    Top = 136
    Width = 30
    Caption = '00098'
    ParentColor = False
  end
  object Label224: TLabel
    Left = 200
    Height = 13
    Top = 152
    Width = 30
    Caption = '00099'
    ParentColor = False
  end
  object Label225: TLabel
    Left = 200
    Height = 13
    Top = 168
    Width = 30
    Caption = '00100'
    ParentColor = False
  end
  object Label226: TLabel
    Left = 200
    Height = 13
    Top = 184
    Width = 30
    Caption = '00101'
    ParentColor = False
  end
  object Label227: TLabel
    Left = 200
    Height = 13
    Top = 200
    Width = 30
    Caption = '00102'
    ParentColor = False
  end
  object Label228: TLabel
    Left = 200
    Height = 13
    Top = 216
    Width = 30
    Caption = '00103'
    ParentColor = False
  end
  object Label229: TLabel
    Left = 200
    Height = 13
    Top = 232
    Width = 30
    Caption = '00104'
    ParentColor = False
  end
  object Label230: TLabel
    Left = 200
    Height = 13
    Top = 248
    Width = 30
    Caption = '00105'
    ParentColor = False
  end
  object Label231: TLabel
    Left = 200
    Height = 13
    Top = 264
    Width = 30
    Caption = '00106'
    ParentColor = False
  end
  object Label232: TLabel
    Left = 200
    Height = 13
    Top = 280
    Width = 30
    Caption = '00107'
    ParentColor = False
  end
  object Label233: TLabel
    Left = 200
    Height = 13
    Top = 296
    Width = 30
    Caption = '00108'
    ParentColor = False
  end
  object Label234: TLabel
    Left = 200
    Height = 13
    Top = 312
    Width = 30
    Caption = '00109'
    ParentColor = False
  end
  object Label235: TLabel
    Left = 200
    Height = 13
    Top = 328
    Width = 30
    Caption = '00110'
    ParentColor = False
  end
  object Label236: TLabel
    Left = 200
    Height = 13
    Top = 344
    Width = 30
    Caption = '00111'
    ParentColor = False
  end
  object Label237: TLabel
    Left = 200
    Height = 13
    Top = 360
    Width = 30
    Caption = '00112'
    ParentColor = False
  end
  object Label238: TLabel
    Left = 200
    Height = 13
    Top = 376
    Width = 30
    Caption = '00113'
    ParentColor = False
  end
  object Label239: TLabel
    Left = 200
    Height = 13
    Top = 392
    Width = 30
    Caption = '00114'
    ParentColor = False
  end
  object Label240: TLabel
    Left = 200
    Height = 13
    Top = 408
    Width = 30
    Caption = '00115'
    ParentColor = False
  end
  object Label241: TLabel
    Left = 200
    Height = 13
    Top = 424
    Width = 30
    Caption = '00116'
    ParentColor = False
  end
  object Label242: TLabel
    Left = 200
    Height = 13
    Top = 440
    Width = 30
    Caption = '00017'
    ParentColor = False
  end
  object Label243: TLabel
    Left = 200
    Height = 13
    Top = 456
    Width = 30
    Caption = '00118'
    ParentColor = False
  end
  object Label244: TLabel
    Left = 200
    Height = 13
    Top = 472
    Width = 30
    Caption = '00119'
    ParentColor = False
  end
  object Label245: TLabel
    Left = 200
    Height = 13
    Top = 488
    Width = 30
    Caption = '00120'
    ParentColor = False
  end
  object Label426: TLabel
    Left = 8
    Height = 16
    Top = 536
    Width = 25
    Caption = '4xxx'
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
  end
  object Label427: TLabel
    Left = 656
    Height = 16
    Top = 536
    Width = 25
    Caption = '0xxx'
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    ParentColor = False
    ParentFont = False
  end
  object Label26: TLabel
    Left = 736
    Height = 13
    Top = 64
    Width = 63
    Caption = 'Таймаут, мс'
    ParentColor = False
  end
  object ComboBox1: TComboBox
    Left = 536
    Height = 21
    Hint = 'СОМ-порт'
    Top = 8
    Width = 81
    DropDownCount = 20
    ItemHeight = 13
    ItemIndex = 0
    Items.Strings = (
      '\\.\COM1'
      '\\.\COM2'
      '\\.\COM3'
      '\\.\COM4'
      '\\.\COM5'
      '\\.\COM6'
      '\\.\COM7'
      '\\.\COM8'
      '\\.\COM9'
      '\\.\COM10'
      '\\.\COM11'
      '\\.\COM12'
      '\\.\COM13'
      '\\.\COM14'
      '\\.\COM15'
      '\\.\COM16'
      '\\.\COM17'
      '\\.\COM18'
      '\\.\COM19'
      '\\.\COM20'
    )
    OnChange = ComboBox1Change
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Text = '\\.\COM1'
  end
  object ComboBox2: TComboBox
    Left = 616
    Height = 21
    Hint = 'Скорость'
    Top = 8
    Width = 57
    DropDownCount = 14
    ItemHeight = 13
    ItemIndex = 4
    Items.Strings = (
      '115200'
      '57600'
      '38400'
      '19200'
      '9600'
      '4800'
      '2400'
      '1200'
      '300'
    )
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = '9600'
  end
  object ComboBox3: TComboBox
    Left = 672
    Height = 21
    Hint = 'Контроль четности'
    Top = 8
    Width = 33
    ItemHeight = 13
    ItemIndex = 2
    Items.Strings = (
      'E'
      'O'
      'N'
      'M'
      'S'
    )
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = 'N'
  end
  object ComboBox4: TComboBox
    Left = 704
    Height = 21
    Hint = 'Количество бит данных'
    Top = 8
    Width = 33
    ItemHeight = 13
    ItemIndex = 0
    Items.Strings = (
      '8'
      '7'
    )
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Text = '8'
  end
  object ComboBox5: TComboBox
    Left = 736
    Height = 21
    Hint = 'Количество стоповых бит'
    Top = 8
    Width = 33
    ItemHeight = 13
    ItemIndex = 0
    Items.Strings = (
      '1'
      '2'
    )
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Text = '1'
  end
  object SpinEdit300: TSpinEdit
    Left = 144
    Height = 21
    Top = 8
    Width = 65
    MaxValue = 255
    MinValue = 1
    TabOrder = 5
    Value = 1
  end
  object SpinEdit301: TSpinEdit
    Left = 344
    Height = 21
    Hint = 'регистры хранения (Holding Registers)  '#13#10'или регистры ввода (Input Registers)'
    Top = 40
    Width = 65
    MaxValue = 999999
    MinValue = 1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    Value = 1
  end
  object SpinEdit302: TSpinEdit
    Left = 344
    Height = 21
    Top = 64
    Width = 65
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    MaxValue = 120
    MinValue = 1
    ParentFont = False
    TabOrder = 7
    Value = 120
  end
  object SpinEdit104: TSpinEdit
    Left = 144
    Height = 21
    Hint = 'регистры дискретных входов '#13#10'(Discrete Inputs)  '
    Top = 40
    Width = 65
    MaxValue = 999999
    MinValue = 1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    Value = 1
  end
  object SpinEdit105: TSpinEdit
    Left = 144
    Height = 21
    Top = 64
    Width = 65
    MaxValue = 0
    TabOrder = 9
    Value = 120
  end
  object SpinEdit106: TSpinEdit
    Left = 664
    Height = 21
    Hint = 'регистры флагов '#13#10'(Coil Status)   '
    Top = 40
    Width = 65
    MaxValue = 999999
    MinValue = 1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    Value = 1
  end
  object SpinEdit107: TSpinEdit
    Left = 664
    Height = 21
    Top = 64
    Width = 57
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    MaxValue = 120
    MinValue = 1
    ParentFont = False
    TabOrder = 11
    Value = 120
  end
  object CheckBox1: TCheckBox
    Left = 392
    Height = 19
    Top = 88
    Width = 52
    Caption = 'Опрос'
    Checked = True
    State = cbChecked
    TabOrder = 12
  end
  object Button1: TButton
    Left = 232
    Height = 25
    Top = 536
    Width = 57
    Caption = 'Запись'
    OnClick = Button1Click
    TabOrder = 13
  end
  object CheckBox3: TCheckBox
    Left = 664
    Height = 19
    Top = 88
    Width = 52
    Caption = 'Опрос'
    Checked = True
    State = cbChecked
    TabOrder = 14
  end
  object StaticText1: TStaticText
    Left = 296
    Height = 17
    Top = 120
    Width = 65
    BorderStyle = sbsSunken
    OnClick = StaticText1Click
    TabOrder = 15
  end
  object StaticText2: TStaticText
    Left = 296
    Height = 17
    Top = 136
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 16
  end
  object StaticText3: TStaticText
    Left = 296
    Height = 17
    Top = 152
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 17
  end
  object StaticText4: TStaticText
    Left = 296
    Height = 17
    Top = 168
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 18
  end
  object StaticText5: TStaticText
    Left = 296
    Height = 17
    Top = 184
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 19
  end
  object StaticText6: TStaticText
    Left = 296
    Height = 17
    Top = 200
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 20
  end
  object StaticText7: TStaticText
    Left = 296
    Height = 17
    Top = 216
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 21
  end
  object StaticText8: TStaticText
    Left = 296
    Height = 17
    Top = 232
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 22
  end
  object StaticText9: TStaticText
    Left = 296
    Height = 17
    Top = 248
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 23
  end
  object StaticText10: TStaticText
    Left = 296
    Height = 17
    Top = 264
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 24
  end
  object StaticText11: TStaticText
    Left = 296
    Height = 17
    Top = 280
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 25
  end
  object StaticText12: TStaticText
    Left = 296
    Height = 17
    Top = 296
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 26
  end
  object StaticText13: TStaticText
    Left = 296
    Height = 17
    Top = 312
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 27
  end
  object StaticText14: TStaticText
    Left = 296
    Height = 17
    Top = 328
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 28
  end
  object StaticText15: TStaticText
    Left = 296
    Height = 17
    Top = 344
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 29
  end
  object StaticText16: TStaticText
    Left = 296
    Height = 17
    Top = 360
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 30
  end
  object StaticText17: TStaticText
    Left = 296
    Height = 17
    Top = 376
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 31
  end
  object StaticText18: TStaticText
    Left = 296
    Height = 17
    Top = 392
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 32
  end
  object StaticText19: TStaticText
    Left = 296
    Height = 17
    Top = 408
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 33
  end
  object StaticText20: TStaticText
    Left = 296
    Height = 17
    Top = 424
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 34
  end
  object StaticText21: TStaticText
    Left = 296
    Height = 17
    Top = 440
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 35
  end
  object StaticText22: TStaticText
    Left = 296
    Height = 17
    Top = 456
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 36
  end
  object StaticText23: TStaticText
    Left = 296
    Height = 17
    Top = 472
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 37
  end
  object StaticText24: TStaticText
    Left = 296
    Height = 17
    Top = 488
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 38
  end
  object StaticText25: TStaticText
    Left = 296
    Height = 17
    Top = 504
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 39
  end
  object StaticText26: TStaticText
    Left = 368
    Height = 17
    Top = 120
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 40
  end
  object StaticText27: TStaticText
    Left = 368
    Height = 17
    Top = 136
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 41
  end
  object StaticText28: TStaticText
    Left = 368
    Height = 17
    Top = 152
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 42
  end
  object StaticText29: TStaticText
    Left = 368
    Height = 17
    Top = 168
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 43
  end
  object StaticText30: TStaticText
    Left = 368
    Height = 17
    Top = 184
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 44
  end
  object StaticText31: TStaticText
    Left = 368
    Height = 17
    Top = 200
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 45
  end
  object StaticText32: TStaticText
    Left = 368
    Height = 17
    Top = 216
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 46
  end
  object StaticText33: TStaticText
    Left = 368
    Height = 17
    Top = 232
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 47
  end
  object StaticText34: TStaticText
    Left = 368
    Height = 17
    Top = 248
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 48
  end
  object StaticText35: TStaticText
    Left = 368
    Height = 17
    Top = 264
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 49
  end
  object StaticText36: TStaticText
    Left = 368
    Height = 17
    Top = 280
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 50
  end
  object StaticText37: TStaticText
    Left = 368
    Height = 17
    Top = 296
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 51
  end
  object StaticText38: TStaticText
    Left = 368
    Height = 17
    Top = 312
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 52
  end
  object StaticText39: TStaticText
    Left = 368
    Height = 17
    Top = 328
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 53
  end
  object StaticText40: TStaticText
    Left = 368
    Height = 17
    Top = 344
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 54
  end
  object StaticText41: TStaticText
    Left = 368
    Height = 17
    Top = 360
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 55
  end
  object StaticText42: TStaticText
    Left = 368
    Height = 17
    Top = 376
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 56
  end
  object StaticText43: TStaticText
    Left = 368
    Height = 17
    Top = 392
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 57
  end
  object StaticText44: TStaticText
    Left = 368
    Height = 17
    Top = 408
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 58
  end
  object StaticText45: TStaticText
    Left = 368
    Height = 17
    Top = 424
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 59
  end
  object StaticText46: TStaticText
    Left = 368
    Height = 17
    Top = 440
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 60
  end
  object StaticText47: TStaticText
    Left = 368
    Height = 17
    Top = 456
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 61
  end
  object StaticText48: TStaticText
    Left = 368
    Height = 17
    Top = 472
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 62
  end
  object StaticText49: TStaticText
    Left = 368
    Height = 17
    Top = 488
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 63
  end
  object StaticText50: TStaticText
    Left = 368
    Height = 17
    Top = 504
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 64
  end
  object StaticText51: TStaticText
    Left = 440
    Height = 17
    Top = 120
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 65
  end
  object StaticText52: TStaticText
    Left = 440
    Height = 17
    Top = 136
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 66
  end
  object StaticText53: TStaticText
    Left = 440
    Height = 17
    Top = 152
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 67
  end
  object StaticText54: TStaticText
    Left = 440
    Height = 17
    Top = 168
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 68
  end
  object StaticText55: TStaticText
    Left = 440
    Height = 17
    Top = 184
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 69
  end
  object StaticText56: TStaticText
    Left = 440
    Height = 17
    Top = 200
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 70
  end
  object StaticText57: TStaticText
    Left = 440
    Height = 17
    Top = 216
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 71
  end
  object StaticText58: TStaticText
    Left = 440
    Height = 17
    Top = 232
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 72
  end
  object StaticText59: TStaticText
    Left = 440
    Height = 17
    Top = 248
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 73
  end
  object StaticText60: TStaticText
    Left = 440
    Height = 17
    Top = 264
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 74
  end
  object StaticText61: TStaticText
    Left = 440
    Height = 17
    Top = 280
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 75
  end
  object StaticText62: TStaticText
    Left = 440
    Height = 17
    Top = 296
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 76
  end
  object StaticText63: TStaticText
    Left = 440
    Height = 17
    Top = 312
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 77
  end
  object StaticText64: TStaticText
    Left = 440
    Height = 17
    Top = 328
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 78
  end
  object StaticText65: TStaticText
    Left = 440
    Height = 17
    Top = 344
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 79
  end
  object StaticText66: TStaticText
    Left = 440
    Height = 17
    Top = 360
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 80
  end
  object StaticText67: TStaticText
    Left = 440
    Height = 17
    Top = 376
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 81
  end
  object StaticText68: TStaticText
    Left = 440
    Height = 17
    Top = 392
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 82
  end
  object StaticText69: TStaticText
    Left = 440
    Height = 17
    Top = 408
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 83
  end
  object StaticText70: TStaticText
    Left = 440
    Height = 17
    Top = 424
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 84
  end
  object StaticText71: TStaticText
    Left = 440
    Height = 17
    Top = 440
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 85
  end
  object StaticText72: TStaticText
    Left = 440
    Height = 17
    Top = 456
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 86
  end
  object StaticText73: TStaticText
    Left = 440
    Height = 17
    Top = 472
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 87
  end
  object StaticText74: TStaticText
    Left = 440
    Height = 17
    Top = 488
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 88
  end
  object StaticText75: TStaticText
    Left = 440
    Height = 17
    Top = 504
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 89
  end
  object StaticText76: TStaticText
    Left = 512
    Height = 17
    Top = 120
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 90
  end
  object StaticText77: TStaticText
    Left = 512
    Height = 17
    Top = 136
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 91
  end
  object StaticText78: TStaticText
    Left = 512
    Height = 17
    Top = 152
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 92
  end
  object StaticText79: TStaticText
    Left = 512
    Height = 17
    Top = 168
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 93
  end
  object StaticText80: TStaticText
    Left = 512
    Height = 17
    Top = 184
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 94
  end
  object StaticText81: TStaticText
    Left = 512
    Height = 17
    Top = 200
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 95
  end
  object StaticText82: TStaticText
    Left = 512
    Height = 17
    Top = 216
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 96
  end
  object StaticText83: TStaticText
    Left = 512
    Height = 17
    Top = 232
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 97
  end
  object StaticText84: TStaticText
    Left = 512
    Height = 17
    Top = 248
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 98
  end
  object StaticText85: TStaticText
    Left = 512
    Height = 17
    Top = 264
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 99
  end
  object StaticText86: TStaticText
    Left = 512
    Height = 17
    Top = 280
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 100
  end
  object StaticText87: TStaticText
    Left = 512
    Height = 17
    Top = 296
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 101
  end
  object StaticText88: TStaticText
    Left = 512
    Height = 17
    Top = 312
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 102
  end
  object StaticText89: TStaticText
    Left = 512
    Height = 17
    Top = 328
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 103
  end
  object StaticText90: TStaticText
    Left = 512
    Height = 17
    Top = 344
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 104
  end
  object StaticText91: TStaticText
    Left = 512
    Height = 17
    Top = 360
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 105
  end
  object StaticText92: TStaticText
    Left = 512
    Height = 17
    Top = 376
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 106
  end
  object StaticText93: TStaticText
    Left = 512
    Height = 17
    Top = 392
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 107
  end
  object StaticText94: TStaticText
    Left = 512
    Height = 17
    Top = 408
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 108
  end
  object StaticText95: TStaticText
    Left = 512
    Height = 17
    Top = 424
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 109
  end
  object StaticText96: TStaticText
    Left = 512
    Height = 17
    Top = 440
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 110
  end
  object StaticText97: TStaticText
    Left = 512
    Height = 17
    Top = 456
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 111
  end
  object StaticText98: TStaticText
    Left = 512
    Height = 17
    Top = 472
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 112
  end
  object StaticText99: TStaticText
    Left = 512
    Height = 17
    Top = 488
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 113
  end
  object StaticText100: TStaticText
    Left = 512
    Height = 17
    Top = 504
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 114
  end
  object StaticText101: TStaticText
    Left = 584
    Height = 17
    Top = 120
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 115
  end
  object StaticText102: TStaticText
    Left = 584
    Height = 17
    Top = 136
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 116
  end
  object StaticText103: TStaticText
    Left = 584
    Height = 17
    Top = 152
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 117
  end
  object StaticText104: TStaticText
    Left = 584
    Height = 17
    Top = 168
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 118
  end
  object StaticText105: TStaticText
    Left = 584
    Height = 17
    Top = 184
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 119
  end
  object StaticText106: TStaticText
    Left = 584
    Height = 17
    Top = 200
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 120
  end
  object StaticText107: TStaticText
    Left = 584
    Height = 17
    Top = 216
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 121
  end
  object StaticText108: TStaticText
    Left = 584
    Height = 17
    Top = 232
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 122
  end
  object StaticText109: TStaticText
    Left = 584
    Height = 17
    Top = 248
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 123
  end
  object StaticText110: TStaticText
    Left = 584
    Height = 17
    Top = 264
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 124
  end
  object StaticText111: TStaticText
    Left = 584
    Height = 17
    Top = 280
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 125
  end
  object StaticText112: TStaticText
    Left = 584
    Height = 17
    Top = 296
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 126
  end
  object StaticText113: TStaticText
    Left = 584
    Height = 17
    Top = 312
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 127
  end
  object StaticText114: TStaticText
    Left = 584
    Height = 17
    Top = 328
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 128
  end
  object StaticText115: TStaticText
    Left = 584
    Height = 17
    Top = 344
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 129
  end
  object StaticText116: TStaticText
    Left = 584
    Height = 17
    Top = 360
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 130
  end
  object StaticText117: TStaticText
    Left = 584
    Height = 17
    Top = 376
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 131
  end
  object StaticText118: TStaticText
    Left = 584
    Height = 17
    Top = 392
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 132
  end
  object StaticText119: TStaticText
    Left = 584
    Height = 17
    Top = 408
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 133
  end
  object StaticText120: TStaticText
    Left = 584
    Height = 17
    Top = 424
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 134
  end
  object StaticText121: TStaticText
    Left = 584
    Height = 17
    Top = 440
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 135
  end
  object StaticText122: TStaticText
    Left = 584
    Height = 17
    Top = 456
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 136
  end
  object StaticText123: TStaticText
    Left = 584
    Height = 17
    Top = 472
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 137
  end
  object StaticText124: TStaticText
    Left = 584
    Height = 17
    Top = 488
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 138
  end
  object StaticText125: TStaticText
    Left = 584
    Height = 17
    Top = 504
    Width = 65
    BorderStyle = sbsSunken
    TabOrder = 139
  end
  object CheckBox2: TCheckBox
    Left = 144
    Height = 19
    Top = 88
    Width = 52
    Caption = 'Опрос'
    Checked = True
    State = cbChecked
    TabOrder = 140
  end
  object SpinEdit1: TSpinEdit
    Left = 35
    Height = 21
    Top = 536
    Width = 73
    MaxValue = 0
    TabOrder = 141
    Value = 1
  end
  object Button2: TButton
    Left = 800
    Height = 25
    Top = 535
    Width = 72
    Caption = 'Запись'
    OnClick = Button2Click
    TabOrder = 142
  end
  object SpinEdit3: TSpinEdit
    Left = 688
    Height = 21
    Top = 536
    Width = 73
    MaxValue = 999999
    MinValue = 1
    TabOrder = 143
    Value = 10
  end
  object CheckBox4: TCheckBox
    Left = 768
    Height = 19
    Top = 536
    Width = 26
    Caption = '  '
    Checked = True
    State = cbChecked
    TabOrder = 144
  end
  object Timeout_ms: TSpinEdit
    Left = 736
    Height = 21
    Top = 80
    Width = 73
    MaxValue = 100000
    OnChange = Timeout_msChange
    TabOrder = 145
    Value = 20
  end
  object ZapisObmen: TCheckBox
    Left = 216
    Height = 19
    Top = 88
    Width = 136
    Caption = 'Запись обмена в файл'
    TabOrder = 146
  end
  object RadioGroup1: TRadioGroup
    Left = 416
    Height = 57
    Top = 32
    Width = 113
    AutoFill = True
    Caption = 'Тип'
    ChildSizing.LeftRightSpacing = 6
    ChildSizing.EnlargeHorizontal = crsHomogenousChildResize
    ChildSizing.EnlargeVertical = crsHomogenousChildResize
    ChildSizing.ShrinkHorizontal = crsScaleChilds
    ChildSizing.ShrinkVertical = crsScaleChilds
    ChildSizing.Layout = cclLeftToRightThenTopToBottom
    ChildSizing.ControlsPerLine = 1
    TabOrder = 147
  end
  object RB_3xxx_f_4: TRadioButton
    Left = 424
    Height = 19
    Top = 66
    Width = 87
    Caption = '3хххх (ф-я 04)'
    TabOrder = 148
  end
  object RB_4xxx_f_3: TRadioButton
    Left = 424
    Height = 19
    Top = 48
    Width = 87
    Caption = '4хххх (ф-я 03)'
    TabOrder = 149
  end
  object RadioGroup2: TRadioGroup
    Left = 896
    Height = 169
    Top = 152
    Width = 137
    AutoFill = True
    Caption = 'Тип вещественного'
    ChildSizing.LeftRightSpacing = 6
    ChildSizing.EnlargeHorizontal = crsHomogenousChildResize
    ChildSizing.EnlargeVertical = crsHomogenousChildResize
    ChildSizing.ShrinkHorizontal = crsScaleChilds
    ChildSizing.ShrinkVertical = crsScaleChilds
    ChildSizing.Layout = cclLeftToRightThenTopToBottom
    ChildSizing.ControlsPerLine = 1
    TabOrder = 150
  end
  object RBUINT16: TRadioButton
    Left = 904
    Height = 19
    Top = 168
    Width = 58
    Caption = 'UINT16'
    Checked = True
    OnClick = RBUINT16Click
    TabOrder = 151
    TabStop = True
  end
  object RBINT16: TRadioButton
    Left = 904
    Height = 19
    Top = 192
    Width = 50
    Caption = 'INT16'
    OnClick = RBINT16Click
    TabOrder = 152
  end
  object RBUINT32: TRadioButton
    Left = 904
    Height = 19
    Top = 216
    Width = 58
    Caption = 'UINT32'
    OnClick = RBUINT32Click
    TabOrder = 153
  end
  object RBINT32: TRadioButton
    Left = 904
    Height = 19
    Top = 240
    Width = 50
    Caption = 'INT32'
    OnClick = RBINT32Click
    TabOrder = 154
  end
  object RB16O: TRadioButton
    Left = 904
    Height = 19
    Top = 264
    Width = 40
    Caption = '16O'
    OnClick = RB16OClick
    TabOrder = 155
  end
  object RBFLOAT32: TRadioButton
    Left = 904
    Height = 19
    Top = 288
    Width = 66
    Caption = 'FLOAT32'
    OnClick = RBFLOAT32Click
    TabOrder = 156
  end
  object E_Write_4xxxx: TEdit
    Left = 111
    Height = 21
    Top = 536
    Width = 113
    OnKeyPress = E_Write_4xxxxKeyPress
    TabOrder = 157
    Text = '0'
  end
  object CB_TCP_IP: TCheckBox
    Left = 832
    Height = 19
    Top = 8
    Width = 143
    Caption = 'Подключение по TCP/IP'
    OnChange = CB_TCP_IPChange
    TabOrder = 159
  end
  object Label29: TLabel
    Left = 992
    Height = 13
    Top = 11
    Width = 61
    Caption = 'Соединение'
    ParentColor = False
  end
  object Shp_connect_tcp: TShape
    Left = 1064
    Height = 19
    Top = 8
    Width = 23
    Shape = stCircle
  end
  object RadioGroup3: TRadioGroup
    Left = 24
    Height = 57
    Top = 568
    Width = 185
    AutoFill = True
    Caption = 'Функция записи'
    ChildSizing.LeftRightSpacing = 6
    ChildSizing.EnlargeHorizontal = crsHomogenousChildResize
    ChildSizing.EnlargeVertical = crsHomogenousChildResize
    ChildSizing.ShrinkHorizontal = crsScaleChilds
    ChildSizing.ShrinkVertical = crsScaleChilds
    ChildSizing.Layout = cclLeftToRightThenTopToBottom
    ChildSizing.ControlsPerLine = 1
    ClientHeight = 39
    ClientWidth = 181
    TabOrder = 160
    object RB_Fn10: TRadioButton
      Left = 6
      Height = 20
      Top = 0
      Width = 169
      Caption = 'Функция записи 10h'
      Checked = True
      OnChange = RB_Fn10Change
      TabOrder = 1
      TabStop = True
    end
    object RB_Fn6: TRadioButton
      Left = 6
      Height = 19
      Top = 20
      Width = 169
      Caption = 'Функция записи 06h'
      OnChange = RB_Fn6Change
      TabOrder = 0
    end
  end
end
