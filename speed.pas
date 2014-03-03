unit speed;

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
tspeed: array[1..14] of tmag;


implementation

begin
tspeed[1].tu := 'Centimeter per second'; tspeed[1].tsym:= 'cm/s'; tspeed[1].tcons:= 1;
tspeed[1].tdef:= '';
tspeed[2].tu:= 'Foot per minute'; tspeed[2].tsym := 'ft/min'; tspeed[2].tcons:= 0.508;
tspeed[2].tdef:= '';
tspeed[3].tu:= 'Foot per second'; tspeed[3].tsym:= 'ft/s'; tspeed[3].tcons:= 30.48;
tspeed[3].tdef:= '';
tspeed[4].tu:= 'Kilometer per hour'; tspeed[4].tsym:= 'km/h'; tspeed[4].tcons:= 27.777777778;
tspeed[4].tdef:= '';
tspeed[5].tu:= 'Kilometer per second'; tspeed[5].tsym:= 'km/s'; tspeed[5].tcons:= 1e5;
tspeed[5].tdef:= '';
tspeed[6].tu:= 'Knot'; tspeed[6].tsym:= ''; tspeed[6].tcons:= 51.444444444;
tspeed[6].tdef:= 'Nautical measurement for speed as one nautical mile per hour. The number of knots which run off from the reel in half a minute, therefore, shows the number of miles the vessel sails in an hour.';
tspeed[7].tu:= 'Knot (admiralty)'; tspeed[7].tsym:= ''; tspeed[7].tcons:= 51.4773333333;
tspeed[7].tdef:= '';
tspeed[8].tu:= 'Mach (sea level, 32 deg F)'; tspeed[8].tsym:= ''; tspeed[8].tcons:= 33146.0;
tspeed[8].tdef:= '';
tspeed[9].tu:= 'Meter per second'; tspeed[9].tsym:= 'm/s'; tspeed[9].tcons:= 100;
tspeed[9].tdef:= '';
tspeed[10].tu:= 'Mile per day'; tspeed[10].tsym:= 'mi/day'; tspeed[10].tcons:= 1.862666667;
tspeed[10].tdef:= '';
tspeed[11].tu:= 'Miles per hour'; tspeed[11].tsym:= 'mi/h'; tspeed[11].tcons:= 44.704;
tspeed[11].tdef:= '';
tspeed[12].tu:= 'Miles per second'; tspeed[12].tsym:= 'mi/s'; tspeed[12].tcons:= 160934.4;
tspeed[12].tdef:= '';
tspeed[13].tu:= 'Millimeter per second'; tspeed[13].tsym:= 'mm/s'; tspeed[13].tcons:= 0.10;
tspeed[13].tdef:= '';
tspeed[14].tu:= 'Speed of light/warp'; tspeed[14].tsym:= 'c'; tspeed[14].tcons:= 29979245800;
tspeed[14].tdef:= 'The speed at which light travels in a vacuum; about 300,000 km per second; a universal constant.';
end.
