unit ThreadMB;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses

  Windows,

  LCLIntf, LCLType, LMessages,

  Classes, SysUtils , IdTCPClient,IdGlobal;
const
  fileNameTR        = 'TxRx.txt';
type
  TModBusPr = record
    port: string;
    Skorost: integer;
    EON: string;
    KolBit: integer;
    OneOrTwo: byte;
    AdressOfUstr: integer;
    NachReg_1xxx: integer;
    DlinaZprosa_1xxx: integer;
    IsOpros_1xxx: Boolean;

    NachReg_4xxx: integer;
    DlinaZprosa_4xxx: integer;
    IsOpros_4xxx: Boolean;

    NachReg_0xxx: integer;
    DlinaZprosa_0xxx: integer;
    IsOpros_0xxx: Boolean;
    Function_Reg_3_or_4: Integer;
  end;
type

  { ThreadModB }

  ThreadModB = class(TThread)
  private
    { Private declarations }
  protected
    procedure Write_reg_4xxx(NomerReg:Integer; Val_write:Double);
    procedure Write_reg_0xxx(NomerReg:Integer; Val_write:Boolean);
    procedure Execute; override;

  end;

var
  ComFile           : THandle;
  Polling           : boolean;
  sr                : string;
  chsumm            : string;
  REG4              : array[0..250] of integer;
  REG0              : array[0..125] of integer;
  REG1              : array[0..125] of integer;

  Must_Out_0xxx     : Boolean;

  TypeRegOut        : Integer;

  Stop_Read_ComPort : Boolean;
  Now_reading_Type_ModBus: Integer;
  Now_reading_ComPort: Boolean;
  Com_port_is_open  : Boolean;
  ModBus_byteT      : Integer;
  ModBus_byte_xxxT  : Integer;
  ModBus_0_or_1T    : Integer;
  Alarm             : boolean;
  ModBus_Prop_Th    : array[1..9] of TModBusPr;
  NomerReg_write_4xxx:Integer;
  Val_write_4xxx:Double;

  NomerReg_write_0xxx:Integer;
  Val_write_0xxx:Boolean;

 Funct_write_4xxx:Integer = 0;

  ModBus_rtu_over_TCP:Integer=0;
      IdTCPClient_Thread: TIdTCPClient;
      Timeout_M:Integer;
     Is_Connect_socket:Boolean = false;
      Port_Thread,sr_Kol_Data_Receive: Integer;
      Host_Thread,Last_TCP_Mess:String;
      Date_TimeLastOprosGood:TDateTime;
           sr_temp, Data_Receive: string;
    sr_data: array [-1 .. 65000] of Byte;
  Type_Reg4XXX      : Integer;
implementation
uses Modbus, Math;


{ ThreadModB }

 // ****************************************************

function st_to_Hex(st: string): string;
var
  i, m              : Integer;
  stt               : string;
begin
  stt := '';
  if Length(st) > 0 then
    for i := 1 to Length(st) do
    begin
      m := ord(st[i]);
      stt := stt + ' ' + IntToHex(m, 2);
    end;

  st_to_Hex := stt;

end;

procedure LogToFile(st, fname: string);
var
  LogFile           : textfile;
begin

  try
    if not Form1.ZapisObmen.Checked then
      exit;
    AssignFile(LogFile, fname);
    if FileExists(fname) then
      Append(LogFile)
    else
      Rewrite(LogFile);

    Writeln(LogFile, st);

    CloseFile(LogFile);

  except

  end;

end;

function StrToH(s: string): string;
var
  st, stt: string;
  k: Integer;
begin
  stt := '';
  for k := 1 to Length(s) do
    stt := stt + IntToHex(ord(s[k]), 2) + ' ';
  Result := stt;
end;

procedure CheckSumm(s: string);
//  До сих пор удивляюсь, почему это работает
var
  Generator         : longint;
  CRC               : Longint;
  i                 : Integer;
  j                 : Integer;
  L                 : Integer;
  Bit               : Boolean;
  Temp              : Byte;
  CHrab             : char;

  Lenght            : integer;
  CRC16             : string;
