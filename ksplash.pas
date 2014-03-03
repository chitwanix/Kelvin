unit ksplash;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls;

type

  { Tksplash }

  Tsplash = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
Splash: TSplash;

implementation

{ TSplash }

initialization
  {$I ksplash.lrs}

end.

