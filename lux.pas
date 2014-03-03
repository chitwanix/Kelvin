unit lux; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, math;
function mcd(v: double) :double;
function cdm(v: double) :double;

type
TMag = record
        tu, tsym: string;
        tcons: double;
        tdef: string;
end;


var
tillum: array[1..8] of tmag;
tlumin: array[1..13] of tmag;
tlflux: array[1..2] of tmag;
tlint: array[1..3] of tmag;


implementation

function mcd(v: double) :double;
public;
begin
//   108000*POWER(10;(-0.4*mags))       108000 × 10(-0.4*[value in mag/arcsec2])
         result:= 108000*power(10,(-0.4*v));
end;

function cdm(v: double) :double;
begin
//   S = m + 2.5 *log_{10} A.
//         cdm:= LOG10((v)*108000)*0.4;
           cdm:= log10((v/108000))/-0.4;
end;

begin
// Illumination
tillum[1].tu := 'Candela steradian per square meter'; tillum[1].tsym:= ''; tillum[1].tcons:= 1;
tillum[1].tdef:= '';
tillum[2].tu:= 'Foot candle'; tillum[2].tsym := 'fc'; tillum[2].tcons:= 10.7639104167;
tillum[2].tdef:= '';
tillum[3].tu:= 'Lumen per square centimeter'; tillum[3].tsym:= 'lm/cm²'; tillum[3].tcons:= 1e4;
tillum[3].tdef:= '';
tillum[4].tu:= 'Lumen per square foot'; tillum[4].tsym:= 'lm/ft²'; tillum[4].tcons:= 10.7639104167;
tillum[4].tdef:= '';
tillum[5].tu:= 'Lumen per square meter'; tillum[5].tsym:= 'lm/m²'; tillum[5].tcons:= 1;
tillum[5].tdef:= '';
tillum[6].tu:= 'Lux'; tillum[6].tsym:= 'lx'; tillum[6].tcons:= 1;
tillum[6].tdef:= '';
tillum[7].tu:= 'Metre-candle'; tillum[7].tsym:= 'm-cd'; tillum[7].tcons:= 1;
tillum[7].tdef:= '';
tillum[8].tu:= 'Phot'; tillum[8].tsym:= 'ph'; tillum[8].tcons:= 1e4;
tillum[8].tdef:= 'A unit of illumination equal to 1 lumen per square centimeter; 10,000 phots equal 1 lux.';

// Luminance
tlumin[1].tu := 'Apostilb'; tlumin[1].tsym:= ''; tlumin[1].tcons:=  3.18309886183791e-5;
tlumin[1].tdef:= 'Named from the Greek stilbein, to "glitter" or "shine," with the prefix apo-, "away from".'+char(13)+'A luminance unit equal to one ten-thousandth of a lambert. Also known as blandel.';
tlumin[2].tu:= 'Candela per square centimeter'; tlumin[2].tsym := 'cd/cm²'; tlumin[2].tcons:= 1;
tlumin[2].tdef:= '';
tlumin[3].tu:= 'Candela per square foot'; tlumin[3].tsym:= 'cd/ft²'; tlumin[3].tcons:= 0.00107639104167;
tlumin[3].tdef:= '';
tlumin[4].tu:= 'Candela per square inch'; tlumin[4].tsym:= 'cd/in²'; tlumin[4].tcons:= 0.155000310001;
tlumin[4].tdef:= '';
tlumin[5].tu:= 'Candela per square meter'; tlumin[5].tsym:= 'cd/m²'; tlumin[5].tcons:= 1e-4;
tlumin[5].tdef:= '';
tlumin[6].tu:= 'Foot lambert'; tlumin[6].tsym:= 'fL'; tlumin[6].tcons:= 0.000342625909964;
tlumin[6].tdef:= '';
tlumin[7].tu:= 'Kilocandela per square meter'; tlumin[7].tsym:= 'kcd/m²'; tlumin[7].tcons:= 0.1;
tlumin[7].tdef:= '';
tlumin[8].tu:= 'Lambert'; tlumin[8].tsym:= 'L'; tlumin[8].tcons:= 0.318309886184;
tlumin[8].tdef:= 'Named after the German physicist Johann Heinrich Lambert (1728-1777). '+'Equal to the brightness of a perfectly diffusing surface that emits or reflects one lumen per square centimeter';
tlumin[9].tu:= 'Lumen per steradian square meter'; tlumin[9].tsym:= ''; tlumin[9].tcons:= 1e-4;
tlumin[9].tdef:= '';
tlumin[10].tu:= 'Magnitudes per square arcsecond'; tlumin[10].tsym:= 'mags/arcsec2'; tlumin[10].tcons:= 4.29955744198;
tlumin[10].tdef:= 'Used by astronomers to define the darkness of the night sky.'+char(13)+'Stars are rated by brightness in magnitudes . A lower magnitude number is a brighter star.  '+'The star Vega has a magnitude of zero, and a measurement of 0 magnitudes per square arcsecond would be like having '+'every square arcsecond in the sky will with the brightness of the star Vega.';
tlumin[11].tu:= 'Millilambert'; tlumin[11].tsym:= 'mL'; tlumin[11].tcons:= 0.000318309886184;
tlumin[11].tdef:= '';
tlumin[12].tu:= 'Nit'; tlumin[12].tsym:= ''; tlumin[12].tcons:= 1e-4;
tlumin[12].tdef:= 'Named from the Latin niteo, to shine.';
tlumin[13].tu:= 'Stilb'; tlumin[13].tsym:= 'sb'; tlumin[13].tcons:= 1;
tlumin[13].tdef:= 'From a Greek word stilbein meaning "to glitter".'+char(13)+'Equal to one candela per square centimeter or 104 nits.';

// Luminous flux
tlflux[1].tu := 'Candela steradian'; tlflux[1].tsym:= 'cd·sr'; tlflux[1].tcons:=  1;
tlflux[1].tdef:= '';
tlflux[2].tu:= 'Lumen'; tlflux[2].tsym := 'lm'; tlflux[2].tcons:= 1;
tlflux[2].tdef:= 'The SI unit of luminous flux equal to the luminous flux received on a unit surface, all points of which are equidistant from a point source having a uniform intensity of 1 candela.';

// Luminous intensity
tlint[1].tu := 'Candela'; tlint[1].tsym:= 'cd'; tlint[1].tcons:=  1;
tlint[1].tdef:= 'The basic unit of luminous intensity adopted under Le Système international d''unités; equal to 1/60 of the luminous intensity per square centimeter of a blackbody '+'radiating at the temperature of 2,046 degrees Kelvin syn: candle, cd, standard candle.';
tlint[2].tu:= 'Hefner candle'; tlint[2].tsym := 'HC'; tlint[2].tcons:= 0.9199999999992641;
tlint[2].tdef:= 'A unit of luminous intensity, late 19th – early 20th centuries, equal to the horizontal intensity of the light from a lamp developed by the German '+'engineer Friedrich Franz von Hefner-Alteneck (1845-1904) in 1884. Abbreviation, HK. '+char(13)+'Mainly used in Germany before 1942. One hefner unit is approximately 0.903 candela.';
tlint[3].tu:= 'Lumen per steradian'; tlint[3].tsym:= 'lm/sr'; tlint[3].tcons:= 1;
tlint[3].tdef:= '';
end.
