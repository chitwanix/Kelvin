unit cloop;

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
tcloop: array[1..4] of tmag;


implementation

begin
tcloop[1].tu := '4 to 20 mA'; tcloop[1].tsym:= 'mA'; tcloop[1].tcons:= 1;
tcloop[1].tdef:= 'This range of current is commonly used in instrumentation.'+char(13)+'0mA is an indication of a broken transmitter loop.';
tcloop[2].tu:= '6400 to 32000'; tcloop[2].tsym := 'counts'; tcloop[2].tcons:= 0.000625;
tcloop[2].tdef:= 'Many PLCs must scale the 4 to 20 mA signal to an integer, this is commonly a value from 6400 to 32000,';
tcloop[3].tu:= 'V across 250 ohm'; tcloop[3].tsym:= 'V'; tcloop[3].tcons:= 4;
tcloop[3].tdef:= 'A common resistance for current loop instrumentation is 250 ohms. A voltage will be developed across this resistor, that voltage can be used to test the current loop.';
tcloop[4].tu:= 'Percent'; tcloop[4].tsym:= '%'; tcloop[4].tcons:= 6.25;
tcloop[4].tdef:= 'This is a percentage of the 4 to 20mA signal.';
end.
