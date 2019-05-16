unit Modbus;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
  Windows,
  LCLIntf, LCLType, LMessages,
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, Grids, ThreadMB, Inifiles;

const
  t_UINT16 = 0;
  t_INT16 = 1;
  t_UINT32 = 2;
  t_INT32 = 3;
  t_16O = 4;
  t_FLOAT32 = 5;
  LEN_TBYTEVAL = 4;

type
  TByteVal = array[1..LEN_TBYTEVAL] of byte;

type
  int = integer;

type

  { TForm1 }

  TForm1 = class(TForm)
    CB_TCP_IP: TCheckBox;
    IP_addr: TEdit;
    GroupBox1: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label301: TLabel;
    Label302: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Label303: TLabel;
    RB_Fn10: TRadioButton;
    RB_Fn6: TRadioButton;
    RadioGroup3: TRadioGroup;
    Shp_connect_tcp: TShape;
    out_mess_st: TStaticText;
    TCP_Port_SE: TSpinEdit;
    SpinEdit300: TSpinEdit;
    SpinEdit301: TSpinEdit;
    SpinEdit302: TSpinEdit;
    SpinEdit104: TSpinEdit;
    SpinEdit105: TSpinEdit;
    SpinEdit106: TSpinEdit;
    SpinEdit107: TSpinEdit;
    Label304: TLabel;
    Label305: TLabel;
    Label306: TLabel;
    Label307: TLabel;
    Label308: TLabel;
    Shape1000: TShape;
    Label311: TLabel;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Shape2: TShape;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Label901: TLabel;
    Label902: TLabel;
    Label903: TLabel;
    CheckBox3: TCheckBox;
    Label904: TLabel;
    Label905: TLabel;
    Label906: TLabel;
    Label907: TLabel;
    Label908: TLabel;
    Label909: TLabel;
    Label910: TLabel;
    Label911: TLabel;
    Label912: TLabel;
    Label913: TLabel;
    Label914: TLabel;
    Label915: TLabel;
    Label916: TLabel;
    Label917: TLabel;
    Label918: TLabel;
    Label919: TLabel;
    Label920: TLabel;
    Label921: TLabel;
    Label922: TLabel;
    Label923: TLabel;
    Label924: TLabel;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Shape36: TShape;
    Shape37: TShape;
    Shape38: TShape;
    Shape39: TShape;
    Shape40: TShape;
    Shape41: TShape;
    Shape42: TShape;
    Shape43: TShape;
    Shape44: TShape;
    Shape45: TShape;
    Shape46: TShape;
    Shape47: TShape;
    Shape48: TShape;
    Label925: TLabel;
    Label926: TLabel;
    Label927: TLabel;
    Label928: TLabel;
    Label929: TLabel;
    Label930: TLabel;
    Label931: TLabel;
    Label932: TLabel;
    Label933: TLabel;
    Label934: TLabel;
    Label935: TLabel;
    Label936: TLabel;
    Label937: TLabel;
    Label938: TLabel;
    Label939: TLabel;
    Label940: TLabel;
    Label941: TLabel;
    Label942: TLabel;
    Label943: TLabel;
    Label944: TLabel;
    Label945: TLabel;
    Label946: TLabel;
    Label947: TLabel;
    Label948: TLabel;
    Shape49: TShape;
    Shape50: TShape;
    Shape51: TShape;
    Shape52: TShape;
    Shape53: TShape;
    Shape54: TShape;
    Shape55: TShape;
    Shape56: TShape;
    Shape57: TShape;
    Shape58: TShape;
    Shape59: TShape;
    Shape60: TShape;
    Shape61: TShape;
    Shape62: TShape;
    Shape63: TShape;
    Shape64: TShape;
    Shape65: TShape;
    Shape66: TShape;
    Shape67: TShape;
    Shape68: TShape;
    Shape69: TShape;
    Shape70: TShape;
    Shape71: TShape;
    Shape72: TShape;
    Label949: TLabel;
    Label950: TLabel;
    Label951: TLabel;
    Label952: TLabel;
    Label953: TLabel;
    Label954: TLabel;
    Label955: TLabel;
    Label956: TLabel;
    Label957: TLabel;
    Label958: TLabel;
    Label959: TLabel;
    Label960: TLabel;
    Label961: TLabel;
    Label962: TLabel;
    Label963: TLabel;
    Label964: TLabel;
    Label965: TLabel;
    Label966: TLabel;
    Label967: TLabel;
    Label968: TLabel;
    Label969: TLabel;
    Label970: TLabel;
    Label971: TLabel;
    Label972: TLabel;
    Shape73: TShape;
    Shape74: TShape;
    Shape75: TShape;
    Shape76: TShape;
    Shape77: TShape;
    Shape78: TShape;
    Shape79: TShape;
    Shape80: TShape;
    Shape81: TShape;
    Shape82: TShape;
    Shape83: TShape;
    Shape84: TShape;
    Shape85: TShape;
    Shape86: TShape;
    Shape87: TShape;
    Shape88: TShape;
    Shape89: TShape;
    Shape90: TShape;
    Shape91: TShape;
    Shape92: TShape;
    Shape93: TShape;
    Shape94: TShape;
    Shape95: TShape;
    Shape96: TShape;
    Label973: TLabel;
    Label974: TLabel;
    Label975: TLabel;
    Label976: TLabel;
    Label977: TLabel;
    Label978: TLabel;
    Label979: TLabel;
    Label980: TLabel;
    Label981: TLabel;
    Label982: TLabel;
    Label983: TLabel;
    Label984: TLabel;
    Label985: TLabel;
    Label986: TLabel;
    Label987: TLabel;
    Label988: TLabel;
    Label989: TLabel;
    Label990: TLabel;
    Label991: TLabel;
    Label992: TLabel;
    Label993: TLabel;
    Label994: TLabel;
    Label995: TLabel;
    Label996: TLabel;
    Shape97: TShape;
    Shape98: TShape;
    Shape99: TShape;
    Shape100: TShape;
    Shape101: TShape;
    Shape102: TShape;
    Shape103: TShape;
    Shape104: TShape;
    Shape105: TShape;
    Shape106: TShape;
    Shape107: TShape;
    Shape108: TShape;
    Shape109: TShape;
    Shape110: TShape;
    Shape111: TShape;
    Shape112: TShape;
    Shape113: TShape;
    Shape114: TShape;
    Shape115: TShape;
    Shape116: TShape;
    Shape117: TShape;
    Shape118: TShape;
    Shape119: TShape;
    Shape120: TShape;
    Label997: TLabel;
    Label998: TLabel;
    Label999: TLabel;
    Label1000: TLabel;
    Label1001: TLabel;
    Label1002: TLabel;
    Label1003: TLabel;
    Label1004: TLabel;
    Label1005: TLabel;
    Label1006: TLabel;
    Label1007: TLabel;
    Label1008: TLabel;
    Label1009: TLabel;
    Label1010: TLabel;
    Label1011: TLabel;
    Label1012: TLabel;
    Label1013: TLabel;
    Label1014: TLabel;
    Label1015: TLabel;
    Label1016: TLabel;
    Label1017: TLabel;
    Label1018: TLabel;
    Label1019: TLabel;
    Label1020: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    StaticText31: TStaticText;
    StaticText32: TStaticText;
    StaticText33: TStaticText;
    StaticText34: TStaticText;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    StaticText37: TStaticText;
    StaticText38: TStaticText;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    StaticText42: TStaticText;
    StaticText43: TStaticText;
    StaticText44: TStaticText;
    StaticText45: TStaticText;
    StaticText46: TStaticText;
    StaticText47: TStaticText;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    StaticText50: TStaticText;
    StaticText51: TStaticText;
    StaticText52: TStaticText;
    StaticText53: TStaticText;
    StaticText54: TStaticText;
    StaticText55: TStaticText;
    StaticText56: TStaticText;
    StaticText57: TStaticText;
    StaticText58: TStaticText;
    StaticText59: TStaticText;
    StaticText60: TStaticText;
    StaticText61: TStaticText;
    StaticText62: TStaticText;
    StaticText63: TStaticText;
    StaticText64: TStaticText;
    StaticText65: TStaticText;
    StaticText66: TStaticText;
    StaticText67: TStaticText;
    StaticText68: TStaticText;
    StaticText69: TStaticText;
    StaticText70: TStaticText;
    StaticText71: TStaticText;
    StaticText72: TStaticText;
    StaticText73: TStaticText;
    StaticText74: TStaticText;
    StaticText75: TStaticText;
    StaticText76: TStaticText;
    StaticText77: TStaticText;
    StaticText78: TStaticText;
    StaticText79: TStaticText;
    StaticText80: TStaticText;
    StaticText81: TStaticText;
    StaticText82: TStaticText;
    StaticText83: TStaticText;
    StaticText84: TStaticText;
    StaticText85: TStaticText;
    StaticText86: TStaticText;
    StaticText87: TStaticText;
    StaticText88: TStaticText;
    StaticText89: TStaticText;
    StaticText90: TStaticText;
    StaticText91: TStaticText;
    StaticText92: TStaticText;
    StaticText93: TStaticText;
    StaticText94: TStaticText;
    StaticText95: TStaticText;
    StaticText96: TStaticText;
    StaticText97: TStaticText;
    StaticText98: TStaticText;
    StaticText99: TStaticText;
    StaticText100: TStaticText;
    StaticText101: TStaticText;
    StaticText102: TStaticText;
    StaticText103: TStaticText;
    StaticText104: TStaticText;
    StaticText105: TStaticText;
    StaticText106: TStaticText;
    StaticText107: TStaticText;
    StaticText108: TStaticText;
    StaticText109: TStaticText;
    StaticText110: TStaticText;
    StaticText111: TStaticText;
    StaticText112: TStaticText;
    StaticText113: TStaticText;
    StaticText114: TStaticText;
    StaticText115: TStaticText;
    StaticText116: TStaticText;
    StaticText117: TStaticText;
    StaticText118: TStaticText;
    StaticText119: TStaticText;
    StaticText120: TStaticText;
    StaticText121: TStaticText;
    StaticText122: TStaticText;
    StaticText123: TStaticText;
    StaticText124: TStaticText;
    StaticText125: TStaticText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    CheckBox2: TCheckBox;
    Shape121: TShape;
    Shape122: TShape;
    Shape123: TShape;
    Shape124: TShape;
    Shape125: TShape;
    Shape126: TShape;
    Shape127: TShape;
    Shape128: TShape;
    Shape129: TShape;
    Shape130: TShape;
    Shape131: TShape;
    Shape132: TShape;
    Shape133: TShape;
    Shape134: TShape;
    Shape135: TShape;
    Shape136: TShape;
    Shape137: TShape;
    Shape138: TShape;
    Shape139: TShape;
    Shape140: TShape;
    Shape141: TShape;
    Shape142: TShape;
    Shape143: TShape;
    Shape144: TShape;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Shape145: TShape;
    Shape146: TShape;
    Shape147: TShape;
    Shape148: TShape;
    Shape149: TShape;
    Shape150: TShape;
    Shape151: TShape;
    Shape152: TShape;
    Shape153: TShape;
    Shape154: TShape;
    Shape155: TShape;
    Shape156: TShape;
    Shape157: TShape;
    Shape158: TShape;
    Shape159: TShape;
    Shape160: TShape;
    Shape161: TShape;
    Shape162: TShape;
    Shape163: TShape;
    Shape164: TShape;
    Shape165: TShape;
    Shape166: TShape;
    Shape167: TShape;
    Shape168: TShape;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Shape169: TShape;
    Shape170: TShape;
    Shape171: TShape;
    Shape172: TShape;
    Shape173: TShape;
    Shape174: TShape;
    Shape175: TShape;
    Shape176: TShape;
    Shape177: TShape;
    Shape178: TShape;
    Shape179: TShape;
    Shape180: TShape;
    Shape181: TShape;
    Shape182: TShape;
    Shape183: TShape;
    Shape184: TShape;
    Shape185: TShape;
    Shape186: TShape;
    Shape187: TShape;
    Shape188: TShape;
    Shape189: TShape;
    Shape190: TShape;
    Shape191: TShape;
    Shape192: TShape;
    Label174: TLabel;
    Label175: TLabel;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    Label185: TLabel;
    Label186: TLabel;
    Label187: TLabel;
    Label188: TLabel;
    Label189: TLabel;
    Label190: TLabel;
    Label191: TLabel;
    Label192: TLabel;
    Label193: TLabel;
    Label194: TLabel;
    Label195: TLabel;
    Label196: TLabel;
    Label197: TLabel;
    Shape193: TShape;
    Shape194: TShape;
    Shape195: TShape;
    Shape196: TShape;
    Shape197: TShape;
    Shape198: TShape;
    Shape199: TShape;
    Shape200: TShape;
    Shape201: TShape;
    Shape202: TShape;
    Shape203: TShape;
    Shape204: TShape;
    Shape205: TShape;
    Shape206: TShape;
    Shape207: TShape;
    Shape208: TShape;
    Shape209: TShape;
    Shape210: TShape;
    Shape211: TShape;
    Shape212: TShape;
    Shape213: TShape;
    Shape214: TShape;
    Shape215: TShape;
    Shape216: TShape;
    Label198: TLabel;
    Label199: TLabel;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    Label203: TLabel;
    Label204: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    Label208: TLabel;
    Label209: TLabel;
    Label210: TLabel;
    Label211: TLabel;
    Label212: TLabel;
    Label213: TLabel;
    Label214: TLabel;
    Label215: TLabel;
    Label216: TLabel;
    Label217: TLabel;
    Label219: TLabel;
    Label220: TLabel;
    Label221: TLabel;
    Shape217: TShape;
    Shape218: TShape;
    Shape219: TShape;
    Shape220: TShape;
    Shape221: TShape;
    Shape222: TShape;
    Shape223: TShape;
    Shape224: TShape;
    Shape225: TShape;
    Shape226: TShape;
    Shape227: TShape;
    Shape228: TShape;
    Shape229: TShape;
    Shape230: TShape;
    Shape231: TShape;
    Shape232: TShape;
    Shape233: TShape;
    Shape234: TShape;
    Shape235: TShape;
    Shape236: TShape;
    Shape237: TShape;
    Shape238: TShape;
    Shape239: TShape;
    Shape240: TShape;
    Label222: TLabel;
    Label223: TLabel;
    Label224: TLabel;
    Label225: TLabel;
    Label226: TLabel;
    Label227: TLabel;
    Label228: TLabel;
    Label229: TLabel;
    Label230: TLabel;
    Label231: TLabel;
    Label232: TLabel;
    Label233: TLabel;
    Label234: TLabel;
    Label235: TLabel;
    Label236: TLabel;
    Label237: TLabel;
    Label238: TLabel;
    Label239: TLabel;
    Label240: TLabel;
    Label241: TLabel;
    Label242: TLabel;
    Label243: TLabel;
    Label244: TLabel;
    Label245: TLabel;
    Label218: TLabel;
    SpinEdit1: TSpinEdit;
    Label426: TLabel;
    Button2: TButton;
    SpinEdit3: TSpinEdit;
    Label427: TLabel;
    CheckBox4: TCheckBox;
    Timeout_ms: TSpinEdit;
    Label26: TLabel;
    ZapisObmen: TCheckBox;
    RadioGroup1: TRadioGroup;
    RB_3xxx_f_4: TRadioButton;
    RB_4xxx_f_3: TRadioButton;
    RadioGroup2: TRadioGroup;
    RBUINT16: TRadioButton;
    RBINT16: TRadioButton;
    RBUINT32: TRadioButton;
    RBINT32: TRadioButton;
    RB16O: TRadioButton;
    RBFLOAT32: TRadioButton;
    E_Write_4xxxx: TEdit;
    procedure Button1Click(Sender: TObject);

    procedure Button2Click(Sender: TObject);
    procedure CB_TCP_IPChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure IP_addrChange(Sender: TObject);
    procedure RBUINT16Click(Sender: TObject);
    procedure RBINT16Click(Sender: TObject);
    procedure RBUINT32Click(Sender: TObject);
    procedure RBINT32Click(Sender: TObject);
    procedure RB16OClick(Sender: TObject);
    procedure RBFLOAT32Click(Sender: TObject);
    procedure E_Write_4xxxxKeyPress(Sender: TObject; var Key: char);
    procedure RB_Fn10Change(Sender: TObject);
    procedure RB_Fn6Change(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure TCP_Port_SEChange(Sender: TObject);
    procedure Timeout_msChange(Sender: TObject);
  private
    { Private declarations }
  public
    ModBusThread: ThreadModB;

    procedure TMB;
    procedure Out_Last_mess;
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

uses Unit2, Math;

{$R *.dfm}


function CheckSummCRC2_m(s: string): string;
var
  Generator: longint;
  CRC: longint;
  i: integer;
  j: integer;
  L: integer;
  Bit: boolean;
  Temp: byte;
  CHrab: char;

  Lenght: integer;
  CRC16, chsumm: string;
begin
  CRC16 := '';
  Lenght := Length(s);
  CRC := 65535;
  Generator := 40961;
  for i := 1 to Lenght do
  begin
    CHrab := s[i];
    Temp := Ord(CHrab);
    CRC := CRC xor Temp;
    for j := 1 to 8 do
    begin
      Bit := True;
      L := CRC and 1;
      if L = 0 then
        Bit := False;
      CRC := CRC div 2;
      if Bit = True then
        CRC := CRC xor Generator;
    end;                                // Next j;
  end;                                  // Next i
  Str(CRC, s);
  CRC16 := Chr(CRC mod 256) + Chr(CRC div 256);
  chsumm := CRC16;
  CheckSummCRC2_m := chsumm;
end;

function ControlSumm_m(st: string; NomDevInTh: integer): boolean;
var
  str: string;
begin
  if Length(st) > 2 then
  begin
    str := st;
    Delete(str, length(str) - 2 + 1, 2);
    str := str + CheckSummCRC2_m(str);
    if str = st then
      ControlSumm_m := True
    else
      ControlSumm_m := False;
  end
  else
    ControlSumm_m := False;

end;






procedure AlarmCheck_m;
//  Проверка на отсутсвие ответа или код ошибки
var
  RegRab: longint;
  S2: string;
  CHrab: char;
begin
  //  Сначала все чисты как ангелы
  Alarm := False;
  // Form1.Shape1.Brush.Color := clGray ;

  Form1.Label311.Caption := ' ';
  // Если буфер пуст - устройство не ответило
  if sr = '' then
  begin
    Form1.Shape1000.Brush.Color := clRed;
    Form1.Label311.Font.Color := clMaroon;
    Form1.Label311.Caption :=
      '              Нет связи с устройством              ';
    Alarm := True;
    //  NubmerReg :=99;
    exit;
  end;
  if sr <> '' then
  begin
    //  Во втором байте - либо код функции, либо код ошибки
    CHrab := sr[2];
    RegRab := Ord(CHrab);
    if RegRab > 16 then
    begin
      Form1.Shape1000.Brush.Color := clRed;
      Str(RegRab, S2);
      Form1.Label311.Font.Color := clMaroon;
      Form1.Label311.Caption := '      Ошибка устройства ' + S2;
      Alarm := True;

    end;
  end;
  if not (Alarm) then
    Form1.Shape1000.Brush.Color := clLime;


  if not (ControlSumm_m(sr, 0)) then
    Form1.Label311.Caption := '  Ошибка контрольной суммы ';

end;

// **** Вывод регистров 4ххх в форму ****

procedure GUI4;
var
  SR4: string;
  i: integer;
  l1: integer;
  Lab: TStaticText;
  Lab1: TLabel;
  znak, Int_temp: integer;
  Value: integer;
  ValueLongword: longword;
  INT1, INT2: integer;

  pb: Pointer;
  pr: ^single;
  fval, fValue: real;
  bv, bout1, bv2: TByteVal;

  sml_int: smallint;
  sml_int1: ^smallint;
begin
  for i := 1 to 25 do
  begin
    l1 := 40000 + Form1.SpinEdit301.Value + i - 1;
    Str(l1, SR4);
    Lab1 := Form1.FindComponent('Label' + IntToStr(i)) as TLabel;
    if Lab <> nil then
      Lab1.Caption := SR4;
  end;

  for i := 1 to Form1.SpinEdit302.Value do
  begin
    if Type_Reg4XXX = t_UINT16 then
      SR4 := IntToStr(Reg4[i]);

    znak := 1;

    if Type_Reg4XXX = t_INT16 then
    begin
      sml_int := (Reg4[i] and $FFFF);


      SR4 := IntToStr(sml_int);
    end;

    if Type_Reg4XXX = t_UINT32 then
    begin
      INT1 := Reg4[i + 1];
      INT2 := Reg4[i];

      ValueLongword := (INT1 shl 16) + INT2;
      if (i mod 2) = 1 then
        SR4 := IntToStr(ValueLongword)
      else
        SR4 := '';
    end;

    if Type_Reg4XXX = t_INT32 then
    begin
      INT1 := Reg4[i + 1];
      INT2 := Reg4[i];



      Value := (((INT1) shl 16) + (INT2 and $FFFF));

      if (i mod 2) = 1 then
        SR4 := IntToStr(Value)
      else
        SR4 := '';
    end;

    if Type_Reg4XXX = t_16O then
    begin
      INT1 := Reg4[i];
      INT1 := INT1 - $8000;
      SR4 := IntToStr(INT1);
    end;

    if Type_Reg4XXX = t_FLOAT32 then
    begin

      INT1 := Reg4[i + 1];
      INT2 := Reg4[i];

      bv[2] := (INT1 and $FF);
      bv[1] := INT1 shr 8;



      bv[4] := (INT2 and $FF);
      bv[3] := (INT2 shr 8);            {and $FF00}

      bv2[1] := bv[4];
      bv2[2] := bv[3];
      bv2[3] := bv[2];
      bv2[4] := bv[1];

      try
        pb := @bv2[1];
        pr := pb;
        fval := pr^;
        fValue := fval;
      except

      end;

      if (i mod 2) = 1 then
        SR4 := FloatToStrf(fValue, ffNumber, 10, 10)
      else
        SR4 := '';
    end;

    Lab := Form1.FindComponent('StaticText' + IntToStr(i)) as TStaticText;

    if Lab <> nil then
    begin
      Lab.Color := clInfoBk;
      Lab.Caption := SR4;
    end;
  end;
  if form1.SpinEdit302.Value < 125 then
  begin
    for i := form1.SpinEdit302.Value + 1 to 125 do
    begin
      Lab := Form1.FindComponent('StaticText' + IntToStr(i)) as TStaticText;
      if Lab <> nil then
      begin
        Lab.Color := clSilver;
        Lab.Caption := ' ';
      end;
    end;
  end;
end;

// **** Опрос регистров 4ххх ****

// ***  Распаковка нулевых регистров
  {
procedure Unpack0;
var
  i                 : integer;
  j                 : integer;
  k                 : integer;
  rabreg            : integer;
  rabreg1           : integer;
  ch1               : char;
  SRAB              : string;
begin

  for j := 1 to 15 do
  begin
    ch1 := sr[j + 3];
    rabreg1 := ord(ch1);
    str(rabreg1, SRAB);
    k := 1;
    for i := 1 to 8 do
    begin
      rabreg := rabreg1 and k;
      if rabreg > 0 then
        REG0[i + 8 * (j - 1)] := 1;
      if rabreg = 0 then
        REG0[i + 8 * (j - 1)] := 0;
      // Неужели в Delphi  отсутствует возведение в степень?
      k := k * 2;
    end;
  end;
end;  }

//  Вывод 0хххх регистров на экран

procedure GUI0;
var
  i: integer;
  Lab: TShape;
  Lab1: TLabel;
  SRAB: string;
  SRA1: string;
begin
  for i := 1 to form1.SpinEdit107.Value do
  begin
    Lab := Form1.FindComponent('Shape' + IntToStr(i)) as TShape;
    Lab.Brush.Color := clGray;
    if REG0[i] = 1 then
      Lab.Brush.Color := clLime;
    Lab1 := Form1.FindComponent('Label' + IntToStr(i + 900)) as TLabel;
    SRAB := IntToStr(Form1.SpinEdit106.Value + i - 1);
    if (Form1.SpinEdit106.Value + i - 1) < 1000 then
      SRA1 := '00';
    if (Form1.SpinEdit106.Value + i - 1) < 100 then
      SRA1 := '000';
    if (Form1.SpinEdit106.Value + i - 1) < 10 then
      SRA1 := '0000';
    Lab1.Caption := SRA1 + SRAB;
  end;
  if form1.SpinEdit107.Value < 120 then
  begin
    for i := form1.SpinEdit107.Value + 1 to 120 do
    begin
      Lab := Form1.FindComponent('Shape' + IntToStr(i)) as TShape;
      Lab.Brush.Color := clSilver;
      Lab1 := Form1.FindComponent('Label' + IntToStr(i + 900)) as TLabel;
      Lab1.Caption := '   ';
    end;
  end;

end;

// ***********************


//  Вывод 1хххх регистров на экран

procedure GUI1;
var
  i: integer;
  Lab: TShape;
  Lab1: TLabel;
  SRAB: string;
  SRA1: string;
begin
  for i := 1 to form1.SpinEdit105.Value do
  begin
    Lab := Form1.FindComponent('Shape' + IntToStr(i + 120)) as TShape;
    Lab.Brush.Color := clGray;
    if REG1[i] = 1 then
      Lab.Brush.Color := clLime;
    Lab1 := Form1.FindComponent('Label' + IntToStr(i + 125)) as TLabel;
    SRAB := IntToStr(Form1.SpinEdit104.Value + i - 1);
    // Переделать
    if (Form1.SpinEdit104.Value + i - 1) < 1000 then
      SRA1 := '10';
    if (Form1.SpinEdit104.Value + i - 1) < 100 then
      SRA1 := '100';
    if (Form1.SpinEdit104.Value + i - 1) < 10 then
      SRA1 := '1000';
    Lab1.Caption := SRA1 + SRAB;
  end;
  if form1.SpinEdit105.Value < 120 then
  begin
    for i := form1.SpinEdit105.Value + 1 to 120 do
    begin
      Lab := Form1.FindComponent('Shape' + IntToStr(i + 120)) as TShape;
      Lab.Brush.Color := clSilver;
      Lab1 := Form1.FindComponent('Label' + IntToStr(i + 125)) as TLabel;
      Lab1.Caption := '   ';
    end;
  end;

end;

// ***********************


// *****Запись регистра 4ххх

procedure TForm1.Button1Click(Sender: TObject);
var
  DataOutput: string;
  t, INT_T: integer;
  sml_int: smallint;
  int_temp_lo, int_temp_hi: byte;
  znak: integer;
  val_int: integer;
  val_longint: longint;
  INT1: integer;
  INT2: integer;

  pr_int: ^longint;
  L_int: longint;
  val_single: single;
  pb: Pointer;
  int_temp: integer;
begin
  NomerReg_write_4xxx := SpinEdit1.Value;
  Val_write_4xxx := StrToFloatDef(Form1.E_Write_4xxxx.Text, 0);

end;

//   Опрос контроллера по таймеру

procedure TForm1.TMB;
begin

  try

    ModBus_Prop_Th[1].port := ComboBox1.Text;
    ModBus_Prop_Th[1].Skorost := StrToIntDef(ComboBox2.Text, 9600);
    ModBus_Prop_Th[1].EON := ComboBox3.Text;
    ModBus_Prop_Th[1].KolBit := StrToIntDef(ComboBox4.Text, 8);
    ;
    ModBus_Prop_Th[1].OneOrTwo := StrToIntDef(ComboBox5.Text, 1);
    ;
    ;
    ModBus_Prop_Th[1].AdressOfUstr := SpinEdit300.Value;
    ModBus_Prop_Th[1].NachReg_1xxx := SpinEdit104.Value;
    ModBus_Prop_Th[1].DlinaZprosa_1xxx := SpinEdit105.Value;
    ModBus_Prop_Th[1].IsOpros_1xxx := CheckBox2.Checked;

    ModBus_Prop_Th[1].NachReg_4xxx := SpinEdit301.Value;
    ModBus_Prop_Th[1].DlinaZprosa_4xxx := SpinEdit302.Value;
    ModBus_Prop_Th[1].IsOpros_4xxx := CheckBox1.Checked;

    ModBus_Prop_Th[1].NachReg_0xxx := SpinEdit106.Value;
    ModBus_Prop_Th[1].DlinaZprosa_0xxx := SpinEdit107.Value;
    ModBus_Prop_Th[1].IsOpros_0xxx := CheckBox3.Checked;

    if RB_3xxx_f_4.Checked then
      ModBus_Prop_Th[1].Function_Reg_3_or_4 := 4
    else
      ModBus_Prop_Th[1].Function_Reg_3_or_4 := 3;
  except

  end;



  if CheckBox3.Checked then
    if TypeRegOut = 0 then
    begin
      AlarmCheck_m;
      if not alarm then
      begin
        GUI0;
      end;
      Alarm := False;
    end;




  if CheckBox2.Checked then
    if TypeRegOut = 1 then
    begin
      AlarmCheck_m;
      if not alarm then
      begin
        GUI1;
      end;
      Alarm := False;
    end;

  if CheckBox1.Checked then
    if TypeRegOut = 4 then
    begin
      AlarmCheck_m;
      if not alarm then
      begin
        GUI4;
      end;
      Alarm := False;
    end;

end;

procedure TForm1.Out_Last_mess;
begin

  out_mess_st.Caption := Last_TCP_Mess;
  if ModBus_rtu_over_TCP = 1 then
  begin
    if Is_Connect_socket then
      Shp_connect_tcp.Brush.Color := clLime
    else
      Shp_connect_tcp.Brush.Color := clRed;

  end
  else
    Shp_connect_tcp.Brush.Color := clForm;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  DataOutput: string;
  t: integer;
begin
  NomerReg_write_0xxx := SpinEdit3.Value;
  Val_write_0xxx := CheckBox4.Checked;
end;

procedure TForm1.CB_TCP_IPChange(Sender: TObject);
begin
  if CB_TCP_IP.Checked then
    ModBus_rtu_over_TCP := 1
  else
    ModBus_rtu_over_TCP := 0;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
var

  ini: TIniFile;
begin
  ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'modlook.ini');
  ini.WriteInteger('param', 'addrUstr', SpinEdit300.Value);
  ini.WriteInteger('param', 'begin1xx', SpinEdit104.Value);

  ini.WriteInteger('param', 'begin1xx', SpinEdit104.Value);
  ini.WriteInteger('param', 'len1xx', SpinEdit105.Value);
  ini.WriteInteger('param', 'begin4xx', SpinEdit301.Value);
  ini.WriteInteger('param', 'len4xx', SpinEdit302.Value);
  ini.WriteInteger('param', 'begin0xx', SpinEdit106.Value);
  ini.WriteInteger('param', 'len0xx', SpinEdit107.Value);

  ini.WriteString('param', 'port', ComboBox1.Text);
  ini.WriteString('param', 'speed', ComboBox2.Text);
  ini.WriteString('param', 'parit', ComboBox3.Text);

  ini.WriteString('tcp', 'host', IP_addr.Text);
  ini.WriteInteger('tcp', 'port_tcp', TCP_Port_SE.Value);
  ini.Free;

