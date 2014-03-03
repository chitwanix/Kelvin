unit AngVel;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
TMag = record
        tu, tsym: string;
        tcons: double;
        tdef: string;
end;

var
tavel: array[1..14] of tmag;


implementation

begin
tavel[1].tu := 'Hexahertz'; tavel[1].tsym:= 'EHz'; tavel[1].tcons:= 1e18;
tavel[1].tdef:= '10ⁱ⁸ hertz.';
tavel[2].tu := 'Gigahertz'; tavel[2].tsym:= 'GHz'; tavel[2].tcons:= 1000000000;
tavel[2].tdef:= 'One billion hertz';
tavel[3].tu := 'Hertz'; tavel[3].tsym:= 'Hz'; tavel[3].tcons:= 1;
tavel[3].tdef:= 'Named after the German physicist Heinrich Hertz (1857-1894) who was the first to produce electromagnetic waves artificially. Having a periodic interval of one second.';
tavel[4].tu := 'Kilohertz'; tavel[4].tsym:= 'KHz'; tavel[4].tcons:= 1000;
tavel[4].tdef:= 'One thousand hertz.';
tavel[5].tu := 'Kiloradian per second'; tavel[5].tsym:= 'krad/s'; tavel[5].tcons:= 0.159154943092e3;
tavel[5].tdef:= 'One thousand radians per second';
tavel[6].tu := 'Megahertz'; tavel[6].tsym:= 'MHz'; tavel[6].tcons:= 1e6;
tavel[6].tdef:= 'One million hertz.';
tavel[7].tu := 'Milliradian per second'; tavel[7].tsym:= 'mrad/s'; tavel[7].tcons:= 0.159154943092e-3;
tavel[7].tdef:= '';
tavel[8].tu := 'Petahertz'; tavel[8].tsym:= 'PHz'; tavel[8].tcons:= 1e15;
tavel[8].tdef:= '10ⁱ⁵ Hertz';
tavel[9].tu := 'Radian per second'; tavel[9].tsym:= 'rad/s'; tavel[9].tcons:= 0.159154943092;
tavel[9].tdef:= 'The radian per second is defined as the change in the orientation of an object, in radians, every second. 2π radians per second is exactly 1 hertz.';
tavel[10].tu := 'Revolution per day'; tavel[10].tsym:= 'rpd'; tavel[10].tcons:= 1.15740740741e-05;
tavel[10].tdef:= '';
tavel[11].tu := 'Revolution per hour'; tavel[11].tsym:= 'rph'; tavel[11].tcons:= 0.000277777777778;
tavel[11].tdef:= '';
tavel[12].tu := 'Revolution per minute'; tavel[12].tsym:= 'rpm'; tavel[12].tcons:= 0.0166666666667;
tavel[12].tdef:= '';
tavel[13].tu := 'Revolution per second'; tavel[13].tsym:= 'rev/s'; tavel[13].tcons:= 1;
tavel[13].tdef:= '';
tavel[14].tu := 'Terahertz'; tavel[14].tsym:= 'THz'; tavel[14].tcons:= 1e12;
tavel[14].tdef:= '10ⁱ² hertz.';
end.

