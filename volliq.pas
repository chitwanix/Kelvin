unit volliq;

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
tvoliq: array[1..46] of TMag;

implementation

begin
tvoliq[1].tu := 'Acetabulum'; tvoliq[1].tsym:= ''; tvoliq[1].tcons:= 66.0752;
tvoliq[1].tdef:= 'Roman unit.';
tvoliq[2].tu:= 'Barrel (UK)'; tvoliq[2].tsym := ''; tvoliq[2].tcons:= 163659.250152;
tvoliq[2].tdef:= '36 UK Gallons.';
tvoliq[3].tu:= 'Barrel(US federal)'; tvoliq[3].tsym:= ''; tvoliq[3].tcons:= 117347.765304;
tvoliq[3].tdef:= '31 US Gallons.';
tvoliq[4].tu:= 'Barrel (US)'; tvoliq[4].tsym:= ''; tvoliq[4].tcons:= 119240.471196;
tvoliq[4].tdef:= '31.5 US Gallons.';
tvoliq[5].tu:= 'Barrel of oil (US)'; tvoliq[5].tsym:= ''; tvoliq[5].tcons:= 158987.294928;
tvoliq[5].tdef:= 'Barrel of petroleum (oil). 42 US Gallons.';
tvoliq[6].tu:= 'Barrel of wine (UK)'; tvoliq[6].tsym:= ''; tvoliq[6].tcons:= 143201.843883;
tvoliq[6].tdef:= '31.5 UK Gallons.';
tvoliq[7].tu:= 'Bath/bu'; tvoliq[7].tsym:= ''; tvoliq[7].tcons:= 36871.2;
tvoliq[7].tdef:= 'Israeli unit.';
tvoliq[8].tu:= 'Cab'; tvoliq[8].tsym:= ''; tvoliq[8].tcons:= 2202.5036;
tvoliq[8].tdef:= 'Israeli unit.';
tvoliq[9].tu:= 'Cados (Greek)'; tvoliq[9].tsym:= ''; tvoliq[9].tcons:= 38043.3566;
tvoliq[9].tdef:= 'Greek unit.';
tvoliq[10].tu:= 'Cántaro'; tvoliq[10].tsym:= ''; tvoliq[10].tcons:= 13521.1108;
tvoliq[10].tdef:= 'Spanish unit.';
tvoliq[11].tu:= 'Caphite'; tvoliq[11].tsym:= ''; tvoliq[11].tcons:= 1374.1046;
tvoliq[11].tdef:= 'Ancient Arabian unit.';
tvoliq[12].tu:= 'Cotula/hemina/kotyle'; tvoliq[12].tsym:= ''; tvoliq[12].tcons:= 308.3505;
tvoliq[12].tdef:= 'Greek unit.';
tvoliq[13].tu:= 'Cubic centimeter'; tvoliq[13].tsym:= ''; tvoliq[13].tcons:= 1.0;
tvoliq[13].tdef:= '';
tvoliq[14].tu:= 'Cubic decimeter'; tvoliq[14].tsym:= ''; tvoliq[14].tcons:= 1000.0;
tvoliq[14].tdef:= '';
tvoliq[15].tu:= 'Cubic foot'; tvoliq[15].tsym:= ''; tvoliq[15].tcons:= 28316.846592;
tvoliq[15].tdef:= '';
tvoliq[16].tu:= 'Cubic inch'; tvoliq[16].tsym:= ''; tvoliq[16].tcons:= 16.387064;
tvoliq[16].tdef:= '';
tvoliq[17].tu:= 'Cubic meter'; tvoliq[17].tsym:= ''; tvoliq[17].tcons:= 1000000.0;
tvoliq[17].tdef:= '';
tvoliq[18].tu:= 'Cubic yard'; tvoliq[18].tsym:= ''; tvoliq[18].tcons:= 764554.857984;
tvoliq[18].tdef:= '';
tvoliq[19].tu:= 'Cup (UK)'; tvoliq[19].tsym:= ''; tvoliq[19].tcons:= 227.3045141;
tvoliq[19].tdef:= '';
tvoliq[20].tu:= 'Cup (US)'; tvoliq[20].tsym:= ''; tvoliq[20].tcons:= 236.5882365;
tvoliq[20].tdef:= '';


