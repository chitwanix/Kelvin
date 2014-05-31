unit ksplash;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls;

type

  { Tksplash }

  { Tsplash }

  Tsplash = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
Splash: TSplash;

implementation

{ TSplash }

procedure Tsplash.FormActivate(Sender: TObject);
begin
     sleep(1000);
end;

initialization
  {$I ksplash.lrs}

end.