begin

  Lenght := Length(s);
  CRC := 65535;
  Generator := 40961;
  for i := 1 to Lenght do
  begin
    CHrab := s[i];
    Temp := ord(CHrab);
    CRC := CRC xor Temp;
    for j := 1 to 8 do
    begin
      Bit := true;
      L := CRC and 1;
      if L = 0 then
        Bit := false;
      CRC := CRC div 2;
      if Bit = True then
        CRC := CRC xor Generator;
    end;                                // Next j;
  end;                                  // Next i
  Str(CRC, s);                          //
  CRC16 := Chr(CRC mod 256) + Chr(CRC div 256);
  chsumm := CRC16;
end;

function OpenCOMPort: Boolean;
var
  DeviceName        : array[0..255] of Char;

begin

// Выбор порта
if ModBus_rtu_over_TCP>0 then
  begin
Result := True;
exit;
  end;
  StrPCopy(DeviceName, ModBus_Prop_Th[Now_reading_Type_ModBus].port);
  ComFile := CreateFile(DeviceName,
    GENERIC_READ or GENERIC_WRITE,
    FILE_SHARE_READ or FILE_SHARE_WRITE,
    nil,
    OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL,
    0);

  if ComFile = INVALID_HANDLE_VALUE then
    Result := False
  else
    begin
    Result := True;
  Com_port_is_open := True;

    end;
end;

// *********************************************

function SetupCOMPort: Boolean;
const
  RxBufferSize      = 1024;
  TxBufferSize      = 1024;
var
  DCB               : TDCB;
  Config            : string;
  CommTimeouts      : TCommTimeouts;
begin

  if ModBus_rtu_over_TCP>0 then
  begin
Result := True;
exit;
  end;
  Result := True;

  if not SetupComm(ComFile, RxBufferSize, TxBufferSize) then
    Result := False;

  if not GetCommState(ComFile, DCB) then
    Result := False;

  // define the baudrate, parity,...

  Config := 'baud=' + IntToStr(ModBus_Prop_Th[Now_reading_Type_ModBus].Skorost)
    + 'parity=' + {} ModBus_Prop_Th[Now_reading_Type_ModBus].EON +
  'data=' +
  IntToStr(ModBus_Prop_Th[Now_reading_Type_ModBus].KolBit) + 'stop='
    + IntToStr(ModBus_Prop_Th[Now_reading_Type_ModBus].OneOrTwo);

  if not BuildCommDCB(@Config[1], DCB) then
    Result := False;

  if not SetCommState(ComFile, DCB) then
    Result := False;

  with CommTimeouts do
  begin
    ReadIntervalTimeout := Form1.Timeout_ms.Value + 05 + (Round(19 * 9600 /
      ModBus_Prop_Th[Now_reading_Type_ModBus].Skorost)) + 2; //0;
    ReadTotalTimeoutMultiplier := 0;
    ReadTotalTimeoutConstant := Form1.Timeout_ms.Value + 400;
    WriteTotalTimeoutMultiplier := 0;
    WriteTotalTimeoutConstant := 5 + (Round((8 * 11 /
      ModBus_Prop_Th[Now_reading_Type_ModBus].Skorost) * 1000));
  end;

  if not SetCommTimeouts(ComFile, CommTimeouts) then
    Result := False;
end;

function CheckSummCRC2(s: string): string;
//  До сих пор удивляюсь, почему это работает
var
  Generator         : longint;
  CRC               : Longint;
  i                 : Integer;
  j                 : Integer;
  L                 : Integer;
  Bit               : Boolean;
  Temp              : Byte;
  CHrab             : char;

  Lenght            : integer;
  CRC16, chsumm     : string;
begin
  CRC16 := '';
  Lenght := Length(s);
  CRC := 65535;
  Generator := 40961;
  for i := 1 to Lenght do
  begin
    CHrab := s[i];
    Temp := ord(CHrab);
    CRC := CRC xor Temp;
    for j := 1 to 8 do
    begin
      Bit := true;
      L := CRC and 1;
      if L = 0 then
        Bit := false;
      CRC := CRC div 2;
      if Bit = True then
        CRC := CRC xor Generator;
    end;                                // Next j;
  end;                                  // Next i
  Str(CRC, s);                          //
  CRC16 := Chr(CRC mod 256) + Chr(CRC div 256);
  chsumm := CRC16;
  CheckSummCRC2 := chsumm;
end;
function ControlSumm(st: string;
  NomDevInTh: Integer): Boolean;
var
  str               : string;
