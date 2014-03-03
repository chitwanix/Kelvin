unit tque;

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
ttque: array[1..17] of tmag;


implementation

begin
ttque[1].tu := 'Centimeter gram'; ttque[1].tsym:= 'cm·g'; ttque[1].tcons:= 980.665;
ttque[1].tdef:= '';
ttque[2].tu:= 'Dyne centimeter'; ttque[2].tsym := 'dyne·cm'; ttque[2].tcons:= 1;
ttque[2].tdef:= '';
ttque[3].tu:= 'Foot ounce'; ttque[3].tsym:= 'oz·ft'; ttque[3].tcons:= 847386.22;
ttque[3].tdef:= '';
ttque[4].tu:= 'Foot poundal'; ttque[4].tsym:= ''; ttque[4].tcons:= 421401.09975;
ttque[4].tdef:= '';
ttque[5].tu:= 'Foot pounds'; ttque[5].tsym:= 'lbf·ft'; ttque[5].tcons:= 13558179.52;
ttque[5].tdef:= '';
ttque[6].tu:= 'Inch ounces'; ttque[6].tsym:= 'in·oz'; ttque[6].tcons:= 70615.518333;
ttque[6].tdef:= '';
ttque[7].tu:= 'Inch pounds'; ttque[7].tsym:= 'in·lb'; ttque[7].tcons:= 1129848.2933;
ttque[7].tdef:= '';
ttque[8].tu:= 'Joules'; ttque[8].tsym:= 'J'; ttque[8].tcons:= 1e7;
ttque[8].tdef:= '';
ttque[9].tu:= 'Kilo newton meter'; ttque[9].tsym:= 'kN·m'; ttque[9].tcons:= 1e10;
ttque[9].tdef:= '';
ttque[10].tu:= 'Kilogram meter'; ttque[10].tsym:= 'kg·m'; ttque[10].tcons:= 98066500;
ttque[10].tdef:= '';
ttque[11].tu:= 'Kip'; ttque[11].tsym:= ''; ttque[11].tcons:= 1130000000.0;
ttque[11].tdef:= 'One thousand inch pounds.';
ttque[12].tu:= 'Mega newton meter'; ttque[12].tsym:= 'MN·m'; ttque[12].tcons:= 1e13;
ttque[12].tdef:= '';
ttque[13].tu:= 'Meter kilopond'; ttque[13].tsym:= 'mkp'; ttque[13].tcons:= 98066500;
ttque[13].tdef:= '';
ttque[14].tu:= 'Micro newton meter'; ttque[14].tsym:= 'µN·m'; ttque[14].tcons:= 10;
ttque[14].tdef:= '';
ttque[15].tu:= 'Milli newton meter'; ttque[15].tsym:= 'mN·m'; ttque[15].tcons:= 1e4;
ttque[15].tdef:= '';
ttque[16].tu:= 'Newton centimeter'; ttque[16].tsym:= 'N·cm'; ttque[16].tcons:= 1e5;
ttque[16].tdef:= '';
ttque[17].tu:= 'Newton meter'; ttque[17].tsym:= 'N·m'; ttque[17].tcons:= 1e7;
ttque[17].tdef:= 'A newton metre is a unit of torque (also called "moment") in the SI system. The symbolic form is N m or N·m.'+char(13)+'One newton metre, sometimes hyphenated newton-metre, is equal to the torque resulting from a force of one newton applied perpendicularly to a moment arm which is one metre long.';
end.
