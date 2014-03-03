unit area;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, math;

function carea(d: double) :double;
function cdiam(d: double) :double;

type
TMag = record
        tu, tsym: string;
        tcons: double;
        tdef: String;
end;

var
tarea: array[1..57] of tmag;
rad1, rad2, rad3, rad4 :double;

const
cm=  10;
m =   1000;
ft=  304.8;
inc= 25.4;



implementation

function carea(d: double) :double;
begin
     carea:= 3.14159*power((d/2),2);
end;

function cdiam(d: double) :double;
begin
     cdiam:= SQRT(d/3.14159)*2;
end;

begin
tarea[1].tu := 'Acaena (Greek)'; tarea[1].tsym:= ''; tarea[1].tcons:= 9197440;
tarea[1].tdef:= '';
tarea[2].tu := 'Acre'; tarea[2].tsym:= ''; tarea[2].tcons:= 4046856422.4;
tarea[2].tdef:= 'A piece of land, containing 160 square rods, or 4,840 square yards, or 43,560 square feet. This is the English statute acre. That of the United States is the same.'+chr(13)+'The Scotch acre was about 1.26 of the English, and the Irish 1.62 of the English.'+chr(13)+'Note: The acre was limited to its present definite quantity by statutes of Edward I., Edward III., and Henry VIII.';
tarea[3].tu := 'Acre (Chesire)'; tarea[3].tsym:= ''; tarea[3].tcons:= 8561976320.0;
tarea[3].tdef:= '';
tarea[4].tu := 'Acre (Irish)'; tarea[4].tsym:= ''; tarea[4].tcons:= 6555263120.0;
tarea[4].tdef:= '';
tarea[5].tu := 'Acre (Scotish)'; tarea[5].tsym:= ''; tarea[5].tcons:= 5142202570.0;
tarea[5].tdef:= '';
tarea[6].tu := 'Are'; tarea[6].tsym:= ''; tarea[6].tcons:= 1e8;
tarea[6].tdef:= 'The unit of superficial measure, being a square of which each side is ten meters in length; 100 square meters, or about 119.6 square yards.';
tarea[7].tu := 'Arpent (French)'; tarea[7].tsym:= ''; tarea[7].tcons:= 3418060200.67;
tarea[7].tdef:= '4,088 sq. yards, or nearly five sixths of an English acre.';
tarea[8].tu := 'Arpent (woodland)'; tarea[8].tsym:= ''; tarea[8].tcons:= 5083863380.64;
tarea[8].tdef:= '1 acre, 1 rood, 1 perch.';
tarea[9].tu := 'Barn'; tarea[9].tsym:= ''; tarea[9].tcons:= 1e-22;
tarea[9].tdef:= 'Used in Nuclear physics to describe the apparent cross-sectional size of atomic sized objects that are bombarded with smaller objects (like electrons).'+char(13)+'10⁻²⁸ square meters. 100 square femtometers. '+char(13)+'Originated from the semi-humorous idiom big as a barn and used by physicists to describe the size of the scattering object (Ex: That was as big as 5 barns!).';
tarea[10].tu := 'Barony'; tarea[10].tsym:= ''; tarea[10].tcons:= 1.61874864709e+13;
tarea[10].tdef:= '';
tarea[11].tu := 'Centimeter diameter circle'; tarea[11].tsym:= 'cm dia.'; tarea[11].tcons:= 5;
tarea[11].tdef:= 'Type the diameter of the circle in centimeters to find its area displayed in other fields.';
tarea[12].tu := 'Cho'; tarea[12].tsym:= ''; tarea[12].tcons:= 9914798234.88;
tarea[12].tdef:= 'Japanese. 2.45 acre.';
tarea[13].tu := 'Circular inch'; tarea[13].tsym:= ''; tarea[13].tcons:= 506.803841573;
tarea[13].tdef:= '';
tarea[14].tu := 'Circular mil'; tarea[14].tsym:= 'cmil'; tarea[14].tcons:= 0.000506803841573;
tarea[14].tdef:= '';
tarea[15].tu := 'Cuadra (Paraguay)'; tarea[15].tsym:= ''; tarea[15].tcons:= 7486712490.0;
tarea[15].tdef:= '';
tarea[16].tu := 'Desyatina/dessiatina'; tarea[16].tsym:= ''; tarea[16].tcons:= 10924893597.9;
tarea[16].tdef:= 'Russian. 2.6996 acre. 2400 square sadzhens.';
tarea[17].tu := 'Donum (Yugoslavia)'; tarea[17].tsym:= ''; tarea[17].tcons:= 699999920.0;
tarea[17].tdef:= '';
tarea[18].tu := 'Fall (Scotish)'; tarea[18].tsym:= ''; tarea[18].tcons:= 31796180.0;
tarea[18].tdef:= '';
tarea[19].tu := 'Ferfet (Iceland)'; tarea[19].tsym:= ''; tarea[19].tcons:= 98480.0;
tarea[19].tdef:= '';
tarea[20].tu := 'Flag'; tarea[20].tsym:= ''; tarea[20].tcons:= 2322576.0;
tarea[20].tdef:= 'Square pace (a pace is 5 feet).';
tarea[21].tu := 'Foot diameter circle'; tarea[21].tsym:= 'ft dia.'; tarea[21].tcons:= 152.4;
tarea[21].tdef:= 'Type the diameter of the circle in feet to find its area displayed in other fields.';
tarea[22].tu := 'Hectare'; tarea[22].tsym:= 'ha'; tarea[22].tcons:= 1e10;
tarea[22].tdef:= 'A measure of area, or superficies, containing a hundred ares, or 10,000 square meters, and equivalent to 2.471 acres.';
tarea[23].tu := 'Hide/carucate'; tarea[23].tsym:= 'cmil'; tarea[23].tcons:= 40468716180.0;
tarea[23].tdef:= 'An ancient English measure of the amount of land required to support family.';
tarea[24].tu := 'Homestad/quarter section'; tarea[24].tsym:= ''; tarea[24].tcons:= 647497027584.0;
tarea[24].tdef:= '160 acres,1/4 square mile, or 1/4 section'+char(13)+'Use by the governments of North America early settlers in the western states and provinces were allowed to take title to a homestead of '+'160 acres of land by registering a claim, settling on the land, and cultivating it.';
tarea[25].tu := 'Inch diameter circle'; tarea[25].tsym:= 'in dia.'; tarea[25].tcons:= 12.7;
tarea[25].tdef:= 'Type the diameter of the circle in inches to find its area displayed in other fields.';
tarea[26].tu := 'Joch (German)/yoke'; tarea[26].tsym:= ''; tarea[26].tcons:= 5746557700.0;
tarea[26].tdef:= 'joch (German) is 40 square klafters.';
tarea[27].tu := 'Labor (Texas)'; tarea[27].tsym:= ''; tarea[27].tcons:= 716862838370;
tarea[27].tdef:= 'An area of land that could be cultivated by one farmer.';
tarea[28].tu := 'Link'; tarea[28].tsym:= ''; tarea[28].tcons:= 101171410.56;
tarea[28].tdef:= '4 rods square.';
tarea[29].tu := 'Meter diameter circle'; tarea[29].tsym:= 'm dia.'; tarea[29].tcons:= 500;
tarea[29].tdef:= 'Type the diameter of the circle in meters to find its area displayed in other fields.';
tarea[30].tu := 'Perch'; tarea[30].tsym:= ''; tarea[30].tcons:= 25292852.64;
tarea[30].tdef:= 'Used to measure land. A square rod; the 160th part of an acre.';
tarea[31].tu := 'Plethron (Greek)'; tarea[31].tsym:= ''; tarea[31].tcons:= 951014830.0;
tarea[31].tdef:= '';
tarea[32].tu := 'Roll (wallpaper)'; tarea[32].tsym:= ''; tarea[32].tcons:= 2787091.2;
tarea[32].tdef:= '';
tarea[33].tu := 'Rood'; tarea[33].tsym:= ''; tarea[33].tcons:= 1011714105.6;
tarea[33].tdef:= 'The fourth part of an acre, or forty square rods.';
tarea[34].tu := 'Sabin'; tarea[34].tsym:= ''; tarea[34].tcons:= 92903.04;
tarea[34].tdef:= 'A unit of acoustic absorption equivalent to the absorption by a square foot of a surface that absorbs all incident sound. 1ft².';
tarea[35].tu := 'Sahme (Egyptian)'; tarea[35].tsym:= ''; tarea[35].tcons:= 7291060.0;
tarea[35].tdef:= '';
tarea[36].tu := 'Section'; tarea[36].tsym:= ''; tarea[36].tcons:= 2.59e+12;
tarea[36].tdef:= 'Used in land measuring. One square mile. An area of about 640 acres.';
tarea[37].tu := 'Shaku'; tarea[37].tsym:= ''; tarea[37].tcons:= 33060.0;
tarea[37].tdef:= 'A Japanese unit of area, the shaku equals 330.6 square centimeters (51.24 square inches). Note: shaku also means length and volume.';
tarea[38].tu := 'Square'; tarea[38].tsym:= ''; tarea[38].tcons:= 9290304;
tarea[38].tdef:= 'Used in the construction for measuring roofing material, finished lumber, and other building materials. One square is equals 100 square feet.';


