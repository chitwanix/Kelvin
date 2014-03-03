unit dens;

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
tdens: array[1..25] of TMag;

implementation
begin
// master unit gram per cubic centimeter or metric ton per cubic meter
tdens[1].tu := 'Aluminum'; tdens[1].tsym:= 'Al'; tdens[1].tcons:= 2.643;
tdens[1].tdef:= 'Enter 1 here to find the density of aluminum.';
tdens[2].tu:= 'Copper'; tdens[2].tsym := 'Cu'; tdens[2].tcons:= 8.906;
tdens[2].tdef:= 'Enter 1 here to find the density of copper.';
tdens[3].tu:= 'Gold'; tdens[3].tsym:= 'Au'; tdens[3].tcons:= 19.3;
tdens[3].tdef:= 'Enter 1 here to find the density of gold.';
tdens[4].tu:= 'Gram per cubic centimeter'; tdens[4].tsym:= 'g/cm³'; tdens[4].tcons:= 1;
tdens[4].tdef:= '';
tdens[5].tu:= 'Gram per cubic meter'; tdens[5].tsym:= 'g/m³'; tdens[5].tcons:= 1e-6;
tdens[5].tdef:= '';
tdens[6].tu:= 'Iron'; tdens[6].tsym:= 'Fe'; tdens[6].tcons:= 7.658;
tdens[6].tdef:= 'Enter 1 here to find the density of iron.';
tdens[7].tu:= 'Kilogram per cubic cm'; tdens[7].tsym:= 'kg/cm³'; tdens[7].tcons:= 1e3;
tdens[7].tdef:= 'The unit of work or energy in the C. G. S. system, being the amount of work done by a dyne working through a distance of one centimeter; the amount of energy expended in moving a body one centimeter against a force of one dyne.'+char(13)+'One foot pound is equal to 13,560,000 ergs.';
tdens[8].tu:= 'Kilogram per cubic meter'; tdens[8].tsym:= 'kg/m³'; tdens[8].tcons:= 10e-4;
tdens[8].tdef:= '';
tdens[9].tu:= 'Kilogram per liter'; tdens[9].tsym:= 'kg/l'; tdens[9].tcons:= 1;
tdens[9].tdef:= '';
tdens[10].tu:= 'Lead'; tdens[10].tsym:= 'Pb'; tdens[10].tcons:= 11.37;
tdens[10].tdef:= 'Enter 1 here to find the density of lead.';
tdens[11].tu:= 'Metric ton per cubic meter'; tdens[11].tsym:= 'metric ton/m³'; tdens[11].tcons:= 1;
tdens[11].tdef:= '';
tdens[12].tu:= 'Milligram per cubic meter'; tdens[12].tsym:= 'mg/m³'; tdens[12].tcons:= 1e-09;
tdens[12].tdef:= '';
tdens[13].tu:= 'Ounces per gallon (UK)'; tdens[13].tsym:= 'oz/gal'; tdens[13].tcons:= 0.006236023;
tdens[13].tdef:= '';
tdens[14].tu:= 'Ounces per gallon (US)'; tdens[14].tsym:= 'oz/gal'; tdens[14].tcons:= 0.007489152;
tdens[14].tdef:= '';

tdens[15].tu:= 'Pound mass per gallon (UK)'; tdens[15].tsym:= 'lbm/gal'; tdens[15].tcons:= 0.099776366;
tdens[15].tdef:= 'Pounds mass per UK liquid gallon.';
tdens[16].tu:= 'Pound mass per gallon (US)'; tdens[16].tsym:= 'lbm/gal'; tdens[16].tcons:= 0.119826427;
tdens[16].tdef:= 'Pounds mass per US liquid gallon.';
tdens[17].tu:= 'Pound per cubic foot'; tdens[17].tsym:= 'lbm/ft³'; tdens[17].tcons:= 0.016018464;
tdens[17].tdef:= 'Pounds mass per cubic foot.';
tdens[18].tu:= 'Pound per cubic inch'; tdens[18].tsym:= 'lbm/in³'; tdens[18].tcons:= 276.799047102;
tdens[18].tdef:= 'Pounds mass per cubic inch.';
tdens[19].tu:= 'Silver'; tdens[19].tsym:= 'Ag'; tdens[19].tcons:= 10.51;
tdens[19].tdef:= 'Enter 1 here to find the density of silver';
tdens[20].tu:= 'Slug per cubic feet'; tdens[20].tsym:= 'slug/ft³'; tdens[20].tcons:= 0.5153788;
tdens[20].tdef:= '';
tdens[21].tu:= 'Ton (UK/long) per cubic foot'; tdens[21].tsym:= 'ton/ft³'; tdens[21].tcons:= 35.881360407;
tdens[21].tdef:= '';
tdens[22].tu:= 'Ton (UK/long) per cubic yard'; tdens[22].tsym:= 'ton/yd³'; tdens[22].tcons:= 1.328939184;
tdens[22].tdef:= '';
tdens[23].tu:= 'Ton (US/short) per cubic foot'; tdens[23].tsym:= 'ton/ft³'; tdens[23].tcons:= 32.036928935;
tdens[23].tdef:= '';
tdens[24].tu:= 'Ton (US/short) per cubic yard'; tdens[24].tsym:= 'ton/yd³'; tdens[24].tcons:= 1.186552843;
tdens[24].tdef:= '';
tdens[25].tu:= 'Water at 4 degrees'; tdens[25].tsym:= 'H₂O at 4º'; tdens[25].tcons:= 1;
tdens[25].tdef:= 'Enter 1 here to find the density of water at 4 degress. '+'Water weights 1 gram per cm³.';
end.

