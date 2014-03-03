unit fuelc;

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
tfuelc: array[1..6] of tmag;


implementation

begin
tfuelc[1].tu := 'Gallon (US) per 100 miles'; tfuelc[1].tsym:= ''; tfuelc[1].tcons:= 42.514370743; //4.54609028199;
tfuelc[1].tdef:= '';
tfuelc[2].tu:= 'Gallon (Imperial) per 100 miles'; tfuelc[2].tsym := ''; tfuelc[2].tcons:= 35.400616798;
tfuelc[2].tdef:= '';
tfuelc[3].tu:= 'Kilometers per liter'; tfuelc[3].tsym:= ''; tfuelc[3].tcons:= 1;
tfuelc[3].tdef:= '';
tfuelc[4].tu:= 'Liters per 100 kilometers'; tfuelc[4].tsym:= ''; tfuelc[4].tcons:= 100;
tfuelc[4].tdef:= '';
tfuelc[5].tu:= 'Miles per gallon (Imperial)'; tfuelc[5].tsym:= 'mpg (Imperial)'; tfuelc[5].tcons:= 2.824809539;
tfuelc[5].tdef:= '';
tfuelc[6].tu:= 'Miles per gallon (US)'; tfuelc[6].tsym:= 'mpg (US)'; tfuelc[6].tcons:= 2.352145833;
tfuelc[6].tdef:= '';
end.