begin
  if Length(st) > 2 then
  begin
    str := st;
    Delete(str, length(str) - 2 + 1, 2);
    str := str + CheckSummCRC2(str);
    if str = st then
      ControlSumm := True
    else
      ControlSumm := False;
  end
  else
    ControlSumm := False;

end;

procedure ReadText_indy;
 var
   Pd_temp, d: array [1 .. 2048] of Byte;

   BytesRead: DWORD;
   i, Len_READ_BUFF: Integer;
   Result: string;
   Is_connect: Boolean;
   b2: Byte;
 begin

   Result := '';

   if ModBus_rtu_over_TCP <> 1 then
   begin
{$IFDEF UNIX}

{$ELSE}
     ReadFile(ComFile, d, sizeof(d), BytesRead, nil)
{$ENDIF}
   end
   else
   begin
     BytesRead := 0;
   end;

{$IFDEF UNIX}

{$ELSE}
   sr := '';

   for i := 1 to BytesRead do
   begin
     sr := sr + chr(d[i]);
   end;
{$ENDIF}
   // *************************************************************************
   sr_Kol_Data_Receive := BytesRead;
   for i := 1 to BytesRead do
   begin
     sr_data[i] := ord(d[i]);
   end;
   // *************************************************************************

   if ModBus_rtu_over_TCP = 1 then
   begin

     begin
       sr := '';
       sleep(8);
       sleep(Timeout_M);
       try
         Is_connect := False;


           if IdTCPClient_Thread <> nil then
             try
               Is_connect := IdTCPClient_Thread.Connected;
             except
               Is_connect := False;
             end;

         if Is_connect then // IdTCPClient_Thread.Connected
         begin
           if (ModBus_rtu_over_TCP=1) then
           begin
             b2 := IdTCPClient_Thread.Socket.ReadByte;
             sr := chr(b2);

             for i := IdTCPClient_Thread.Socket.InputBuffer.Size -
               1 downto 0 do
             begin
               b2 := IdTCPClient_Thread.Socket.ReadByte;
               sr := sr + chr(b2);
             end;
           end
           else
           begin
             sleep(80);
             sleep(Timeout_M);

           end;

           if Length(sr) > 0 then
           begin
             if (sr <> '') and (not(ControlSumm(sr, 0))) and
               (ModBus_rtu_over_TCP = 1) then
             begin
               Date_TimeLastOprosGood := now;


               sleep(Timeout_M);
               sleep(700);



                 b2 := IdTCPClient_Thread.Socket.ReadByte;
                 sr := sr + chr(b2);
                 for i := IdTCPClient_Thread.Socket.InputBuffer.Size -
                   1 downto 0 do
                 begin
                   b2 := IdTCPClient_Thread.Socket.ReadByte;
                   sr := sr + chr(b2);
                 end;

               if (sr <> '') and (not(ControlSumm(sr, 0))) and
                 (ModBus_rtu_over_TCP = 1) then
               begin
                 Date_TimeLastOprosGood := now;


                 sleep(Timeout_M);
                 sleep(1500);



                   b2 := IdTCPClient_Thread.Socket.ReadByte;
                   sr := sr + chr(b2);
                   for i := IdTCPClient_Thread.Socket.InputBuffer.Size -
                     1 downto 0 do
                   begin
                     b2 := IdTCPClient_Thread.Socket.ReadByte;
                     sr := sr + chr(b2);
                   end;
               end;
             end; //
           end;

         end
         else
         begin
           sleep(800);
           Last_TCP_Mess:=' нет соединения c ' +
               IdTCPClient_Thread.Host+':'+IntToStr( IdTCPClient_Thread.Port);
            Is_Connect_socket:=false;

           if ((EncodeTime(0, 0, 10, 0) + Date_TimeLastOprosGood) < now) then
             begin
              Last_TCP_Mess:= ' пробую убрать соединение  ' +
                   IdTCPClient_Thread.Host+':'+IntToStr( IdTCPClient_Thread.Port);

               IdTCPClient_Thread.Disconnect;
               sleep(2000);
               IdTCPClient_Thread.Host:=Host_Thread;
               IdTCPClient_Thread.Port:=Port_Thread;
              Last_TCP_Mess:=' пробую соединиться с  ' +
                   IdTCPClient_Thread.Host+':'+IntToStr( IdTCPClient_Thread.Port);
               IdTCPClient_Thread.ConnectTimeout := 10000;
               IdTCPClient_Thread.Connect;
               Date_TimeLastOprosGood := now;
               Is_Connect_socket:=true;
             end;

         end;
       except
        Last_TCP_Mess:=' ошибка при чтении пакета от ' +
             IdTCPClient_Thread.Host+':'+IntToStr( IdTCPClient_Thread.Port);
        if not(Is_Connect_socket) then
          Last_TCP_Mess:=' Нет соединения с ' +
             IdTCPClient_Thread.Host+':'+IntToStr( IdTCPClient_Thread.Port);
       end;
     end;
   end;

   {  }
  if sr<>'' then
  Last_TCP_Mess:='Принят пакет';//' <- ' + StrToH(sr);


   Result := sr;

 end;
 // ******************************************************