tvoliq[21].tu:= 'Ciathos'; tvoliq[21].tsym:= ''; tvoliq[21].tcons:= 451.5132;
tvoliq[21].tdef:= 'Greek unit.';
tvoliq[22].tu:= 'Dash (UK)'; tvoliq[22].tsym:= ''; tvoliq[22].tcons:= 0.295969419401;
tvoliq[22].tdef:= 'Equivalent to one half of a pinch.';
tvoliq[23].tu:= 'Dash (US)'; tvoliq[23].tsym:= ''; tvoliq[23].tcons:= 0.308057599609;
tvoliq[23].tdef:= '';
tvoliq[24].tu:= 'Fluid ounce (UK)'; tvoliq[24].tsym:= ''; tvoliq[24].tcons:= 28.4130642625;
tvoliq[24].tdef:= 'Contains 1 ounce mass of distilled water at 62°F, and barometer at 30 inches.';
tvoliq[25].tu:= 'Fluid ounce (US)'; tvoliq[25].tsym:= ''; tvoliq[25].tcons:= 29.5735295625;
tvoliq[25].tdef:= '';
tvoliq[26].tu:= 'Gallon (UK)'; tvoliq[26].tsym:= 'kg'; tvoliq[26].tcons:= 4546.09028199;
tvoliq[26].tdef:= 'A measure of capacity, containing four quarts; used, for the most part, in liquid measure, but sometimes in dry measure.'+'The English imperial gallon contains 10 pounds avoirdupois of distilled water at 62°F, and barometer at 30 inches, equal to 277.274 cubic inches.';
tvoliq[27].tu:= 'Gallon (US)'; tvoliq[27].tsym:= ''; tvoliq[27].tcons:= 3785.411784;
tvoliq[27].tdef:= 'A measure of capacity, containing four quarts; used, for the most part, in liquid measure, but sometimes in dry measure.'+'Note: The standart gallon of the Unites States contains 231 cubic inches, or 8.3389 pounds avoirdupois of distilled water at its maximum density,'+'and with the barometer at 30 inches. This is almost exactly equivalent to a cylinder of seven inches in diameter and six inches in height, and is the same as the old English wine gallon.'+'The beer gallon, now little used in the United States, contains 282 cubic inches.';
tvoliq[28].tu:= 'Hekat'; tvoliq[28].tsym:= ''; tvoliq[28].tcons:= 4768.6752;
tvoliq[28].tdef:= 'Israeli unit.';
tvoliq[29].tu:= 'Litre'; tvoliq[29].tsym:= 'l/L'; tvoliq[29].tcons:= 1000;
tvoliq[29].tdef:= 'The litre (American spelling: liter; SI symbols l or L) is a non-SI metric system unit of volume equal to 1 cubic decimetre (dm³), 1,000 cubic centimetres (cm³) or 1/1,000 cubic metre.';
tvoliq[30].tu:= 'Metertes/amphura'; tvoliq[30].tsym:= ''; tvoliq[30].tcons:= 39001.092;
tvoliq[30].tdef:= 'Greek unit.';
tvoliq[31].tu:= 'Mil'; tvoliq[31].tsym:= ''; tvoliq[31].tcons:= 1;
tvoliq[31].tdef:= 'Equal to one thousandth of a liter syn: milliliter, millilitre, ml, cubic centimeter, cubic centimeter, cc.';
tvoliq[32].tu:= 'Mililitre'; tvoliq[32].tsym:= ''; tvoliq[32].tcons:= 1;
tvoliq[32].tdef:= 'Equal to one thousandth of a liter syn: milliliter, millilitre, ml, mil, cubic centimeter, cubic centimeter, cc.';
tvoliq[33].tu:= 'Minim'; tvoliq[33].tsym:= ''; tvoliq[33].tcons:= 0.0616115199219;
tvoliq[33].tdef:= 'Used in Pharmaceutical to represent one drop. 1/60 fluid dram or 1/480 fluid ounce.'+'A U.S. minim is about 0.003760 in³ or 61.610 µl. The British minim is about 0.003612 in³ or 59.194 µl.'+'Origin of the word is from the Latin minimus, or small.';
tvoliq[34].tu:= 'Mushti'; tvoliq[34].tsym:= ''; tvoliq[34].tcons:= 60.9653;
tvoliq[34].tdef:= 'Indian unit.';
tvoliq[35].tu:= 'Oxybaphon'; tvoliq[35].tsym:= ''; tvoliq[35].tcons:= 66.245;
tvoliq[35].tdef:= 'Greek unit.';
tvoliq[36].tu:= 'Pinch (UK)'; tvoliq[36].tsym:= ''; tvoliq[36].tcons:= 0.591938838801;
tvoliq[36].tdef:= 'One eigth of a teaspoon.';
tvoliq[37].tu:= 'Pinch (US)'; tvoliq[37].tsym:= ''; tvoliq[37].tcons:= 0.616115199219;
tvoliq[37].tdef:= 'One eigth of a teaspoon.';
tvoliq[38].tu:= 'Pint (UK)'; tvoliq[38].tsym:= 'pt/p'; tvoliq[38].tcons:= 568.261285249;
tvoliq[38].tdef:= 'The imperial pint is equal to one eighth of an imperial gallon.';
tvoliq[39].tu:= 'Pint (US)'; tvoliq[39].tsym:= 'pt/p'; tvoliq[39].tcons:= 473.176473;
tvoliq[39].tdef:= 'The United States liquid pint is equal to one eighth of a United States liquid gallon. It is used commonly in the United States.';
tvoliq[40].tu:= 'Quart (UK)'; tvoliq[40].tsym:= ''; tvoliq[40].tcons:= 1136.5225705;
tvoliq[40].tdef:= 'The fourth part of a gallon; the eighth part of a peck; two pints.'+'Note: In imperial measure, a quart is forty English fluid ounces; in wine measure, it is thirty-two American fluid ounces.'+'The United States dry quart contains 67.20 cubic inches, the fluid quart 57.75. The English quart contains 69.32 cubic inches.';
tvoliq[41].tu:= 'Quart(US)'; tvoliq[41].tsym:= ''; tvoliq[41].tcons:= 946.352946;
tvoliq[41].tdef:= 'The fourth part of a gallon; the eighth part of a peck; two pints.'+'Note: In imperial measure, a quart is forty English fluid ounces; in wine measure, it is thirty-two American fluid ounces.'+'The United States dry quart contains 67.20 cubic inches, the fluid quart 57.75. The English quart contains 69.32 cubic inches.';
tvoliq[42].tu:= 'Shaku'; tvoliq[42].tsym:= ''; tvoliq[42].tcons:= 18.04;
tvoliq[42].tdef:= 'A Japanese unit of volume, the shaku equals about 18.04 milliliters (0.61 U.S. fluid ounce).'+'Note: shaku also means area and length.';
tvoliq[43].tu:= 'Tablespoon (UK)'; tvoliq[43].tsym:= ''; tvoliq[43].tcons:= 14.2065321312;
tvoliq[43].tdef:= 'One sixteenth of a cup. A spoon of the largest size commonly used at the table; distinguished from teaspoon, dessert spoon, etc.';
tvoliq[44].tu:= 'Tablespoon (US)'; tvoliq[44].tsym:= ''; tvoliq[44].tcons:= 14.7867647812;
tvoliq[44].tdef:= 'One sixteenth of a cup. A spoon of the largest size commonly used at the table; distinguished from teaspoon, dessert spoon, etc.';
tvoliq[45].tu:= 'Teaspoon (UK)'; tvoliq[45].tsym:= ''; tvoliq[45].tcons:= 4.73551071041;
tvoliq[45].tdef:= 'One third of a tablespoon. A small spoon used in stirring and sipping tea, coffee, etc., and for other purposes.';
tvoliq[46].tu:= 'Teaspoon (US)'; tvoliq[46].tsym:= ''; tvoliq[46].tcons:= 4.92892159375;
tvoliq[46].tdef:= 'One third of a tablespoon. A small spoon used in stirring and sipping tea, coffee, etc., and for other purposes.';
end.