end;

procedure TForm1.FormCreate(Sender: TObject);
var

  ini: TIniFile;
begin
  DecimalSeparator := '.';
  Form2.Show;

  ModBus_Prop_Th[1].port := ComboBox1.Text;
  ModBus_Prop_Th[1].Skorost := StrToIntDef(ComboBox2.Text, 9600);
  ModBus_Prop_Th[1].EON := ComboBox3.Text;
  ModBus_Prop_Th[1].KolBit := StrToIntDef(ComboBox4.Text, 8);
  ;
  ModBus_Prop_Th[1].OneOrTwo := StrToIntDef(ComboBox5.Text, 1);
  ;
  ;
  ModBus_Prop_Th[1].AdressOfUstr := SpinEdit300.Value;
  ModBus_Prop_Th[1].NachReg_1xxx := SpinEdit104.Value;
  ModBus_Prop_Th[1].DlinaZprosa_1xxx := SpinEdit105.Value;
  ModBus_Prop_Th[1].IsOpros_1xxx := CheckBox2.Checked;

  ModBus_Prop_Th[1].NachReg_4xxx := SpinEdit301.Value;
  ModBus_Prop_Th[1].DlinaZprosa_4xxx := SpinEdit302.Value;
  ModBus_Prop_Th[1].IsOpros_4xxx := CheckBox1.Checked;

  ModBus_Prop_Th[1].NachReg_0xxx := SpinEdit106.Value;
  ModBus_Prop_Th[1].DlinaZprosa_0xxx := SpinEdit107.Value;
  ModBus_Prop_Th[1].IsOpros_0xxx := CheckBox3.Checked;
  ModBusThread := ThreadModB.Create(True);
  ;

  ModBusThread.FreeOnTerminate := True;
  ModBusThread.Priority := tpLower;
  ModBusThread.Resume;




  ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'modlook.ini');

  SpinEdit300.Value := ini.ReadInteger('param', 'addrUstr', 1);

  SpinEdit104.Value := ini.ReadInteger('param', 'begin1xx', 1);
  SpinEdit105.Value := ini.ReadInteger('param', 'len1xx', 120);
  SpinEdit301.Value := ini.ReadInteger('param', 'begin4xx', 1);
  SpinEdit302.Value := ini.ReadInteger('param', 'len4xx', 120);
  SpinEdit106.Value := ini.ReadInteger('param', 'begin0xx', 1);
  SpinEdit107.Value := ini.ReadInteger('param', 'len0xx', 120);

  ComboBox1.Text := ini.ReadString('param', 'port', '\\.\COM1');
  ComboBox2.Text := ini.ReadString('param', 'speed', '9600');
  ComboBox3.Text := ini.ReadString('param', 'parit', 'N');

  IP_addr.Text := ini.ReadString('tcp', 'host', '127.0.0.1');
  TCP_Port_SE.Value := ini.ReadInteger('tcp', 'port_tcp', 4001);
  Host_Thread := IP_addr.Text;
  Port_Thread := TCP_Port_SE.Value;
  ini.Free;