procedure Send_Text_To_indy(s: string);
var
  i: Integer;
  len: Integer;
{$IFDEF VER220}
  y: TArray<Byte>;
{$ELSE}
  y: TIdBytes;
{$ENDIF}
begin
  len := Length(s);

  SetLength(y, len);
  try
    for i := 1 to len do
    begin
      y[i - 1] := ord(s[i]);
    end;
    if Is_Connect_socket then
    if Assigned(IdTCPClient_Thread) then
      if (IdTCPClient_Thread.Connected) then
        if Assigned(IdTCPClient_Thread.Socket) then
          if (IdTCPClient_Thread.Socket.Connected) then
          begin
            IdTCPClient_Thread.Socket.Write(y, len);
            Date_TimeLastOprosGood := now;
          end
          else
            Date_TimeLastOprosGood := 0;
    {  }
  finally
    SetLength(y, 0);
  end;

end;
// **************************************************

procedure SendText(s: string);
var
  BytesWritten      : DWORD;
begin
  if ModBus_rtu_over_TCP=0 then
  begin
  WriteFile(ComFile, s[1], Length(s), BytesWritten, nil);
  end
  else
  if ModBus_rtu_over_TCP=1 then
  begin
    Send_Text_To_indy(s);
  end;
end;

procedure AlarmCheck;
//  Проверка на отсутсвие ответа или код ошибки
var
  RegRab            : Longint;
  S2                : string;
  CHrab             : char;
begin
  //  Сначала все чисты как ангелы
  Alarm := false;
 // Если буфер пуст - устройство не ответило
  if sr = '' then
  begin
    Alarm := true;

  end;
  if sr <> '' then
  begin
    //  Во втором байте - либо код функции, либо код ошибки
    CHrab := sr[2];
    RegRab := ord(CHrab);
    if RegRab > 16 then
    begin

      Str(RegRab, S2);

      Alarm := true;
    end;
  end;
end;
// ***************************************************

procedure ReadText;
var
  d                 : array[1..512] of Char;

  BytesRead         : DWORD;
  i                 : integer;
  Result            : string;
begin
  if ModBus_rtu_over_TCP=0 then
  begin
  Result := '';
  if not ReadFile(ComFile, d, SizeOf(d), BytesRead, nil) then
  begin
    { Raise an exception }
  end;
  sr := '';
  for i := 1 to BytesRead do
    sr := sr + d[I];
  Result := sr;

  end
  else
   begin
     ReadText_indy;
   end;
end;
// ******************************************************

procedure CloseCOMPort;
begin
  if Com_port_is_open then
  begin
  // finally close the COM Port!
  FileClose(ComFile); { *Преобразовано из CloseHandle* }
  Com_port_is_open:=false;
  end;

end;

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
end;

procedure Modbus_OutPut_0xxx(ByteMdb: integer; O_or_1: integer);
var
  DataOutput        : string;
  O_or_1b           : Boolean;
