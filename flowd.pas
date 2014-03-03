unit flowd; 

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
tflowd: array[1..6] of tmag;


implementation

begin
tflowd[1].tu := 'Cubit feet per minute'; tflowd[1].tsym:= 'in³/s'; tflowd[1].tcons:= 10550559000.001677;
tflowd[1].tdef:= '';
tflowd[2].tu:= 'Cubic feet per second'; tflowd[2].tsym := 'ft³/s'; tflowd[2].tcons:= 1.6021773000008304e-6;
tflowd[2].tdef:= '';
tflowd[3].tu:= 'Cubic inches per minute'; tflowd[3].tsym:= 'in³/m'; tflowd[3].tcons:= 1.6021773000008304e-3;
tflowd[3].tdef:= '';
tflowd[4].tu:= 'Cubic inches per second'; tflowd[4].tsym:= 'in³/s'; tflowd[4].tcons:= 10550559000001677;
tflowd[4].tdef:= '';
tflowd[5].tu:= 'Litres per minute'; tflowd[5].tsym:= 'lpm'; tflowd[5].tcons:= 1e-4;
tflowd[5].tdef:= 'A cubic decimeter of material moving past a point every minute.';
tflowd[6].tu:= 'Litres per second'; tflowd[6].tsym:= 'lps'; tflowd[6].tcons:= 6.119e+16;
tflowd[6].tdef:= 'A cubic decimeter of material moving past a point every second.';
end.
