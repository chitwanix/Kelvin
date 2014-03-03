unit ind;

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
tind: array[1..7] of tmag;


implementation

begin
tind[1].tu := 'Abhenry'; tind[1].tsym:= 'abH'; tind[1].tcons:= 1e-9;
tind[1].tdef:= 'Abhenry is the centimeter-gram-second electromagnetic unit of inductance, equal to one billionth of a henry.';
tind[2].tu:= 'Henry'; tind[2].tsym := 'H'; tind[2].tcons:= 1;
tind[2].tdef:= 'In physics and electronics, the henry is the SI derived unit of inductance. '+'It is named after Joseph Henry (1797-1878), the American scientist who discovered electromagnetic induction independently of and at about the same time as Michael Faraday (1791-1867) in England.'+char(13)+'The inductance of a circuit is one Henry if the rate of change of current in a circuit '+'is one ampere per second and the resulting electromotive force is one volt.';
tind[3].tu:= 'Microhenry'; tind[3].tsym:= 'µH'; tind[3].tcons:= 1e-6;
tind[3].tdef:= '';
tind[4].tu:= 'Millihenry'; tind[4].tsym:= 'mH'; tind[4].tcons:= 1e-3;
tind[4].tdef:= '';
tind[5].tu:= 'Nanohenry'; tind[5].tsym:= 'nH'; tind[5].tcons:= 1e-9;
tind[5].tdef:= '';
tind[6].tu:= 'Ohm-second'; tind[6].tsym:= 'Ohm·sec'; tind[6].tcons:= 1;
tind[6].tdef:= '';
tind[7].tu:= 'Stathenry'; tind[7].tsym:= ''; tind[7].tcons:= 898760000000;
tind[7].tdef:= 'The unit of inductance in the electrostatic centimeter-gram-second system of units, equal to the self-inductance of a circuit or the mutual inductance between '+'two circuits if there is an induced electromotive force of 1 statvolt when the current is changing at a rate of 1 statampere per second; equal to approximately 8.9876 × 10¹¹ henry.';

end.
