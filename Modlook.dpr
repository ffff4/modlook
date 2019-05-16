program Modlook;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

uses
{$IFnDEF FPC}
{$ELSE}
  Interfaces,
{$ENDIF}
  Forms,
  Modbus in 'Modbus.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  ThreadMB in 'ThreadMB.pas';

{$R *.res}

begin
  Application.Initialize;
  Form2 := TForm2.Create(Application);
  Form2.Show;
  Form2.Update;
  Application.Title := 'Мониторинг ModBus-устройства';
  Application.CreateForm(TForm1, Form1);


  Application.Run;
end.

