unit UFunctions;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Graphics, LCLIntf, LCLType;


function TakeScreenshot(intSec:integer):TBitmap;

implementation

function TakeScreenshot(intSec:integer):TBitmap;
var
  MyBitmap: TBitmap;
  ScreenDC: HDC;
begin
  MyBitmap := TBitmap.Create;
  ScreenDC := GetDC(0);
  MyBitmap.LoadFromDevice(ScreenDC);
  ReleaseDC(0,ScreenDC);
  TakeScreenshot := MyBitmap;
end;

end.

