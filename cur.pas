unit cur;

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
tcur: array[1..9] of tmag;


implementation

begin
tcur[1].tu := 'Abampere'; tcur[1].tsym:= 'Aa/Biot/abA'; tcur[1].tcons:= 10;
tcur[1].tdef:= 'The abampere (aA), also called the biot after Jean-Baptiste Biot, is the basic electromagnetic unit of electric current in the emu-cgs system of units (electromagnetic cgs). One abampere is equal to ten amperes in the SI system of units.'+char(13)+'An abampere of current in a circular path of one centimeter radius produces a magnetic field of 2 π oersteds at the center of the circle.';
tcur[2].tu:= 'Ampere'; tcur[2].tsym := 'A'; tcur[2].tcons:= 1;
tcur[2].tdef:= 'The unit of electric current; defined by the International Electrical Congress in 1893 and by U. S. Statute as, one tenth of the unit of current of the C. G. S. system of electro-magnetic units, '+'or the practical equivalent of the unvarying current which, when passed through a standard solution of nitrate of silver in water, deposits silver at the rate of 0.001118 grams per second.'+char(13)+'It is named after André-Marie Ampère (1775-1836), French mathematician and physicist, considered the father of electrodynamics.';
tcur[3].tu:= 'Coulomb per second'; tcur[3].tsym:= ''; tcur[3].tcons:= 1;
tcur[3].tdef:= 'The ampere is equal to Coulomb per second, which is a measure of the amount of electric charge passing a point in an electric circuit per unit time which is equivalent to 6.241 x 10¹⁸ electrons per second.';
tcur[4].tu:= 'Kiloampere'; tcur[4].tsym:= 'kA'; tcur[4].tcons:= 1000;
tcur[4].tdef:= '';
tcur[5].tu:= 'Microampere'; tcur[5].tsym:= 'µA'; tcur[5].tcons:= 1e-6;
tcur[5].tdef:= '';
tcur[6].tu:= 'Milliampere'; tcur[6].tsym:= 'mA'; tcur[6].tcons:= 1e-3;
tcur[6].tdef:= '';
tcur[7].tu:= 'Nanoampere'; tcur[7].tsym:= 'nA'; tcur[7].tcons:= 1e-9;
tcur[7].tdef:= '';
tcur[8].tu:= 'Picoampere'; tcur[8].tsym:= 'pA'; tcur[8].tcons:= 1e-12;
tcur[8].tdef:= '';
tcur[9].tu:= 'Statampere'; tcur[9].tsym:= ''; tcur[9].tcons:= 3.33333333333e-10;
tcur[9].tdef:= 'The ESU unit of charge, franklin (Fr), also known as statcoulomb or esu charge, is therefore defined as: two equal point charges spaced 1 centimetre apart are said to be of 1 franklin each if the electrostatic force between them is 1 dyne.';
end.

