unit echarge;

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
tech: array[1..9] of tmag;


implementation

begin
tech[1].tu := 'Abcoulomb'; tech[1].tsym:= 'abC/aC'; tech[1].tcons:= 10;
tech[1].tdef:= 'The abcoulomb (abC or aC) or electromagnetic unit of charge (emu of charge), is the basic physical unit of electric charge in the cgs-emu system of units.'+char(13)+'One abcoulomb is equal to ten coulombs.';
tech[2].tu:= 'Ampere-hour'; tech[2].tsym := 'Ah/AHr/A·h/A h'; tech[2].tcons:= 3600;
tech[2].tdef:= 'An ampere-hour or amp-hour is a unit of electric charge, with sub-units milliampere-hour (mAh) and milliampere second (mAs).'+char(13)+'One ampere-hour is equal to 3600 coulombs.'+char(13)+'The ampere-hour is frequently used in measurements of electrochemical systems such as electroplating and electrical batteries.';
tech[3].tu:= 'Coulomb (Weber)'; tech[3].tsym:= 'C'; tech[3].tcons:= 1;
tech[3].tdef:= 'Named after the French physicist and electrican Coulomb. (Physics) The standard unit of quantity in electrical measurements.'+char(13)+'It is the quantity of electricity conveyed in one second by the current produced by an electro-motive force of one volt acting in a circuit having a resistance of one ohm, or the quantity transferred by one ampère in one second.'+char(13)+'Formerly called weber.';
tech[4].tu:= 'Electron charge'; tech[4].tsym:= ''; tech[4].tcons:= 1.60217656535e-19;
tech[4].tdef:= '';
tech[5].tu:= 'Faraday'; tech[5].tsym:= 'F'; tech[5].tcons:= 96500;
tech[5].tdef:= 'Named after Michael Faraday the The English physicist and chemist who discovered electromagnetic induction (1791-1867).'+char(13)+'The amount of electric charge that liberates one gram equivalent of any ion from an electrolytic solution.';
tech[6].tu:= 'Kilocoulomb'; tech[6].tsym:= 'kC'; tech[6].tcons:= 1000;
tech[6].tdef:= '';
tech[7].tu:= 'Microcoulomb'; tech[7].tsym:= 'µC'; tech[7].tcons:= 1e-6;
tech[7].tdef:= '';
tech[8].tu:= 'Nanocoulomb'; tech[8].tsym:= 'nC'; tech[8].tcons:= 1e-9;
tech[8].tdef:= '';
tech[9].tu:= 'Statcoulomb'; tech[9].tsym:= 'sC/statC/Fr/esu'; tech[9].tcons:= 3.335641e-10;   //3.33333333333e-10;
tech[9].tdef:= 'The statcoulomb (statC) or franklin (Fr) or electrostatic unit of charge (esu) is the physical unit for electrical charge used in the centimetre-gram-second system of units (cgs) and Gaussian units.';
end.