begin
  if O_or_1 = 1 then
    O_or_1b := True;
  if O_or_1 = 0 then
    O_or_1b := false;
  if ByteMdb <> 0 then
  begin
    // 'Запись в регистр 0ххх
 // Проверка порта и его установка
    if not OpenCOMPort then
      Exit;
    if not SetupCOMPort then
      Exit;
    DataOutput := Chr(ModBus_Prop_Th[Now_reading_Type_ModBus].AdressOfUstr);  //  АДРЕС устройства
    DataOutput := DataOutput + Chr(5);  //  'Запись в регистр типа 0xxxx
    DataOutput := DataOutput + Chr((ByteMdb - 1) div 256);  // Старший байт начального адреса
    DataOutput := DataOutput + Chr((ByteMdb - 1) mod 256);
    // 'Запись 1  или 0
    if O_or_1b then
      DataOutput := DataOutput + Chr(255)
    else
      DataOutput := DataOutput + Chr(0);
    DataOutput := DataOutput + Chr(0); //  всегда 0, т.к. кол-во регистров < 100
    CheckSumm(DataOutput);
    DataOutput := DataOutput + chsumm;
    SendText(DataOutput);
    ReadText;
    CloseCOMPort;
    AlarmCheck;
  end;

end;

// ***********************

procedure Poling0;
var
  DataOutput        : string;
begin
  // запрос регистров 0хххх
  // Проверка порта и его установка
  if not OpenCOMPort then
    Exit;
  if not SetupCOMPort then
    Exit;
  DataOutput := Chr(ModBus_Prop_Th[Now_reading_Type_ModBus].AdressOfUstr);  //  АДРЕС устройства
  DataOutput := DataOutput + Chr(1);    //  Код функции - чтение регистра 0
  DataOutput := DataOutput +
    Chr((ModBus_Prop_Th[Now_reading_Type_ModBus].NachReg_0xxx - 1) div 256);  // Старший байт начального адреса
  DataOutput := DataOutput +
    Chr((ModBus_Prop_Th[Now_reading_Type_ModBus].NachReg_0xxx - 1) mod 256);
  DataOutput := DataOutput + Chr(0); //  всегда 0, т.к. кол-во регистров < 100
  DataOutput := DataOutput +
    Chr(ModBus_Prop_Th[Now_reading_Type_ModBus].DlinaZprosa_0xxx);
  CheckSumm(DataOutput);
  DataOutput := DataOutput + chsumm;
  SendText(DataOutput);
  LogToFile(TimeToStr(now) + ' Tx: ' + st_to_Hex(DataOutput), fileNameTR);
  ReadText;
  LogToFile(TimeToStr(now) + ' Rx: ' + st_to_Hex(sr), fileNameTR);
  CloseCOMPort;
  AlarmCheck;
  if not alarm then
  begin
    Unpack0;
  end;
end;

procedure Unpack1;
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
        REG1[i + 8 * (j - 1)] := 1;
      if rabreg = 0 then
        REG1[i + 8 * (j - 1)] := 0;
      k := k * 2;
    end;
  end;
end;

// ***********************

procedure Poling1;
var
  DataOutput        : string;
begin
  // запрос регистров 1хххх
  // Проверка порта и его установка
  if not OpenCOMPort then
    Exit;
  if not SetupCOMPort then
    Exit;

  DataOutput := Chr(ModBus_Prop_Th[Now_reading_Type_ModBus].AdressOfUstr);  //  АДРЕС устройства
  DataOutput := DataOutput + Chr(2);    //  Код функции - чтение регистра 1
  DataOutput := DataOutput +
    Chr((ModBus_Prop_Th[Now_reading_Type_ModBus].NachReg_1xxx - 1) div 256);  // Старший байт начального адреса
  DataOutput := DataOutput +
    Chr((ModBus_Prop_Th[Now_reading_Type_ModBus].NachReg_1xxx - 1) mod 256);
  DataOutput := DataOutput + Chr(0); // всегда 0, т.к. кол-во регистров < 100
  DataOutput := DataOutput +
    Chr(ModBus_Prop_Th[Now_reading_Type_ModBus].DlinaZprosa_1xxx);
  CheckSumm(DataOutput);
  DataOutput := DataOutput + chsumm;
  LogToFile(TimeToStr(now) + ' Tx: ' + st_to_Hex(DataOutput), fileNameTR);
  SendText(DataOutput);
  ReadText;
  LogToFile(TimeToStr(now) + ' Rx: ' + st_to_Hex(sr), fileNameTR);
  CloseCOMPort;
  AlarmCheck;
  if not alarm then
  begin
    Unpack1;
  end;
  Alarm := false;
end;

procedure Unpack4;
//  Распаковка регистров 4хххх
// Все проверки произведены
var
  i                 : integer;
  L                 : integer;
  Nbyte             : integer;
  CHrab             : Char;
  Rab1              : Longint;
  Rab2              : Longint;
