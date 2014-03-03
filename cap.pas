unit cap;

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
tcap: array[1..7] of TMag;

implementation
begin

tcap[1].tu := 'Abfarad'; tcap[1].tsym:= 'abF'; tcap[1].tcons:= 1e9;
tcap[1].tdef:= 'The abfarad (abbreviated abF) is an obsolete CGS unit of capacitance equal to 109 farads (1 gigafarad, GF). This very large unit is used in medical terminology only.';
tcap[2].tu:= 'Farad'; tcap[2].tsym := 'F'; tcap[2].tcons:= 1;
tcap[2].tdef:= 'Named after the English electrician Michael Faraday. '+'The standard unit of electrical capacity. The capacity of a condenser whose charge, having an electro-motive force of one volt, is equal to the amount of electricity which, with the same electromotive force, passes through one ohm in one second. '+char(13)+'The capacity, which, charged with one coulomb, gives an electro-motive force of one volt.';
tcap[3].tu:= 'Microfarad'; tcap[3].tsym:= 'µF'; tcap[3].tcons:= 1e-6;
tcap[3].tdef:= '';
tcap[4].tu:= 'Nanofarad'; tcap[4].tsym:= 'nF'; tcap[4].tcons:= 1e-9;
tcap[4].tdef:= '';
tcap[5].tu:= 'Picofarad'; tcap[5].tsym:= 'pF'; tcap[5].tcons:= 1e-12;
tcap[5].tdef:= '';
tcap[6].tu:= 'Second/ohm'; tcap[6].tsym:= ''; tcap[6].tcons:= 1;
tcap[6].tdef:= '';
tcap[7].tu:= 'Statfarad'; tcap[7].tsym:= ''; tcap[7].tcons:= 1.11234705228e-12;
tcap[7].tdef:= '';
end.

