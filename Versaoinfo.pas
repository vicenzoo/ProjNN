unit Versaoinfo;

interface

uses
  System.SysUtils, Winapi.Windows;
  function Versao(const FileName: string): String;

implementation

uses PrincNN;


function Versao(const FileName: string): String;
var
 VerInfoSize, VerValueSize, Dummy: Dword;
 VerInfo: Pointer;
 VerValue: PVSFixedFileInfo;
 V1, V2, V3, V4: Word;
begin
 VerInfoSize:=GetFileVersionInfoSize(PChar(FileName),Dummy);
 GetMem(VerInfo,VerInfoSize);
 GetFileVersionInfo(PChar(FileName),0,VerInfoSize,VerInfo);
 VerQueryValue(VerInfo,'',Pointer(VerValue),VerValueSize);
 with VerValue^ do
 begin
  V1:=dwFileVersionMS shr 16;
  V2:=dwFileVersionMS and $FFFF;
  V3:=dwFileVersionLS shr 16;
  V4:=dwFileVersionLS and $FFFF;
 end;
 FreeMem(VerInfo,VerInfoSize);
 Versao:=IntToStr(v1)+'.'+IntToStr(v2)+'.'+IntToStr(v3)+'.'+IntToStr(v4);
end;

end.
