unit flowld;

{$mode objfpc}{$H+}

interface
type
TMag = record
        tu, tsym: string;
        tcons: double;
        tdef: string;
end;

var
tflowd: array[1..6] of tmag;
tflowl: array[1..6] of tmag;

implementation

begin

// flow dry
tflowd[1].tu := 'Cubit feet per minute'; tflowd[1].tsym:= 'cfm'; tflowd[1].tcons:= 28.316846999;
tflowd[1].tdef:= '';
tflowd[2].tu:= 'Cubic feet per second'; tflowd[2].tsym := 'cfs'; tflowd[2].tcons:= 1699.01081994;
tflowd[2].tdef:= '';
tflowd[3].tu:= 'Cubic inches per minute'; tflowd[3].tsym:= 'in³/m'; tflowd[3].tcons:= 0.016387064236;
tflowd[3].tdef:= '';
tflowd[4].tu:= 'Cubic inches per second'; tflowd[4].tsym:= 'in³/s'; tflowd[4].tcons:= 0.983223854;
tflowd[4].tdef:= '';
tflowd[5].tu:= 'Litres per minute'; tflowd[5].tsym:= 'lpm'; tflowd[5].tcons:= 1;
tflowd[5].tdef:= 'A cubic decimeter of material moving past a point every minute.';
tflowd[6].tu:= 'Litres per second'; tflowd[6].tsym:= 'lps'; tflowd[6].tcons:= 60;
tflowd[6].tdef:= 'A cubic decimeter of material moving past a point every second.';

// flow liq
tflowl[1].tu := 'UK gallons per minute'; tflowl[1].tsym:= 'gpm (UK)'; tflowl[1].tcons:= 0.2199692483;
tflowl[1].tdef:= '';
tflowl[2].tu:= 'UK gallons per second'; tflowl[2].tsym := 'gps (UK)'; tflowl[2].tcons:= 13.198154898;
tflowl[2].tdef:= '';
tflowl[3].tu:= 'US gallons per minute'; tflowl[3].tsym:= 'gpm (US)'; tflowl[3].tcons:= 0.26417205236;
tflowl[3].tdef:= '';
tflowl[4].tu:= 'US gallons per second'; tflowl[4].tsym:= 'gpm (US)'; tflowl[4].tcons:= 15.850323142;
tflowl[4].tdef:= '';
tflowl[5].tu:= 'Litres per minute'; tflowl[5].tsym:= 'lpm'; tflowl[5].tcons:= 1;
tflowl[5].tdef:= 'A cubic decimeter of material moving past a point every minute.';
tflowl[6].tu:= 'Litres per second'; tflowl[6].tsym:= 'lps'; tflowl[6].tcons:= 60;
tflowl[6].tdef:= 'A cubic decimeter of material moving past a point every second.';
end.
