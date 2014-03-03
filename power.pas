unit power;

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
tpower: array[1..20] of tmag;


implementation

begin
tpower[1].tu := 'Btu per hour'; tpower[1].tsym:= 'Btu/h'; tpower[1].tcons:= 2930710.70172;
tpower[1].tdef:= '';
tpower[2].tu:= 'Btu per second'; tpower[2].tsym := 'Btu/s'; tpower[2].tcons:= 10550558526.2;
tpower[2].tdef:= '';
tpower[3].tu:= 'Calorie per second'; tpower[3].tsym:= 'cal/s'; tpower[3].tcons:= 41868000.0;
tpower[3].tdef:= '';
tpower[4].tu:= 'Dyne centimeter per second'; tpower[4].tsym:= ''; tpower[4].tcons:= 1;
tpower[4].tdef:= '';
tpower[5].tu:= 'Erg per second'; tpower[5].tsym:= 'erg/s'; tpower[5].tcons:= 1;
tpower[5].tdef:= '';
tpower[6].tu:= 'Foot pound force per minute'; tpower[6].tsym:= 'ft·lbf/min'; tpower[6].tcons:= 225969.658054906;
tpower[6].tdef:= '';
tpower[7].tu:= 'Foot pound force per second'; tpower[7].tsym:= 'ft·lbf/s'; tpower[7].tcons:= 13560000.0;
tpower[7].tdef:= '';
tpower[8].tu:= 'Frig per hour'; tpower[8].tsym:= 'frig/h'; tpower[8].tcons:= 11630000.0;
tpower[8].tdef:= 'The same as kcal/h, but used for air conditioning and refrigerating.';
tpower[9].tu:= 'Horsepower'; tpower[9].tsym:= 'hp'; tpower[9].tcons:= 7460000000.0;
tpower[9].tdef:= '';
tpower[10].tu:= 'Horsepower (boiler)'; tpower[10].tsym:= ''; tpower[10].tcons:= 98100000000.0;
tpower[10].tdef:= 'A unit of power representing the power exerted by a horse in pulling.';
tpower[11].tu:= 'Joule per second'; tpower[11].tsym:= 'J/s'; tpower[11].tcons:= 1e7;
tpower[11].tdef:= '';
tpower[12].tu:= 'Kilocalorie per hour'; tpower[12].tsym:= 'kcal/h'; tpower[12].tcons:= 11630000.0;
tpower[12].tdef:= 'Useful for calculating heating facilities and kitchens.';
tpower[13].tu:= 'Kilowatt'; tpower[13].tsym:= 'kW'; tpower[13].tcons:= 1e10;
tpower[13].tdef:= '';
tpower[14].tu:= 'Lusec'; tpower[14].tsym:= ''; tpower[14].tcons:= 1333.22368421;
tpower[14].tdef:= 'Used to measure the leakage of vacuum pumps.'+char(13)+'A flow of one liter per second at a pressure of one micrometer of mercury.';
tpower[15].tu:= 'Megawatt'; tpower[15].tsym:= 'MW'; tpower[15].tcons:= 1e13;
tpower[15].tdef:= 'A million watts.';
tpower[16].tu:= 'Microwatt'; tpower[16].tsym:= 'µW'; tpower[16].tcons:= 10;
tpower[16].tdef:= '10¯⁶ watt.';
tpower[17].tu:= 'Milliwatt'; tpower[17].tsym:= 'mW'; tpower[17].tcons:= 10000;
tpower[17].tdef:= 'A Thousandth of a watt.';
tpower[18].tu:= 'Newton meter per second'; tpower[18].tsym:= 'N·m/s'; tpower[18].tcons:= 1e7;
tpower[18].tdef:= '';
tpower[19].tu:= 'Ton of refrigeration'; tpower[19].tsym:= 'TR'; tpower[19].tcons:= 35168528420.7;
tpower[19].tdef:= '';
tpower[20].tu:= 'Watt'; tpower[20].tsym:= 'W'; tpower[20].tcons:= 1e7;
tpower[20].tdef:= 'Named after the Scottish engineer and inventor James Watt (1736-1819). A unit of power or activity equal to 10⁷ C.G.S. units of power, or to work done at the rate of one joule a second.';
end.
