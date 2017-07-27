unit UMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, UFunctions;

type

  { TFrmMain }

  TFrmMain = class(TForm)
    BtnCapture: TButton;
    ImgScreenshot: TImage;
    PnlToolsBottom: TPanel;
    PnlToolsTop: TPanel;
    procedure BtnCaptureClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmMain: TFrmMain;
  BmpScreenshot: TBitmap;

implementation

{$R *.lfm}

{ TFrmMain }

procedure TFrmMain.BtnCaptureClick(Sender: TObject);
begin
  //Call the Capture Function depending on what the user selected.


  //Basic Screenshot
  BmpScreenshot := TBitmap.Create;
  BmpScreenshot := UFunctions.TakeScreenshot(1);
  BmpScreenshot.SaveToFile('tmp.bpm');

  ImgScreenshot.Height := BmpScreenshot.Canvas.Height;
  ImgScreenshot.Width := BmpScreenshot.Canvas.Width;
  //ImgScreenshot.Canvas.Height := BmpScreenshot.Canvas.Height;
  //ImgScreenshot.Canvas.Width := BmpScreenshot.Canvas.Width;
  ImgScreenshot.Canvas.Draw(0,0,BmpScreenshot);


end;

end.

