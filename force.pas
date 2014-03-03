unit force;

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
tforce: array[1..16] of tmag;


implementation

begin
tforce[1].tu := 'Atomic weight'; tforce[1].tsym:= ''; tforce[1].tcons:= 1.6283353926e-21;
tforce[1].tdef:= 'Generally understood as the weight of the hydrogen atom.';
tforce[2].tu:= 'Dyne'; tforce[2].tsym := 'dyn'; tforce[2].tcons:= 1;
tforce[2].tdef:= 'The unit of force, in the C.G.S. (Centimeter Gram Second) system of physical units; that is, the force which, acting on a gram for a second, generates a velocity of a centimeter per second.';
tforce[3].tu:= 'Gram force'; tforce[3].tsym:= 'gf'; tforce[3].tcons:= 980.665;
tforce[3].tdef:= '';
tforce[4].tu:= 'Kilogram force/kilopond'; tforce[4].tsym:= 'kgf'; tforce[4].tcons:= 980665;
tforce[4].tdef:= '';
tforce[5].tu:= 'Kilonewton'; tforce[5].tsym:= 'kN'; tforce[5].tcons:= 1e8;
tforce[5].tdef:= '';
tforce[6].tu:= 'Kip'; tforce[6].tsym:= ''; tforce[6].tcons:= 444822160;
tforce[6].tdef:= 'Kilopounds of force.';
tforce[7].tu:= 'Micronewton'; tforce[7].tsym:= 'µN'; tforce[7].tcons:= 1e-1;
tforce[7].tdef:= '';
tforce[8].tu:= 'Millinewton'; tforce[8].tsym:= 'mN'; tforce[8].tcons:= 1e2;
tforce[8].tdef:= '';
tforce[9].tu:= 'Newton'; tforce[9].tsym:= 'N'; tforce[9].tcons:= 1e5;
tforce[9].tdef:= 'Named after the English mathematician and physicist Sir Isaac Newton (1642-1727).'+char(13)+'A unit of force equal to the force that imparts an acceleration of 1 m/sec² to a mass of 1 kilogram; equal to 100,000 dynes.';
tforce[10].tu:= 'Ounce force'; tforce[10].tsym:= 'ozf'; tforce[10].tcons:= 27801.385;
tforce[10].tdef:= '';
tforce[11].tu:= 'Pound force'; tforce[11].tsym:= 'lbf'; tforce[11].tcons:= 444822.16;
tforce[11].tdef:= '';
tforce[12].tu:= 'Poundal'; tforce[12].tsym:= 'pdl'; tforce[12].tcons:= 13825.495;
tforce[12].tdef:= 'The poundal is a non-SI unit of force. It is a part of the absolute foot-pound-second system of units, a coherent subsystem of English units introduced in 1879, and one of several specialized subsystems of mechanical units used as aids in calculations.'+char(13)+'It is defined as being the force which, acting on a pound avoirdupois for one second, causes it to acquire by the of that time a velocity of one foot per second. It is about equal to the weight of half an ounce, and is 13,825 dynes.';
tforce[13].tu:= 'Sthene'; tforce[13].tsym:= 'sn'; tforce[13].tcons:= 1e8;
tforce[13].tdef:= 'Named from the Greek word sthenos, strength. One sthene is the force required to accelerate a mass of one tonne at a rate of 1 m/s2.'+char(13)+'The sthene is the unit of force in the former Soviet mts system, 1933-1955.';
tforce[14].tu:= 'Ton of force (long)'; tforce[14].tsym:= 'tnf'; tforce[14].tcons:= 996401638.4;
tforce[14].tdef:= 'Ton of force of USA.';
tforce[15].tu:= 'Ton of force (short)'; tforce[15].tsym:= 'tnf'; tforce[15].tcons:= 889644320;
tforce[15].tdef:= 'It is equivalent to 2000 pounds of force.';
tforce[16].tu:= 'Tonne of force (metric)'; tforce[16].tsym:= ''; tforce[16].tcons:= 980665000.0;
tforce[16].tdef:= 'Metric ton of force. Equivalent to 1000 kilonewtons.';
end.
