unit mus;

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
tmus: array[1..5] of tmag;

implementation

begin
tmus[1].tu := 'Breve'; tmus[1].tsym:= ''; tmus[1].tcons:= 8;
tmus[1].tdef:= 'A note or character of time, equivalent to two semibreves or four minims. When dotted, it is equal to three semibreves.';
tmus[2].tu:= 'Crotchet'; tmus[2].tsym := ''; tmus[2].tcons:= 1;
tmus[2].tdef:= 'A time note, with a stem, having one fourth the value of a semibreve, one half that of a minim, and twice that of a quaver; a quarter note.';
tmus[3].tu:= 'Minim'; tmus[3].tsym:= ''; tmus[3].tcons:= 2;
tmus[3].tdef:= 'A time note, a half note, equal to half a semibreve, or two quarter notes or crotchets.';
tmus[4].tu:= 'Quaver'; tmus[4].tsym:= ''; tmus[4].tcons:= 0.5;
tmus[4].tdef:= 'An eighth note.';
tmus[5].tu:= 'Whole note/semibreve'; tmus[5].tsym:= ''; tmus[5].tcons:= 4;
tmus[5].tdef:= 'A note of half the time or duration of the breve; now usually called a whole note.';
end.