tarea[39].tu := 'Square Scotish ell'; tarea[39].tsym:= ''; tarea[39].tcons:= 883230;
tarea[39].tdef:= '';
tarea[40].tu := 'Square alen (Denmark)'; tarea[40].tsym:= ''; tarea[40].tcons:= 381210.0;
tarea[40].tdef:= '';
tarea[41].tu := 'Square centimeter'; tarea[41].tsym:= 'cm²'; tarea[41].tcons:= 100;
tarea[41].tdef:= '';
tarea[42].tu := 'Square chain (surveyor)'; tarea[42].tsym:= 'ch²'; tarea[42].tcons:= 404685642.24;
tarea[42].tdef:= 'A unit for land measure equal to four rods square, or one tenth of an acre.';
tarea[43].tu := 'Square foot'; tarea[43].tsym:= 'ft²'; tarea[43].tcons:= 92903.04;
tarea[43].tdef:= 'An area equal to that of a square the sides of which are twelve inches; 144 square inches.';
tarea[44].tu := 'Square inch'; tarea[44].tsym:= 'in²'; tarea[44].tcons:= 645.16;
tarea[44].tdef:= 'A unit of area equal to one inch by one inch square syn: sq in.';
tarea[45].tu := 'Square kilometer'; tarea[45].tsym:= 'km²'; tarea[45].tcons:= 1e12;
tarea[45].tdef:= '';
tarea[46].tu := 'Square league (land)'; tarea[46].tsym:= ''; tarea[46].tcons:= 2.330989299e+13;
tarea[46].tdef:= '';
tarea[47].tu := 'Square meter'; tarea[47].tsym:= 'm²'; tarea[47].tcons:= 1e6;
tarea[47].tdef:= 'Also know as a centare is (1/100th of an are).';
tarea[48].tu := 'Square micrometer'; tarea[48].tsym:= 'µ²'; tarea[48].tcons:= 1e-6;
tarea[48].tdef:= '';
tarea[49].tu := 'Square mil'; tarea[49].tsym:= 'mil²'; tarea[49].tcons:= 0.000645161290323;
tarea[49].tdef:= '';
tarea[50].tu := 'Square mile'; tarea[50].tsym:= 'mi²'; tarea[50].tcons:= 2589988110336;
tarea[50].tdef:= '';
tarea[51].tu := 'Square millimeter'; tarea[51].tsym:= 'mm²'; tarea[51].tcons:= 1;
tarea[51].tdef:= '';
tarea[52].tu := 'Square pes (Roman)'; tarea[52].tsym:= ''; tarea[52].tcons:= 87410.0;
tarea[52].tdef:= '';
tarea[53].tu := 'Square rod'; tarea[53].tsym:= 'rd²'; tarea[53].tcons:= 25292852.64;
tarea[53].tdef:= '';
tarea[54].tu := 'Square vara (Spanish)'; tarea[54].tsym:= ''; tarea[54].tcons:= 594180.0;
tarea[54].tdef:= '';
tarea[55].tu := 'Square yard'; tarea[55].tsym:= 'yd²'; tarea[55].tcons:= 836127.36;
tarea[55].tdef:= 'A unit of area equal to one yard by one yard square. Synonym: sq yd.';
tarea[56].tu := 'Tavola (Italian)'; tarea[56].tsym:= ''; tarea[56].tcons:= 37625870.0;
tarea[56].tdef:= '';
tarea[57].tu := 'Township'; tarea[57].tsym:= ''; tarea[57].tcons:= 9.324e+13;
tarea[57].tdef:= 'A division of territory six miles square (36miles²), containing 36 sections.';
end.