begin

  Nbyte := ModBus_Prop_Th[Now_reading_Type_ModBus].DlinaZprosa_4xxx;  //Form1.SpinEdit302.Value;
  L := 1;
  i := 4;
  repeat
    CHrab := sr[i];
    Rab1 := ord(CHrab);
    CHrab := sr[i + 1];
    Rab2 := ord(CHrab);
    Reg4[L] := Rab1 * 256 + Rab2;
    i := i + 2;
    L := L + 1;
  until L = Nbyte + 1;

end;

// **** Опрос регистров 4ххх ****

procedure Poling4;
var
  DataOutput        : string;
begin

  // Проверка порта и его установка
  if not OpenCOMPort then
    Exit;
  if not SetupCOMPort then
    Exit;
  DataOutput := Chr(ModBus_Prop_Th[Now_reading_Type_ModBus].AdressOfUstr);  //  АДРЕС устройства
  DataOutput := DataOutput +
    Chr(ModBus_Prop_Th[Now_reading_Type_ModBus].Function_Reg_3_or_4);

  DataOutput := DataOutput +
    Chr((ModBus_Prop_Th[Now_reading_Type_ModBus].NachReg_4xxx - 1) div 256);  // Старший байт начального адреса
  DataOutput := DataOutput +
    Chr((ModBus_Prop_Th[Now_reading_Type_ModBus].NachReg_4xxx - 1) mod 256);
  DataOutput := DataOutput + Chr(0); //  всегда 0, т.к. кол-во регистров < 100
  DataOutput := DataOutput +
    Chr(ModBus_Prop_Th[Now_reading_Type_ModBus].DlinaZprosa_4xxx);
  CheckSumm(DataOutput);
  DataOutput := DataOutput + chsumm;
  SendText(DataOutput);
  LogToFile(TimeToStr(now) + ' Tx: ' + st_to_Hex(DataOutput), fileNameTR);
  ReadText;
  LogToFile(TimeToStr(now) + ' Rx: ' + st_to_Hex(sr), fileNameTR);
  CloseCOMPort;
  AlarmCheck;
  if not alarm then
  begin
    Unpack4;
  end;
end;


procedure ThreadModB.Write_reg_4xxx(NomerReg: Integer; Val_write: Double);
var
  DataOutput        : string;
  t, INT_T          : Integer;
  sml_int           : Smallint;
  int_temp_lo, int_temp_hi: byte;
  znak              : Integer;
  val_int           : Integer;
  val_longint       : Longint;
  INT1              : Integer;
  INT2              : Integer;

  pr_int            : ^Longint;
  L_int             : Longint;
  val_single        : Single;
  pb                : Pointer;
  int_temp          : Integer;
