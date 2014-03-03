unit accel;

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
taccel: array[1..6] of tmag;


implementation

begin
taccel[1].tu := 'Centimeter per second squared'; taccel[1].tsym:= 'cm/s²'; taccel[1].tcons:= 10;
taccel[1].tdef:= '';
taccel[2].tu := 'Foot per second squared'; taccel[2].tsym:= 'ft/s²'; taccel[2].tcons:= 304.8;
taccel[2].tdef:= '';
taccel[3].tu := 'Free fall'; taccel[3].tsym:= 'gn'; taccel[3].tcons:= 9806.65;
taccel[3].tdef:= 'The ideal falling motion of a body that is subject only to the earth''s gravitational field.';
taccel[4].tu := 'Gal'; taccel[4].tsym:= 'Gal'; taccel[4].tcons:= 10;
taccel[4].tdef:= 'A unit of gravitational acceleration equal to one centimeter per second per second (named after Galileo)';
taccel[5].tu := 'Meter per second squared'; taccel[5].tsym:= 'm/s²'; taccel[5].tcons:= 1000;
taccel[5].tdef:= '';
taccel[6].tu := 'Millimeter per second squared'; taccel[6].tsym:= 'mm/s²'; taccel[6].tcons:= 1;
taccel[6].tdef:= '';

end.

