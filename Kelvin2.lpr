program Kelvin2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, cur, press, cdata, visc, prefx, angvel, force, volliq,
  echarge, angle, accel, work, cloop, tque, cnum, shoe, mus, len, emr, vol,
  dens, area, time, ind, aphys, fuelc, kelvin, volt, aboutk, flowd,
  power, ksplash, lux, speed, magnf, cap, cdflow, rescon, maink, temp,
  flowld, mass
  { you can add units after this };

{$R *.res}

begin
    Application.Title:='Kelvin';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.Run;
end.

