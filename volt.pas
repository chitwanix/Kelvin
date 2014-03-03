unit volt;

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
tvolt: array[1..9] of tmag;


implementation

begin
tvolt[1].tu := 'Abvolt'; tvolt[1].tsym:= 'abV'; tvolt[1].tcons:= 1e-08;
tvolt[1].tdef:= 'The unit of electromotive force in the electromagnetic centimeter-gram-second system; 1 abvolt equals 10⁻⁸ volt in the absolute meter-kilogram-second system. Abbreviated aV or abV.';
tvolt[2].tu:= 'Gigavolt'; tvolt[2].tsym := 'GV'; tvolt[2].tcons:= 1e9;
tvolt[2].tdef:= 'One billionth volts.';
tvolt[3].tu:= 'Kilovolt'; tvolt[3].tsym:= 'kV'; tvolt[3].tcons:= 1e3;
tvolt[3].tdef:= 'One thousand volts.';
tvolt[4].tu:= 'Megavolt'; tvolt[4].tsym:= 'MV'; tvolt[4].tcons:= 1e6;
tvolt[4].tdef:= 'One million volts.';
tvolt[5].tu:= 'Microvolt'; tvolt[5].tsym:= 'µV'; tvolt[5].tcons:= 1e-6;
tvolt[5].tdef:= 'One millionth of a volt.';
tvolt[6].tu:= 'Millivolt'; tvolt[6].tsym:= 'mV'; tvolt[6].tcons:= 1e-3;
tvolt[6].tdef:= 'One thousandth of a volt.';
tvolt[7].tu:= 'Nanovolt'; tvolt[7].tsym:= 'nV'; tvolt[7].tcons:= 1e-9;
tvolt[7].tdef:= 'One billionth of a volt.';
tvolt[8].tu:= 'Statvolt'; tvolt[8].tsym:= 'statV'; tvolt[8].tcons:= 299.792458;
tvolt[8].tdef:= 'The statvolt is a unit of voltage and electrical potential used in the cgs system of units.'+char(13)+'The conversion to the SI system is 1 statvolt = 299.792458 volts. (The conversion factor 299.792458 is simply the numerical value of the speed of light in m/s divided by 10⁶.'+char(13)+'The statvolt is also defined in the cgs system as 1 erg / esu.';
tvolt[9].tu:= 'Volt'; tvolt[9].tsym:= 'V'; tvolt[9].tcons:= 1;
tvolt[9].tdef:= 'Named after the Italian electrician Alessandro Volta.'+char(13)+'The unit of electro-motive force; defined by the International Electrical Congress in 1893 and by United States Statute as, that electro-motive force '+'''which steadily applied to a conductor whose resistance is one ohm will produce a current of one ampere.'+char(13)+'It is practically equivalent to 1000/1434 the electro-motive force of a standard Clark''s cell at a temperature of 15 deg C.';
end.
