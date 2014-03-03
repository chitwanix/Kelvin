unit aphys;

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
taphys: array[1..17] of tmag;

implementation

begin
taphys[1].tu := 'GeV Giga electronvolt'; taphys[1].tsym:= 'Gev'; taphys[1].tcons:= 1.60217656535e-3;
taphys[1].tdef:= '';
taphys[2].tu:= 'MeV Mega electronvolt'; taphys[2].tsym := 'MeV'; taphys[2].tcons:= 1.60217656535e-6;
taphys[2].tdef:= '';
taphys[3].tu:= 'Rydberg constant'; taphys[3].tsym:= 'R∞/RH'; taphys[3].tcons:= 2.17987217269236e-11;
taphys[3].tdef:= 'Named after the Swedish physicist Johannes Robert Rydberg (1854-1919). A wave number characteristic of the wave spectrum of each element.';
taphys[4].tu:= 'Atomic mass unit'; taphys[4].tsym:= 'amu'; taphys[4].tcons:= 0.00149156166435;
taphys[4].tdef:= '';
taphys[5].tu:= 'Electron rest mass'; taphys[5].tsym:= ''; taphys[5].tcons:= 8.18262526798e-07;
taphys[5].tdef:= '';
taphys[6].tu:= 'Electronvolt'; taphys[6].tsym:= 'eV'; taphys[6].tcons:= 1.60217656535e-12; //6.2415e11; 624497075113
taphys[6].tdef:= 'A unit of energy equal to the work done by an electron accelerated through a potential difference of 1 volt.';
taphys[7].tu:= 'Erg'; taphys[7].tsym:= ''; taphys[7].tcons:= 1;
taphys[7].tdef:= 'The unit of work or energy in the C. G. S. system, being the amount of work done by a dyne working through a distance of one centimeter; the amount of energy expended in moving a body one centimeter against a force of one dyne.'+char(13)+'One foot pound is equal to 13,560,000 ergs.';
taphys[8].tu:= 'Hertz'; taphys[8].tsym:= 'Hz'; taphys[8].tcons:= 6.62247731377e-27;
taphys[8].tdef:= '';
taphys[9].tu:= 'Joule'; taphys[9].tsym:= ''; taphys[9].tcons:= 1e7;
taphys[9].tdef:= 'Named after the English physicist James Prescott Joule (1818-1889).'+char(13)+'A unit of work which is equal to 10^7 units of work in the C. G. S. system of units (ergs), and is practically equivalent to the energy expended in one second by an electric current of one ampere in a resistance of one ohm.'+char(13)+'One joule is approximately equal to 0.738 foot pounds.';
taphys[10].tu:= 'Kayser or cm⁻¹'; taphys[10].tsym:= 'K'; taphys[10].tcons:= 1.98536903009e-16;
taphys[10].tdef:= 'Named after the German physicist Heinrich Gustav Johannes Kayser (1853-1940).'+char(13)+'Used to measure light and other electromagnetic waves. The "wave number" in kaysers equals the number of wavelengths per centimeter.';
taphys[11].tu:= 'Kelvin'; taphys[11].tsym:= 'K'; taphys[11].tcons:= 1.37990217658e-16;
taphys[11].tdef:= 'The basic unit of thermodynamic temperature adopted under Le Système international d''unités';
taphys[12].tu:= 'Kilogram'; taphys[12].tsym:= 'Kg'; taphys[12].tcons:= 8.98755430563e+23;
taphys[12].tdef:= '';
taphys[13].tu:= 'm⁻¹'; taphys[13].tsym:= ''; taphys[13].tcons:= 1.98536903009e-18;
taphys[13].tdef:= '';
taphys[14].tu:= 'Millikayser'; taphys[14].tsym:= ''; taphys[14].tcons:= 1.98536903009e-19;
taphys[14].tdef:= '';
taphys[15].tu:= 'Neutron mass unit'; taphys[15].tsym:= ''; taphys[15].tcons:= 0.00150447832349;
taphys[15].tdef:= '';
taphys[16].tu:= 'Proton mass unit'; taphys[16].tsym:= ''; taphys[16].tcons:= 0.00150242000808;
taphys[16].tdef:= '';
taphys[17].tu:= 'Radian per second'; taphys[17].tsym:= 'rad/s'; taphys[17].tcons:= 1.054e-27;
end.

