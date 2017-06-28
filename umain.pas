unit UMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TFrmMain }

  TFrmMain = class(TForm)
    ImgScreenshot: TImage;
    PnlToolsBottom: TPanel;
    PnlToolsTop: TPanel;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.lfm}

end.