begin

  if NomerReg<=0 then exit;
  // Проверка порта и его установка
  if not OpenCOMPort then
  begin
    Stop_Read_ComPort := false;
    Exit;
  end;
  if not SetupCOMPort then
    Exit;
  DataOutput := Chr(Form1.SpinEdit300.Value); //Адрес контроллера - в окне
  if (Funct_write_4xxx=10)or(Funct_write_4xxx=0) then
  DataOutput := DataOutput + Chr(16)   //16 - Запись в регистры типа 4xxxx
  else
  DataOutput := DataOutput + Chr(6);
  DataOutput := DataOutput + Chr((Form1.SpinEdit1.Value - 1) div 256);
  DataOutput := DataOutput + Chr((Form1.SpinEdit1.Value - 1) mod 256);

  if Type_Reg4XXX = t_UINT16 then
  begin
    if (Funct_write_4xxx=10)or(Funct_write_4xxx=0) then
    DataOutput := DataOutput + Chr(0) + Chr(1) + Chr(2);  //запись только 1 регистра
    DataOutput := DataOutput + Chr(StrToIntDef(Form1.E_Write_4xxxx.Text, 0) div
      256);
    DataOutput := DataOutput + Chr(StrToIntDef(Form1.E_Write_4xxxx.Text, 0) mod
      256);
  end;

  if Type_Reg4XXX = t_INT16 then
  begin
    sml_int := StrToIntDef(Form1.E_Write_4xxxx.Text, 0);
    INT_T := sml_int and $FFFF;
      if (Funct_write_4xxx=10)or(Funct_write_4xxx=0) then
    DataOutput := DataOutput + Chr(0) + Chr(1) + Chr(2);  //запись только 1 регистра
    DataOutput := DataOutput + Chr(INT_T div 256);
    DataOutput := DataOutput + Chr(INT_T mod 256);
  end;

  if Type_Reg4XXX = t_UINT32 then
  begin
    INT_T := abs(StrToIntDef(Form1.E_Write_4xxxx.Text, 0));
    INT1 := INT_T and $FFFF;
    INT2 := INT_T shr 16;
     // if (Funct_write_4xxx=10)or(Funct_write_4xxx=0) then
    DataOutput := DataOutput + Chr(0) + Chr(2) + Chr(4);  //запись только 1 регистра
    DataOutput := DataOutput + Chr(INT1 div 256);
    DataOutput := DataOutput + Chr(INT1 mod 256);

    DataOutput := DataOutput + Chr(INT2 div 256);
    DataOutput := DataOutput + Chr(INT2 mod 256);

  end;

  if Type_Reg4XXX = t_INT32 then
  begin
    INT_T := StrToIntDef(Form1.E_Write_4xxxx.Text, 0);
    INT1 := INT_T and $FFFF;
    INT2 := INT_T shr 16;
    DataOutput := DataOutput + Chr(0) + Chr(2) + Chr(4);  //запись только 1 регистра
    DataOutput := DataOutput + Chr(INT1 div 256);
    DataOutput := DataOutput + Chr(INT1 mod 256);

    DataOutput := DataOutput + Chr(INT2 div 256);
    DataOutput := DataOutput + Chr(INT2 mod 256);

  end;

  if Type_Reg4XXX = t_16O then
  begin
    INT_T := StrToIntDef(Form1.E_Write_4xxxx.Text, 0);
    INT_T := INT_T + $8000;
      if (Funct_write_4xxx=10)or(Funct_write_4xxx=0) then
    DataOutput := DataOutput + Chr(0) + Chr(1) + Chr(2);  //запись только 1 регистра
    DataOutput := DataOutput + Chr(INT_T div 256);
    DataOutput := DataOutput + Chr(INT_T mod 256);
  end;

  if Type_Reg4XXX = t_FLOAT32 then
  begin
    val_single := StrToFloatDef(Form1.E_Write_4xxxx.Text, 0);
    pb := @val_single;
    pr_int := pb;
    L_int := pr_int^;

    DataOutput := DataOutput + Chr(0) + Chr(2) + Chr(4);

    int_temp := L_int and $FFFF;
    int_temp_hi := int_temp shr 8;
    int_temp_lo := int_temp and $FF;

    DataOutput := DataOutput + Chr(int_temp div 256);
    DataOutput := DataOutput + Chr(int_temp mod 256);

    int_temp := L_int shr 16;
    int_temp_hi := int_temp shr 8;
    int_temp_lo := int_temp and $FF;

    DataOutput := DataOutput + Chr(int_temp div 256);
    DataOutput := DataOutput + Chr(int_temp mod 256);



  end;

  CheckSumm(DataOutput);
  DataOutput := DataOutput + chsumm;
   LogToFile(TimeToStr(now) + ' Tx: ' + st_to_Hex(DataOutput), fileNameTR);
  SendText(DataOutput);
  ReadText;
  LogToFile(TimeToStr(now) + ' Rx: ' + st_to_Hex(sr), fileNameTR);
  CloseCOMPort;
  AlarmCheck;
  Alarm := false;
  Stop_Read_ComPort := false;
end;

procedure ThreadModB.Write_reg_0xxx(NomerReg: Integer; Val_write: Boolean);
var
  DataOutput        : string;
  t                 : Integer;
begin
  // 'Запись в регистр 0ххх
  // Проверка порта и его установка
  if not OpenCOMPort then
    Exit;

  if not SetupCOMPort then
    Exit;
  DataOutput := Chr(Form1.SpinEdit300.Value); //  АДРЕС устройства
  DataOutput := DataOutput + Chr(5);    //  Запись в регистр типа 0xxxx
  DataOutput := DataOutput + Chr((Form1.SpinEdit3.Value - 1) div 256);  // Старший байт начального адреса
  DataOutput := DataOutput + Chr((Form1.SpinEdit3.Value - 1) mod 256);  //
  // 'Запись 1  или 0
  if Val_write then
    DataOutput := DataOutput + Chr(255)
  else
    DataOutput := DataOutput + Chr(0);
  DataOutput := DataOutput + Chr(0); //  всегда 0, т.к. кол-во регистров < 100
  CheckSumm(DataOutput);
  DataOutput := DataOutput + chsumm;
    LogToFile(TimeToStr(now) + ' Tx: ' + st_to_Hex(DataOutput), fileNameTR);
  SendText(DataOutput);
  ReadText;
  LogToFile(TimeToStr(now) + ' Rx: ' + st_to_Hex(sr), fileNameTR);
  CloseCOMPort;
  AlarmCheck;
  Alarm := false;