end;

procedure TForm1.IP_addrChange(Sender: TObject);
begin
  Host_Thread := IP_addr.Text;

end;

procedure TForm1.RBUINT16Click(Sender: TObject);
begin
  Type_Reg4XXX := t_UINT16;
end;

procedure TForm1.RBINT16Click(Sender: TObject);
begin
  Type_Reg4XXX := t_INT16;
end;

procedure TForm1.RBUINT32Click(Sender: TObject);
begin
  Type_Reg4XXX := t_UINT32;
end;

procedure TForm1.RBINT32Click(Sender: TObject);
begin
  Type_Reg4XXX := t_INT32;
end;

procedure TForm1.RB16OClick(Sender: TObject);
begin
  Type_Reg4XXX := t_16O;
end;

procedure TForm1.RBFLOAT32Click(Sender: TObject);
begin
  Type_Reg4XXX := t_FLOAT32;
end;

procedure TForm1.E_Write_4xxxxKeyPress(Sender: TObject; var Key: char);
begin
  case key of
    '0'..'9', '-', #8: ;
    '.', ',':
    begin
      key := DecimalSeparator;
      if Pos(DecimalSeparator, E_Write_4xxxx.Text) <> 0 then
        key := char(0);
    end;
    else
      key := char(0);
  end;
end;

procedure TForm1.RB_Fn10Change(Sender: TObject);
begin
  if RB_Fn10.Checked then
    Funct_write_4xxx := 10;
end;

procedure TForm1.RB_Fn6Change(Sender: TObject);
begin
  if RB_Fn6.Checked then
    Funct_write_4xxx := 6;
end;

procedure TForm1.StaticText1Click(Sender: TObject);
begin

end;

procedure TForm1.TCP_Port_SEChange(Sender: TObject);
begin
  Port_Thread := TCP_Port_SE.Value;
end;

procedure TForm1.Timeout_msChange(Sender: TObject);
begin
  Timeout_M := Timeout_ms.Value;
end;

end.
