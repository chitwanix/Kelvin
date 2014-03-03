unit emr;

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
temr: array[1..14] of tmag;

implementation

function htom(b :double) :double;
begin
     result:= 299792458/b
end;

begin
temr[1].tu := 'Ångström (Angstrom)'; temr[1].tsym:= 'Å'; temr[1].tcons:= 1e-10;
temr[1].tdef:= 'Equal to one ten billionth of a meter (or 0.0001 micron); used to specify wavelengths of electromagnetic radiation.';
temr[2].tu:= 'Centimeter'; temr[2].tsym := 'cm'; temr[2].tcons:= 1e-2;
temr[2].tdef:= 'One hundredth of a meter.';
temr[3].tu:= 'Electron Volt'; temr[3].tsym:= 'eV'; temr[3].tcons:= 2.41799374223e+14;
temr[3].tdef:= 'Energy. e=höf where h = Planck constant (4.13566 x 10^-15 electron volts/second). f = frequency in Hertz.';
temr[4].tu:= 'Exahertz'; temr[4].tsym:= 'EHz'; temr[4].tcons:= 1e18;
temr[4].tdef:= '10ⁱ⁸ hertz.';
temr[5].tu:= 'Gigahertz'; temr[5].tsym:= 'GHz'; temr[5].tcons:= 1e9;
temr[5].tdef:= 'One thousand megahertz.';
temr[6].tu:= 'Hertz'; temr[6].tsym:= 'Hz'; temr[6].tcons:= 1;
temr[6].tdef:= 'Named after the German physicist Heinrich Hertz (1857-1894) who was the first to produce electromagnetic waves artificially. Having a periodic interval of one second.';
temr[7].tu:= 'Kilohertz'; temr[7].tsym:= 'kHz'; temr[7].tcons:= 1e3;
temr[7].tdef:= 'One thousand hertz.';
temr[8].tu:= 'Megahertz'; temr[8].tsym:= 'MHz'; temr[8].tcons:= 1e6;
temr[8].tdef:= 'One million hertz.';

temr[9].tu:= 'Meter'; temr[9].tsym:= 'm'; temr[9].tcons:= 1;  //299792458
temr[9].tdef:= 'Equal to 39.37 English inches, the standard of linear measure in the metric system of weights and measures. '+'It was intended to be, and is very nearly, the ten millionth part of the distance from the equator to the north pole, as ascertained by actual measurement of an arc of a meridian.';
temr[10].tu:= 'Micrometer/micron'; temr[10].tsym:= 'µm'; temr[10].tcons:= 1e-6;
temr[10].tdef:= 'A metric unit of length equal to one millionth of a meter. The thousandth part of one millimeter.';
temr[11].tu:= 'Millimeter'; temr[11].tsym:= 'mm'; temr[11].tcons:= 1e-3;
temr[11].tdef:= '';
temr[12].tu:= 'Nanometer'; temr[12].tsym:= 'nm'; temr[12].tcons:= 1e-9;
temr[12].tdef:= 'A metric unit of length equal to one billionth of a meter.';
temr[13].tu:= 'Petahertz'; temr[13].tsym:= 'PHz'; temr[13].tcons:= 1e15;
temr[13].tdef:= '10¹⁵ hertz.';
temr[14].tu:= 'Terahertz'; temr[14].tsym:= 'THz'; temr[14].tcons:= 1e12;
temr[14].tdef:= '10¹² hertz.';
end.