end;

procedure ThreadModB.Execute;
var
  po, i             : Integer;
     ModBus_rtu_over_TCP_old: Integer;
     Host_Thread_old:String;
     Port_Thread_old:Integer;
begin
  Host_Thread_old:=Host_Thread;
   Port_Thread_old:=  Port_Thread;
  Is_Connect_socket:=false;
       try
        IdTCPClient_Thread := TIdTCPClient.Create(nil);
            IdTCPClient_Thread.Host := Host_Thread;
            IdTCPClient_Thread.Port := Port_Thread;
            IdTCPClient_Thread.ReadTimeout := 6000;
            IdTCPClient_Thread.ConnectTimeout := 10000;


       finally
       end;


  Stop_Read_ComPort := false;
  repeat
    try
      if ModBus_rtu_over_TCP=0 then
      Last_TCP_Mess:='Опрос через СОМ-порт';

      if ModBus_rtu_over_TCP=0 then
      if Is_Connect_socket then
      begin
         Is_Connect_socket:=false;
         IdTCPClient_Thread.Disconnect;
      end;


      if ModBus_rtu_over_TCP=1 then
      begin
        Sleep(100);
      end;

      for i := 1 to 1 do
      begin

        Now_reading_Type_ModBus := i;
        if i = 2 then
        begin
          po := 0;
          if po = 0 then
            po := 0;
        end;
        po := 0;

        if (Stop_Read_ComPort = false) and (ModBus_Prop_Th[i].IsOpros_0xxx) then
        begin
          Now_reading_ComPort := true;
          Poling0;
          TypeRegOut := 0;
          Synchronize(Form1.TMB);
          Now_reading_ComPort := false;
          po := po + 1;
        end;
         Synchronize(Form1.Out_Last_mess);
        if (Stop_Read_ComPort = false) and (ModBus_Prop_Th[i].IsOpros_1xxx) then
        begin
          Now_reading_ComPort := true;
          Poling1;
          TypeRegOut := 1;
          Synchronize(Form1.TMB);
          Now_reading_ComPort := false;
          po := po + 1;
        end;
         Synchronize(Form1.Out_Last_mess);
        if (Stop_Read_ComPort = false) and (ModBus_Prop_Th[i].IsOpros_4xxx) then
        begin
          Now_reading_ComPort := true;
          Poling4;
          TypeRegOut := 4;
          Synchronize(Form1.TMB);
          Now_reading_ComPort := false;
          po := po + 1;
        end;
         Synchronize(Form1.Out_Last_mess);
        //3
        if (Stop_Read_ComPort = false) then
        begin
          Now_reading_ComPort := true;
          TypeRegOut := -1;
          Synchronize(Form1.TMB);
          Now_reading_ComPort := false;
        end;
        Synchronize(Form1.Out_Last_mess);
        if (Stop_Read_ComPort = false) and (NomerReg_write_4xxx>0) then
        begin
          Now_reading_ComPort := true;

          Write_reg_4xxx(NomerReg_write_4xxx, Val_write_4xxx);
          NomerReg_write_4xxx:=0;
          Now_reading_ComPort := false;
          po := po + 1;
        end;
         Synchronize(Form1.Out_Last_mess);
        if (Stop_Read_ComPort = false) and (NomerReg_write_0xxx>0) then
        begin
          Now_reading_ComPort := true;

          Write_reg_0xxx(NomerReg_write_0xxx, Val_write_0xxx);
          NomerReg_write_0xxx:=0;
          Now_reading_ComPort := false;
          po := po + 1;
        end;
         Synchronize(Form1.Out_Last_mess);
      Sleep(2);
      end;
    except

    end;

  until Terminated;


end;

end.

