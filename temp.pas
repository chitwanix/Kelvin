unit temp;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;


type
ctemp = class
function ctof(c: double) : double;
function ftoc(f: double) : double;
function Kelvin(k: double) : double;
function ktoc(kc: double) : double;
function toRankine(c: double) : double;
function rtoc(c: double) : double;
function ctoream(c: double) : double;
function reamtoc(c: double) : double;
end;

TMag = record
        tu, tsym: string;
        tcons: double;
        tdef: string;
end;

var
ttemp: array[1..7] of TMag;
tsheat: array[1..4] of TMag;
ttdiff: array[1..5] of TMag;
ttcona: array[1..5] of TMag;
ttconl: array[1..4] of TMag;
ttres: array[1..5] of TMag;
ctof, ftoc, kelvin, ktoc, torankine, rtoc, ctoream, reamtoc: ctemp;

const
dfcf = 1.8;
dffc = 0.555555556;
dfk = 1;
dfcrk = 1.8;
dfrkc = 0.555555556;
dfcream = 0.8;
dfreamc =  1.25;

implementation


function ctemp.ctof(c: double): double;
begin
     result:= c * 9/5 +32;
end;

function ctemp.ftoc(f: double): double;
begin
         result:= (f - 32) * 5/9;
end;


function ctemp.Kelvin(k: double): double;
begin
         result:= k + 273.15;
end;

function ctemp.ktoc(kc: double) : double;
begin
         result:= (kc - 273.15);
end;

function ctemp.torankine(c: double): double;
begin
         result:= (c + 273.15) *9/5;
end;

function ctemp.rtoc(c: double): double;
begin
         result:= (c - 32 - 459.67) / 1.8;
end;


function ctemp.ctoream(c: double): double;
begin
         result:= c  * 4/5;
end;

function ctemp.reamtoc(c: double): double;
begin
         result:= c  * 5/4;
end;

begin

// Temp
ttemp[1].tu := 'Celsius'; ttemp[1].tsym := 'ºC'; ttemp[1].tcons:= 1;
ttemp[1].tdef:= 'Celsius, also known as centigrade, is a scale and unit of measurement for temperature. It is named after the Swedish astronomer Anders Celsius (1701–1744), who developed a similar temperature scale.'  +char(13)+ '[°F] = [°C] × 9⁄5 + 32' +char(9)+char(9)+char(9)+ '[°C] = ([°F] − 32) × 5⁄9' +char(13)+ '[K]  = [°C] + 273.15' +char(9)+char(9)+char(9)+ '[°C] = [K] − 273.15' +char(13)+ '[°R] = ([°C] + 273.15) × 9⁄5' +char(9)+ '[°C] = ([°R] − 491.67) × 5⁄9';
ttemp[2].tu:= 'Celsius absolute'; ttemp[2].tsym:= 'ºC absolute'; ttemp[2].tcons:= 273.150000000000;
ttemp[3].tu:= 'Fahrenheit'; ttemp[3].tsym:= 'ºF'; ttemp[3].tcons:= 33.8;
ttemp[3].tdef:= 'Fahrenheit (symbol °F) is a temperature scale based on one proposed in 1724 by, and named after, the physicist Daniel Gabriel Fahrenheit (1686–1736).'+char(13)+ '[ºF] = [ºC] 9/5 + 32' +char(9)+char(9)+char(9)+ '[ºC] = ([ºF] − 32)  5/9' +char(13)+ '[K]  = ([°F] + 459.67) × 5⁄9' +char(9)+char(9)+ '[ºF] = [K] × 9/5 − 459.67' +char(13)+ '[°R] = [°F] + 459.67' +char(9)+char(9)+char(9)+ '[°F] = [°R] − 459.67';
ttemp[4].tu:= 'Fahrenheit absolute'; ttemp[4].tsym:= 'ºF absolute'; ttemp[4].tcons:= 0.555555555556;
ttemp[5].tu:= 'Kelvin'; ttemp[5].tsym:= 'K'; ttemp[5].tcons:= 273.150000000000;
ttemp[5].tdef:= 'The Kelvin scale is an absolute, thermodynamic temperature scale using as its null point absolute zero, the temperature at which all thermal motion ceases in the classical description of thermodynamics.' +char(13)+ '[°C] = [K] − 273.15' +char(9)+char(9)+char(9)+ '[K] = [°C] + 273.15' +char(13)+ '[°F] = [K] × 9⁄5 − 459.67' +char(9)+char(9)+ '[K] = ([°F] + 459.67) × 5⁄9' +char(13)+ '[°R] = [K] × 9⁄5' +char(9)+char(9)+char(9)+char(9)+ '[K] = [°R] × 5⁄9';
ttemp[6].tu:= 'Rankine'; ttemp[6].tsym:= 'ºR or ºRa'; ttemp[6].tcons:= 459.67;
ttemp[6].tdef:= 'Rankine is a thermodynamic (absolute) temperature scale named after the Glasgow University engineer and physicist William John Macquorn Rankine, who proposed it in 1859. (The Kelvin scale was first proposed in 1848).'  +char(13)+ '[°C] = ([°R] − 491.67) × 5⁄9' +char(9)+ '[°R] = ([°C] + 273.15) × 9⁄5' +char(13)+ '[°F] = [°R] − 459.67' +char(9)+char(9)+char(9)+ '[°R] = [°F] + 459.67' +char(13)+ '[K]  = [°R] × 5⁄9' +char(9)+char(9)+char(9)+char(9)+ '[°R] = [K] × 9⁄5';
ttemp[7].tu:= 'Réaumur'; ttemp[7].tsym:= 'ºR or ºRe'; ttemp[7].tcons:= 1.8;
ttemp[7].tdef:= 'The Réaumur scale (°Ré, °Re, °R), also known as "octogesima division", is a temperature scale in which the freezing and boiling points of water are set to 0 and 80 degrees respectively. The scale is named after René Antoine Ferchault de Réaumur.' +char(13)+ '[°C] = [°Ré] × 5⁄4' +char(9)+char(9)+char(9)+ '[°Ré] = [°C] × 4⁄5' +char(13)+ '[°F] = [°Ré] × 9⁄4 + 32' +char(9)+char(9)+ '[°Ré] = ([°F] − 32) × 4⁄9' +char(13)+ '[K]  = [°Ré] × 5⁄4 + 273.15' +char(9)+char(9)+ '[°Ré] = ([K] − 273.15) × 4⁄5' +char(13)+ '[°R] = [°Ré] × 9⁄4 + 491.67' +char(9)+ '[°Ré] = ([°R] − 491.67) × 4⁄9';

