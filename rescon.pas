unit rescon;

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
trcon: array[1..14] of tmag;


implementation

begin
trcon[1].tu := 'Abmho'; trcon[1].tsym:= 'abmho'; trcon[1].tcons:= 1e-9;
trcon[1].tdef:= 'A unit of conductance in the electromagnetic centimeter-gram-second system of units equal to 10⁹ mhos. Abbreviated (aΩ)⁻ⁱ. Also known as absiemens (aS).';
trcon[2].tu:= 'Abohm'; trcon[2].tsym := 'ab ohm'; trcon[2].tcons:= 1e-9;
trcon[2].tdef:= 'The unit of electrical resistance in the centimeter-gram-second system; 1 abohm equals 10⁻⁹ ohm in the meter-kilogram-second system. Abbreviated aΩ.';
trcon[3].tu:= 'Gigaohm'; trcon[3].tsym:= 'G ohm'; trcon[3].tcons:= 1e9;
trcon[3].tdef:= 'One billion ohms.';
trcon[4].tu:= 'Kilohm'; trcon[4].tsym:= 'k ohm'; trcon[4].tcons:= 1e3;
trcon[4].tdef:= 'One thousand ohms.';
trcon[5].tu:= 'Megaohm'; trcon[5].tsym:= 'M ohm'; trcon[5].tcons:= 1e6;
trcon[5].tdef:= 'One million ohms.';
trcon[6].tu:= 'Microhm'; trcon[6].tsym:= 'µ ohm'; trcon[6].tcons:= 1e-6;
trcon[6].tdef:= 'One millionth of an ohm.';
trcon[7].tu:= 'Microsiemens/micromho'; trcon[7].tsym:= 'µS'; trcon[7].tcons:= 1e-6;
trcon[7].tdef:= 'It is an alternative name for the microhm.';
trcon[8].tu:= 'Milliohm'; trcon[8].tsym:= 'm ohm'; trcon[8].tcons:= 1e-3;
trcon[8].tdef:= 'One thousandth of an ohm.';
trcon[9].tu:= 'Millisiemens/millimho'; trcon[9].tsym:= 'mS'; trcon[9].tcons:= 1e3;
trcon[9].tdef:= 'Alternative name of the milliohm.';
trcon[10].tu:= 'Nanohm'; trcon[10].tsym:= 'n ohm'; trcon[10].tcons:= 1e-9;
trcon[10].tdef:= 'One billionth of an ohm.';
trcon[11].tu:= 'Ohm'; trcon[11].tsym:= 'Ohm/Ω'; trcon[11].tcons:= 1;
trcon[11].tdef:= 'Named after the German physicist Georg Simon Ohm (1787-1854). The standard unit in the measure of electrical resistance, being the resistance of a circuit in which a potential difference of one volt produces a current of one ampere.'+char(13)+'As defined by the International Electrical Congress in 1893, and by United States Statute, it is a resistance substantially equal to 10⁹ units of resistance of the C.G.S. system of electro-magnetic units, '+'and is represented by the resistance offered to an unvarying electric current by a column of mercury at the temperature of melting ice 14.4521 grams in mass, '+'of a constant cross-sectional area, and of the length of 106.3 centimeters. As thus defined it is called the international ohm.';
trcon[12].tu:= 'Siemens/mho'; trcon[12].tsym:= 'S/Ʊ'; trcon[12].tcons:= 1;
trcon[12].tdef:= 'Mho is an alternative name of ohm. Mho is derived from spelling ohm backwards and is written with an upside-down capital Greek letter Omega: ℧. The term mho was suggested by Sir William Thomson.'+char(13)+'The mho was officially renamed to the siemens, replacing the old meaning of the "siemens unit", at a conference in 1881.';
trcon[13].tu:= 'Statmho'; trcon[13].tsym:= ''; trcon[13].tcons:= 899000000000.0;
trcon[13].tdef:= 'The unit of conductance, admittance, and susceptance in the electrostatic centimeter-gram-second system of units, equal to the conductance between two points of a conductor when a '+'constant potential difference of 1 statvolt applied between the points produces in this conductor a current of 1 statampere, '+'the conductor not being the source of any electromotive force; equal to approximately 1.1126 × 10¯¹² (-12) mho.'+char(13)+'Abbreviated stat℧. Also known as statsiemens (statS).';
trcon[14].tu:= 'Statohm'; trcon[14].tsym:= ''; trcon[14].tcons:= 899000000000.0;
trcon[14].tdef:= 'The unit of resistance, reactance, and impedance in the electrostatic centimeter-gram-second system of units, equal to the resistance between two points of a conductor '+'when a constant potential difference of 1 statvolt between these points produces a current of 1 statampere; it is equal to approximately 8.9876 × 10¹¹ (11) ohms.'+char(13)+'Abbreviated statΩ.';
end.
