unit cdflow;

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
tcdflow: array[1..6] of tmag;

implementation
begin
tcdflow[1].tu := 'Baud:1'; tcdflow[1].tsym:= ''; tcdflow[1].tcons:= 1;
tcdflow[1].tdef:= 'Symbol rate for 1 bit per symbol.'+char(13)+'Named after the French telegraph engineer Jean-Maurice-Émile Baudot (1845 - 1903).'+char(13)+'Data transmission measured in symbols per second.';
tcdflow[2].tu:= 'Baud:4'; tcdflow[2].tsym := ''; tcdflow[2].tcons:= 4;
tcdflow[2].tdef:= 'Symbol rate for 4 bit per symbol.'+char(13)+'Named after the French telegraph engineer Jean-Maurice-Émile Baudot (1845 - 1903).'+char(13)+'Data transmission measured in symbols per second.';
tcdflow[3].tu:= 'Baud:8'; tcdflow[3].tsym:= ''; tcdflow[3].tcons:= 8;
tcdflow[3].tdef:= 'Symbol rate for 8 bit per symbol.'+char(13)+'Named after the French telegraph engineer Jean-Maurice-Émile Baudot (1845 - 1903).'+char(13)+'Data transmission measured in symbols per second.';
tcdflow[4].tu:= 'Baud:10'; tcdflow[4].tsym:= ''; tcdflow[4].tcons:= 10;
tcdflow[4].tdef:= 'Symbol rate for 10 bit per symbol.'+char(13)+'Named after the French telegraph engineer Jean-Maurice-Émile Baudot (1845 - 1903).'+char(13)+'Data transmission measured in symbols per second.';
tcdflow[5].tu:= 'Bits per second'; tcdflow[5].tsym:= 'bps'; tcdflow[5].tcons:= 1;
tcdflow[5].tdef:= '';
tcdflow[6].tu:= 'Characters per second'; tcdflow[6].tsym:= 'cps'; tcdflow[6].tcons:= 10;
tcdflow[6].tdef:= 'Rate to transmit one character.'+char(13)+'The character is usually described as one byte with one stop bit and one start bit (10 bits in total).';
end.