// Specific heat
tsheat[1].tu := 'Btu per pound degree F'; tsheat[1].tsym := 'BTU/lb·ºF'; tsheat[1].tcons:= 0.999582194315;
tsheat[2].tu:= 'Joule per kilogram degree C'; tsheat[2].tsym:= 'J/kg·ºC'; tsheat[2].tcons:= 0.000238746105454;
tsheat[3].tu:= 'Joule per kilogram kelvin'; tsheat[3].tsym:= 'J/kg·K'; tsheat[3].tcons:= 0.000238746105454;
tsheat[4].tu:= 'Kilocalories per kilogram degree C'; tsheat[4].tsym:= 'kcal/kg·ºC'; tsheat[4].tcons:= 1;


// Temp diff
ttdiff[1].tu := 'Temp. diff. in degrees Celsius'; ttdiff[1].tsym := 'ºC'; ttdiff[1].tcons:= 1;
ttdiff[2].tu:= 'Temp. diff. in degrees Fahrenheit'; ttdiff[2].tsym:= 'ºF'; ttdiff[2].tcons:= 1.8;
ttdiff[3].tu:= 'Temp. diff. in degrees Rankine'; ttdiff[3].tsym:= 'ºR'; ttdiff[3].tcons:= 1.8;
ttdiff[4].tu:= 'Temp. diff. in degrees Réamur'; ttdiff[4].tsym:= 'ºRe'; ttdiff[4].tcons:= 0.8;
ttdiff[5].tu:= 'Temp. diff. in Kelvin'; ttdiff[5].tsym:= 'K'; ttdiff[5].tcons:= 1;

// Thermal conductance (area)
ttcona[1].tu := 'British thermal units per hour square foot deg F'; ttcona[1].tsym := 'Btu/h·ft².ºF'; ttcona[1].tcons:= 5.6782;
ttcona[2].tu:= 'British thermal units per second square foot deg F'; ttcona[2].tsym:= 'Btu/sec·ft².ºC'; ttcona[2].tcons:= 2.0428;
ttcona[3].tu:= 'Kilocalories per hour square meter degree C'; ttcona[3].tsym:= 'kcal/h·m.ºC'; ttcona[3].tcons:= 1.163;
ttcona[4].tu:= 'Watts per square meter Kelvin'; ttcona[4].tsym:= 'W/m²·K'; ttcona[4].tcons:= 1;
ttcona[5].tu:= 'Watts per square meter degree Celsius'; ttcona[5].tsym:= 'W/h·m²·ºC'; ttcona[5].tcons:= 1;

// Thermal conductance (linear)
ttconl[1].tu := 'British thermal units per second foot deg F'; ttconl[1].tsym := 'Btu/sec/ft·ºF'; ttconl[1].tcons:= 1.703;
ttconl[2].tu:= 'Kilocalories per hour meter degree C'; ttconl[2].tsym:= 'kcal/h·m·ºC'; ttconl[2].tcons:= 1.163;
ttconl[3].tu:= 'Watts per meter Kelvin'; ttconl[3].tsym:= 'W/m·K'; ttconl[3].tcons:= 1;
ttconl[4].tu:= 'Watts per meter degree Celsius'; ttconl[4].tsym:= 'W/m·ºC'; ttconl[4].tcons:= 1;

// Thermal resistance
ttres[1].tu := 'Clo'; ttres[1].tsym := 'clo'; ttres[1].tcons:= 0.15;
ttres[1].tdef:= 'Clo is the unit for effective clothing insulation. It is used to evaluate the expected comfort of users in certain humidity, temperature and workload conditions (and estimate air conditioning or heating loads, for instance).';
ttres[2].tu:= 'Hour square foot degree F per BTU'; ttres[2].tsym:= 'h·ft²·ºF/Btu.'; ttres[2].tcons:= 0.1761;
ttres[3].tu:= 'Hour square meter degree C per kilocalorie'; ttres[3].tsym:= 'h·m²·ºC/kcal'; ttres[3].tcons:= 0.862;
ttres[4].tu:= 'Square meter degree C per watt'; ttres[4].tsym:= 'm²·ºC/W'; ttres[4].tcons:= 1;
ttres[5].tu:= 'Square meter kelvin per watt'; ttres[5].tsym:= 'm²·K/W'; ttres[5].tcons:= 1;

end.

