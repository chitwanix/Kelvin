unit len;

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
tlen: array[1..200] of tmag;


implementation

begin
tlen[1].tu := 'Actus (roman actus)'; tlen[1].tsym:= ''; tlen[1].tcons:= 35478.72;
tlen[1].tdef:= 'Ancient Roman unit equivalent to 120 pedes and 35.5 metres.';
tlen[2].tu:= 'Agate/ruby (typographical)'; tlen[2].tsym := ''; tlen[2].tcons:= 1.93303;
tlen[2].tdef:= 'Unit of typographical measure, equivalent to 5.5 typographical points or about 1/14 of an inch. It can refer to the height of a line of type or a font that is 5.5 points.';
tlen[3].tu:= 'Ångström (Angstrom)'; tlen[3].tsym:= 'Å'; tlen[3].tcons:= 0.0000001;
tlen[3].tdef:= 'The Ångström is a unit of length equal to 10−10 m (one ten-billionth of a meter) or 0.1 nm. Its symbol is the Swedish letter Å.';
tlen[4].tu:= 'Arpent (Canadian)'; tlen[4].tsym:= ''; tlen[4].tcons:= 58471.308;
tlen[4].tdef:= 'It is a french unit based on the Roman actus. It is used in Quebec as well in the U.S. in the French Louisianna. It is equivalent to 180 french feet or about 58.47 metres.';
tlen[5].tu:= 'Arpentcan'; tlen[5].tsym:= ''; tlen[5].tcons:= 44289146.88;
tlen[5].tdef:= 'Unit equivalent to 27.52 miles.';
tlen[6].tu:= 'Arpentlin (French arpent)'; tlen[6].tsym:= ''; tlen[6].tcons:= 58475.88;
tlen[6].tdef:= 'French unit of land measurement equivalent to 30 toises.';
tlen[7].tu:= 'Arshin/arshine/archin'; tlen[7].tsym:= ''; tlen[7].tcons:= 711.2;
tlen[7].tdef:= 'It is an ancient Russian unit used since the 16th century. It was standarized by Peter the Great in the 18th century to measure exactly twenty-eight English inches (71.1 cm).';
tlen[8].tu:= 'Assbaa'; tlen[8].tsym:= ''; tlen[8].tcons:= 20;
tlen[8].tdef:= 'It is an Arabian measure which correspond from the finger to 1/4 of a palm.';
tlen[9].tu:= 'Astronomical unit'; tlen[9].tsym:= 'AU'; tlen[9].tcons:= 149597870700000;
tlen[9].tdef:= 'Abbreviated as AU, au, a.u. or ua, the astronomical unit represents the Earth-Sun distance. It is now defined as 149,597,870,700 metres (92,955,807.273 mi).';
tlen[10].tu:= 'Barleycorn'; tlen[10].tsym:= ''; tlen[10].tcons:= 8.466666667;
tlen[10].tdef:= 'The barleycorn is the smallest anglo-saxon unit of length. It is 1/108th of a yard, 1/36 of foot and or 1/3 of an inch.';
tlen[11].tu:= 'Bohr Radius'; tlen[11].tsym:= ''; tlen[11].tcons:= 0.0000000529177;
tlen[11].tdef:= 'The Bohr radius is a physical constant, approximately equal to the most probable distance between the proton and electron in a hydrogen atom in its ground state. It is named after the physicist Niels Bohr (1885–1962).';
tlen[12].tu:= 'Bolt'; tlen[12].tsym:= ''; tlen[12].tcons:= 36576;
tlen[12].tdef:= 'A compact package or roll of cloth, as of canvas or silk, often containing about forty yards.';
tlen[13].tu:= 'Bottom measure'; tlen[13].tsym:= ''; tlen[13].tcons:= 0.635;
tlen[13].tdef:= 'One fortieth of an inch.';
tlen[14].tu:= 'Bourgeois (typographical)'; tlen[14].tsym:= ''; tlen[14].tcons:= 3.16314;
tlen[14].tdef:= '9 pt in height.';
tlen[15].tu:= 'Brevier (typographical)'; tlen[15].tsym:= ''; tlen[15].tcons:= 2.81168;
tlen[15].tdef:= '8 pt in height.';
tlen[16].tu:= 'Cable length (U.S. Navy)'; tlen[16].tsym:= ''; tlen[16].tcons:= 219456;
tlen[16].tdef:= 'A cable length or cable''s length is a nautical unit of measure equal to one tenth of a nautical mile or 100 fathoms, or sometimes 120 fathoms. The unit is named after the length of a ship''s anchor cable in the age of sail.';
tlen[17].tu:= 'Caliber (gun barrel caliber)'; tlen[17].tsym:= ''; tlen[17].tcons:= 0.254;
tlen[17].tdef:= 'The diameter of round or cylindrical body, as of a bullet or column.';
tlen[18].tu:= 'Cane'; tlen[18].tsym:= ''; tlen[18].tcons:= 3840.49;
tlen[18].tdef:= 'Persian unit.';
tlen[19].tu:= 'Centimeter'; tlen[19].tsym:= 'cm'; tlen[19].tcons:= 10;
tlen[19].tdef:= 'The hundredth part of the meter.';
tlen[20].tu:= 'Chain (engineers)'; tlen[20].tsym:= ''; tlen[20].tcons:= 30480;
tlen[20].tdef:= 'The engineers chain is equivalent to 100 ft.';
tlen[21].tu:= 'Gunter''s chain (surveyors)'; tlen[21].tsym:= ''; tlen[21].tcons:= 20116.8;
tlen[21].tdef:= 'Gunter''s chain is a measuring device used for land survey. It was designed and introduced in 1620 by English clergyman and mathematician Edmund Gunter (1581–1626).';
tlen[22].tu:= 'Charac (Persian)'; tlen[22].tsym:= ''; tlen[22].tcons:= 260.1;
tlen[22].tdef:= 'Persian unit.';
tlen[23].tu:= 'Chebel'; tlen[23].tsym:= ''; tlen[23].tcons:= 21031.24;
tlen[23].tdef:= 'Persian unit.';
tlen[24].tu:= 'Cicero (typographical)'; tlen[24].tsym:= ''; tlen[24].tcons:= 4.51278;
tlen[24].tdef:= 'Typographical measurement. 1 cicero equals 12 didot points.';
tlen[25].tu:= 'City block'; tlen[25].tsym:= ''; tlen[25].tcons:= 91440.0;
tlen[25].tdef:= 'An informal measure unit, about 100 yards.';
tlen[26].tu:= 'Classical electron radius'; tlen[26].tsym:= ''; tlen[26].tcons:= 0.00000000000281793345048;
tlen[26].tdef:= 'The classical electron radius, also known as the Lorentz radius or the Thomson scattering length, is based on a classical (i.e., non-quantum) relativistic model of the electron.';
tlen[27].tu:= 'Cloth finger'; tlen[27].tsym:= ''; tlen[27].tcons:= 114.3;
tlen[27].tdef:= 'Used in sewing.';
tlen[28].tu:= 'Cloth quarter'; tlen[28].tsym:= ''; tlen[28].tcons:= 228.6;
tlen[28].tdef:= 'Used in sewing.';
tlen[29].tu:= 'Columbian (typographical)'; tlen[29].tsym:= ''; tlen[29].tcons:= 5.62336;
tlen[29].tdef:= '16 pt in height.';
tlen[30].tu:= 'Compton wavelength of the Electron'; tlen[30].tsym:= ''; tlen[30].tcons:= 0.00000000242631117332;
tlen[30].tdef:= 'Named after Arthur Holly Compton (1892-1962).';
tlen[31].tu:= 'Compton wavelength of the Neutron'; tlen[31].tsym:= ''; tlen[31].tcons:= 0.00000000000131962;
tlen[31].tdef:= 'Named after Arthur Holly Compton (1892-1962).';
tlen[32].tu:= 'Compton wavelength of the Proton'; tlen[32].tsym:= ''; tlen[32].tcons:= 0.0000000000013214410756;
tlen[32].tdef:= 'Named after Arthur Holly Compton (1892-1962).';
tlen[33].tu:= 'Cubit (Biblical, Hebrew, english)'; tlen[33].tsym:= ''; tlen[33].tcons:= 457.2;
tlen[33].tdef:= 'A measure of length, being the distance from the elbow to the extremity of the middle finger. Note: The cubit varies in length in different countries, the English, Hebrew and Biblical cubits are 18 inches.';
tlen[34].tu:= 'Cubit (Greek, Pechya)'; tlen[34].tsym:= ''; tlen[34].tcons:= 462.28;
tlen[34].tdef:= 'A measure of length, being the distance from the elbow to the extremity of the middle finger. Note: The cubit varies in length in different countries, the Greek cubit is 18.20 inches.';
tlen[35].tu:= 'Cubit (Indian, Hasta)'; tlen[35].tsym:= ''; tlen[35].tcons:= 641.61;
tlen[35].tdef:= 'A measure of length, being the distance from the elbow to the extremity of the middle finger. Note: The cubit varies in length in different countries, the Greek cubit is 18.20 inches.';
tlen[36].tu:= 'Cubit (Israeli)'; tlen[36].tsym:= ''; tlen[36].tcons:= 553.72;
tlen[36].tdef:= 'A measure of length, being the distance from the elbow to the extremity of the middle finger. Note: The cubit varies in length in different countries, the Israeli cubit is 21.8 inches.';
tlen[37].tu:= 'Cubit (Roman)'; tlen[37].tsym:= ''; tlen[37].tcons:= 443.738;
tlen[37].tdef:= 'A measure of length, being the distance from the elbow to the extremity of the middle finger. Note: The cubit varies in length in different countries, the Roman cubit is 17.47 inches.';
tlen[38].tu:= 'Diamond (typographical)'; tlen[38].tsym:= ''; tlen[38].tcons:= 1.58157;
tlen[38].tdef:= '4 1/2 pt in height.';
tlen[39].tu:= 'Digit/digitus'; tlen[39].tsym:= ''; tlen[39].tcons:= 18.542;
tlen[39].tdef:= 'Represents a finger''s breadth, commonly estimated to be three fourths of an inch.';
tlen[40].tu:= 'Earth diameter'; tlen[40].tsym:= ''; tlen[40].tcons:= 12742630000;
tlen[40].tdef:= 'Diameter for the Earth.';
tlen[41].tu:= 'Elite/Long primer (typographical)'; tlen[41].tsym:= ''; tlen[41].tcons:= 3.5146;
tlen[41].tdef:= '10 pt in height.';
tlen[42].tu:= 'Ell (Dutch/Flemish)'; tlen[42].tsym:= ''; tlen[42].tcons:= 685.8;
tlen[42].tdef:= 'A measure for cloth; now rarely used. It is of different lengths in different countries; the English ell being 45 inches, the Dutch or Flemish ell 27, the Scotch about 37.';
tlen[43].tu:= 'Ell (English)'; tlen[43].tsym:= ''; tlen[43].tcons:= 1143;
tlen[43].tdef:= 'A measure for cloth; now rarely used. It is of different lengths in different countries; the English ell being 45 inches, the Dutch or Flemish ell 27, the Scotch about 37.';
tlen[44].tu:= 'Ell (Scotch)'; tlen[44].tsym:= ''; tlen[44].tcons:= 939.8;
tlen[44].tdef:= 'A measure for cloth; now rarely used. It is of different lengths in different countries; the English ell being 45 inches, the Dutch or Flemish ell 27, the Scotch about 37.';
tlen[45].tu:= 'Em'; tlen[45].tsym:= ''; tlen[45].tcons:= 0.3514598;
tlen[45].tdef:= 'Used in typography. A quadrat, the face or top of which is a perfect square; also, the size of such a square in any given size of type, used as the unit of measurement for that type.';
tlen[46].tu:= 'En'; tlen[46].tsym:= ''; tlen[46].tcons:= 0.1757299;
tlen[46].tdef:= 'Used in typography. Half an em, that is, half of the unit of space in measuring printed matter.';
tlen[47].tu:= 'English (typographical)'; tlen[47].tsym:= ''; tlen[47].tcons:= 4.92044;
tlen[47].tdef:= '14 pt in height.';
tlen[48].tu:= 'Fathom'; tlen[48].tsym:= ''; tlen[48].tcons:= 1828.8;
tlen[48].tdef:= 'A fathom (abbreviation: ftm) = 1.8288 metres, is a unit of length in the imperial and the U.S. customary systems, used especially for measuring the depth of water. Originally based on the distance between a man''s outstretched arm.';
tlen[49].tu:= 'Fathom (Greek)'; tlen[49].tsym:= ''; tlen[49].tcons:= 1849.12;
tlen[49].tdef:= '4 Greek cubits.';
tlen[50].tu:= 'Femtometer'; tlen[50].tsym:= ''; tlen[50].tcons:= 0.000000000001;
tlen[50].tdef:= 'A metric unit of length equal to one quadrillionth of a meter.';
tlen[51].tu:= 'Fermi'; tlen[51].tsym:= ''; tlen[51].tcons:= 0.000000000001;
tlen[51].tdef:= 'A metric unit of length equal to one quadrillionth of a meter.';
tlen[52].tu:= 'Finger breadth'; tlen[52].tsym:= ''; tlen[52].tcons:= 22.225;
tlen[52].tdef:= 'The breadth of a finger, or the fourth part of the hand; a measure of nearly an inch.';
tlen[53].tu:= 'Finger length'; tlen[53].tsym:= ''; tlen[53].tcons:= 114.3;
tlen[53].tdef:= 'The length of finger, a measure in domestic use in the United States, of about four and a half inches or one eighth of a yard.';
tlen[54].tu:= 'Foot'; tlen[54].tsym:= 'ft or '''; tlen[54].tcons:= 304.8;
tlen[54].tdef:= 'Equivalent to twelve inches; one third of a yard. This measure is supposed to be taken from the length of a man''s foot.';
tlen[55].tu:= 'Foot (Arabian)'; tlen[55].tsym:= ''; tlen[55].tcons:= 319.19;
tlen[55].tdef:= '';
tlen[56].tu:= 'Foot (Assyrian)'; tlen[56].tsym:= ''; tlen[56].tcons:= 2630.42;
tlen[56].tdef:= '';
tlen[57].tu:= 'Foot (Roman, pes)'; tlen[57].tsym:= ''; tlen[57].tcons:= 295.9608;
tlen[57].tdef:= '';
tlen[58].tu:= 'Foot (geodetic, survey)'; tlen[58].tsym:= ''; tlen[58].tcons:= 304.800609601;
tlen[58].tdef:= 'A former U.S. definition of the foot as exactly 1200/3937 meter. It makes the meter equal exactly 39.37 inches. In 1959 the survey foot was replaced by the international foot, equal to exactly 30.48 centimeters.';
tlen[59].tu:= 'Furlong'; tlen[59].tsym:= ''; tlen[59].tcons:= 201168.0;
tlen[59].tdef:= 'The eighth part of a mile; forty rods; two hundred and twenty yards. From the Old English fuhrlang, meaning "the length of a furrow".';
tlen[60].tu:= 'Ghalva'; tlen[60].tsym:= ''; tlen[60].tcons:= 230429.25;
tlen[60].tdef:= 'Arabian unit equivalent to 720 arabic feet (230.4 m).';
tlen[61].tu:= 'Gradus (Roman)'; tlen[61].tsym:= ''; tlen[61].tcons:= 740.664;
tlen[61].tdef:= '';
tlen[62].tu:= 'Great Primer (typographical)'; tlen[62].tsym:= ''; tlen[62].tcons:= 6.32628;
tlen[62].tdef:= '18 pt in height.';
tlen[63].tu:= 'Hand'; tlen[63].tsym:= ''; tlen[63].tcons:= 101.6;
tlen[63].tdef:= 'A measure equal to a hand''s breadth, -- four inches; a palm. Chiefly used in measuring the height of horses.';
tlen[64].tu:= 'Inch'; tlen[64].tsym:= 'in'; tlen[64].tcons:= 25.4;
tlen[64].tdef:= 'One imperial or US customary inch is defined as 1⁄12 of a foot and is therefore 1⁄36 of a yard. Traditional standards for the exact length of an inch have varied, but it is now defined to be exactly 25.4 mm.';
tlen[65].tu:= 'Ken'; tlen[65].tsym:= ''; tlen[65].tcons:= 2118.36;
tlen[65].tdef:= 'Japanese fathom. The ken is the length of a traditional tatami mat.';
tlen[66].tu:= 'Kilometer'; tlen[66].tsym:= 'km'; tlen[66].tcons:= 1000000;
tlen[66].tdef:= 'The kilometre is a unit of length in the metric system, equal to one thousand metres. It is now the measurement unit used officially for expressing distances between geographical places on land in most of the world.';
tlen[67].tu:= 'Klafter/Faden (German)'; tlen[67].tsym:= ''; tlen[67].tcons:= 1896.5;
tlen[67].tdef:= 'Originally 6 feet, after introduction of the metric system 10 feet. Regional changes from 1.75 m in Baden to 3 m in Switzerland.';
tlen[68].tu:= 'Klafter/Faden (Switzerland)'; tlen[68].tsym:= ''; tlen[68].tcons:= 1800;
tlen[68].tdef:= 'Similar to the fathom.';
tlen[69].tu:= 'League (Land, statute)'; tlen[69].tsym:= ''; tlen[69].tcons:= 4828032;
tlen[69].tdef:= 'Used as a land measure. 3 statute miles.';
tlen[70].tu:= 'League (Nautical)'; tlen[70].tsym:= ''; tlen[70].tcons:= 5556000;
tlen[70].tdef:= 'Used as a marine measure. 3 nautical miles.';
tlen[71].tu:= 'Li'; tlen[71].tsym:= ''; tlen[71].tcons:= 644652;
tlen[71].tdef:= 'A Chinese measure of distance, being a little more than one third of a mile.';
tlen[72].tu:= 'Light second'; tlen[72].tsym:= ''; tlen[72].tcons:= 299792458000;
tlen[72].tdef:= 'The distance over which light can travel in one second; used as a unit in expressing stellar distances.';
tlen[73].tu:= 'Light year'; tlen[73].tsym:= ''; tlen[73].tcons:= 9460730472580800000;
tlen[73].tdef:= 'The distance over which light can travel in a year''s time; used as a unit in expressing stellar distances. It is more than 63,000 times as great as the distance from the earth to the sun.';
tlen[74].tu:= 'Line'; tlen[74].tsym:= ''; tlen[74].tcons:= 2.11666666667;
tlen[74].tdef:= 'The line is a unit of measurement, one line being equal to 1⁄12 of an English (prior to 1824) inch. It was defined as one-quarter of a barleycorn.';
tlen[75].tu:= 'Link (Gunters, surveyors)'; tlen[75].tsym:= ''; tlen[75].tcons:= 201.168;
tlen[75].tdef:= 'Part of a surveyors instrument (chain) which consists of links and is used in measuring land. One commonly in use is Gunter''s chain, which consists of one hundred links, each link being 7.92" in length.';
tlen[76].tu:= 'Link (U.S., engineers)'; tlen[76].tsym:= ''; tlen[76].tcons:= 304.8;
tlen[76].tdef:= 'Used by surveyors. In the U.S., where 100-foot chains are more common, the link is the same as the foot.';
tlen[77].tu:= 'Marathon'; tlen[77].tsym:= ''; tlen[77].tcons:= 42194988;
tlen[77].tdef:= 'A footrace of 26 miles 385 yards.';
tlen[78].tu:= 'Megameter'; tlen[78].tsym:= ''; tlen[78].tcons:= 1000000000;
tlen[78].tdef:= 'In the metric system, one million meters, or one thousand kilometers.';
tlen[79].tu:= 'Meter'; tlen[79].tsym:= 'm'; tlen[79].tcons:= 1000;
tlen[79].tdef:= 'Equal to 39.37 English inches, the standard of linear measure in the metric system of weights and measures. '+'It was intended to be, and is very nearly, the ten millionth part of the distance from the equator to the north pole, as ascertained by actual measurement of an arc of a meridian.';
tlen[80].tu:= 'Micrometer/micron'; tlen[80].tsym:= 'µm'; tlen[80].tcons:= 0.001;
tlen[80].tdef:= 'A metric unit of length equal to one millionth of a meter. The thousandth part of one millimeter.';
tlen[81].tu:= 'Mil'; tlen[81].tsym:= 'mil'; tlen[81].tcons:= 0.0254;
tlen[81].tdef:= 'Equal to one thousandth of an inch; used to specify thickness (e.g., of sheets or wire).';
tlen[82].tu:= 'Mile (Roman)'; tlen[82].tsym:= ''; tlen[82].tcons:= 1479804;
tlen[82].tdef:= '5000 Roman feet.';
tlen[83].tu:= 'Mile (nautical, geographical)'; tlen[83].tsym:= 'nmi'; tlen[83].tcons:= 1852000;
tlen[83].tdef:= 'The geographical, or Nautical mile is equal to one sixtieth of a degree of a great circle of the earth, or about 6080.27 feet.';
tlen[84].tu:= 'Mile (statute)'; tlen[84].tsym:= 'mi'; tlen[84].tcons:= 1609344;
tlen[84].tdef:= 'Mile is from the Latin word for 1000 (mille). A mile conforming to statute, that is, in England and the United States, a mile of 5,280 feet, as distinguished from any other mile.';

tlen[85].tu:= 'Millimeter'; tlen[85].tsym:= 'mm'; tlen[85].tcons:= 1;
tlen[85].tdef:= 'The millimeter is the thouthandth part of the meter.';

tlen[86].tu:= 'Minion (typographical)'; tlen[86].tsym:= ''; tlen[86].tcons:= 2.46022;
tlen[86].tdef:= '7 pt in height.';
tlen[87].tu:= 'Nail (cloth)'; tlen[87].tsym:= ''; tlen[87].tcons:= 57.15;
tlen[87].tdef:= 'Used for measuring cloth. 1/20 ell. The length of the last two joints (including the fingernail) of the middle finger. The nail is equivalent to 1/16 yard, 1/4 span.';
tlen[88].tu:= 'Nanometer'; tlen[88].tsym:= 'nm'; tlen[88].tcons:= 0.000001;
tlen[88].tdef:= 'A metric unit of length equal to 10e-9 meters.';
tlen[89].tu:= 'Naval shot'; tlen[89].tsym:= ''; tlen[89].tcons:= 27432;
tlen[89].tdef:= 'Equal to 15 fathoms.';
tlen[90].tu:= 'Nonpareil (typographical)'; tlen[90].tsym:= ''; tlen[90].tcons:= 2.10876;
tlen[90].tdef:= '6 pt in height.';
tlen[91].tu:= 'Pace'; tlen[91].tsym:= ''; tlen[91].tcons:= 762;
tlen[91].tdef:= 'The length of a step in walking or marching, reckoned from the heel of one foot to the heel of the other. Note: Ordinarily the pace is estimated at two and one half linear feet.';
tlen[92].tu:= 'Pace/passus (Roman)'; tlen[92].tsym:= ''; tlen[92].tcons:= 1479.804;
tlen[92].tdef:= 'The Roman pace (passus) was from the heel of one foot to the heel of the same foot when it next touched the ground. It is equivalent to five Roman feet.';
tlen[93].tu:= 'Pace (double-time marching)'; tlen[93].tsym:= ''; tlen[93].tcons:= 914.4;
tlen[93].tdef:= 'The regulation marching pace in the English and United States armies is thirty-six inches for double time.';
tlen[94].tu:= 'Pace (quick-time marching)'; tlen[94].tsym:= ''; tlen[94].tcons:= 762.0;
tlen[94].tdef:= 'The regulation marching pace in the English and United States armies is thirty inches for quick time.';
tlen[95].tu:= 'Palm (Greek)'; tlen[95].tsym:= ''; tlen[95].tcons:= 77.1313333333;
tlen[95].tdef:= 'A lineal measure equal either to the breadth of the hand or to its length from the wrist to the ends of the fingers. It is used in measuring a horse''s height. In Greece, the palm was reckoned at three inches.';
tlen[96].tu:= 'Palm (Roman greater)'; tlen[96].tsym:= ''; tlen[96].tcons:= 221.742;
tlen[96].tdef:= 'A lineal measure equal either to the breadth of the hand or to its length from the wrist to the ends of the fingers. It is used in measuring a horse''s height. One of two Roman measures of the palm, the greater palm is 8.73 inches.';
tlen[97].tu:= 'Palm (Roman lesser)'; tlen[97].tsym:= ''; tlen[97].tcons:= 73.914;
tlen[97].tdef:= 'A lineal measure equal either to the breadth of the hand or to its length from the wrist to the ends of the fingers. It is used in measuring a horse''s height. One of two Roman measures of the palm, the lesser palm is 2.91 inches.';
tlen[98].tu:= 'Parasang'; tlen[98].tsym:= ''; tlen[98].tcons:= 5632704;
tlen[98].tdef:= 'A Persian measure of length, which, according to Herodotus and Xenophon, was thirty stadia, or somewhat more than three and a half miles. The measure varied in different times and places, and, as now used, is estimated at three and a half English miles.';
tlen[99].tu:= 'Parsec'; tlen[99].tsym:= ''; tlen[99].tcons:= 30856775876800000000; //3.08567758768e+19
tlen[99].tdef:= 'A unit of astronomical length based on the distance from  Earth at which stellar parallax is 1 second of arc. It is equivalent to 3.262 light years.';
tlen[100].tu:= 'Pearl (typographical)'; tlen[100].tsym:= ''; tlen[100].tcons:= 1.7573;
tlen[100].tdef:= '5 pt in height.';
tlen[101].tu:= 'Pica (typographical)'; tlen[101].tsym:= ''; tlen[101].tcons:= 4.21752;
tlen[101].tdef:= 'A size of type next larger than small pica, and smaller than English. It is equal to 12 pt in height.';
tlen[102].tu:= 'Picometer'; tlen[102].tsym:= ''; tlen[102].tcons:= 0.000000001;
tlen[102].tdef:= 'A metric unit of length equal to one trillionth of a meter.';
tlen[103].tu:= 'Point (PostScript)(typographical)'; tlen[103].tsym:= 'pt'; tlen[103].tcons:= 0.352777777778;
tlen[103].tdef:= 'Typographical measurement. Created by Adobe. There are exactly 72 PostScript points in 1 inch.';
tlen[104].tu:= 'Point (didot)(typographical)'; tlen[104].tsym:= 'pt'; tlen[104].tcons:= 0.376065;
tlen[104].tdef:= 'Typographical measurement. The didot system originated in France but was used in most of Europe.';
tlen[105].tu:= 'Point (pica)(typographical)'; tlen[105].tsym:= 'pt'; tlen[105].tcons:= 0.35146;
tlen[105].tdef:= 'Typographical measurement. This system was developed in England and is used in Great-Britain and the US. 1 pica equals 12 pica points.';
tlen[106].tu:= 'Ri'; tlen[106].tsym:= ''; tlen[106].tcons:= 3926799.36;
tlen[106].tdef:= 'Japanese league.';
tlen[107].tu:= 'Rod/pole/perch'; tlen[107].tsym:= ''; tlen[107].tcons:= 5029.2;
tlen[107].tdef:= 'The rod is a unit of length equal to 5½ yards, 16½ feet or 1⁄320th of a statute mile. Since the adoption of the international yard on 1 July 1959, it has been equivalent to exactly 5.0292 meters. In old English, the term lug is also used.';
tlen[108].tu:= 'Rope'; tlen[108].tsym:= ''; tlen[108].tcons:= 6096;
tlen[108].tdef:= 'As a linear measure, used in drainage and hedging, it is equal to 20 feet, i.e. 6.096 m (for the international inch).';
tlen[109].tu:= 'Sadzhens/sagene/sazhen'; tlen[109].tsym:= ''; tlen[109].tcons:= 2103.12;
tlen[109].tdef:= 'Russian and East European. Used in previous centuries (until WWI or WWII). The distance between a grown man''s spread of arms, from the finger- tips of one to hand to the finger-tips of the other hand. Equal to about 7 feet long (2.13 m).';
tlen[110].tu:= 'Shaku'; tlen[110].tsym:= ''; tlen[110].tcons:= 303.022;
tlen[110].tdef:= 'A Japanese foot. Shaku is also a unit of area and volume.';
tlen[111].tu:= 'Skein'; tlen[111].tsym:= ''; tlen[111].tcons:= 109728;
tlen[111].tdef:= '120 yards. A skein of cotton yarn is formed by eighty turns of the thread round a fifty-four inch reel.';
tlen[112].tu:= 'Small pica (typographical)'; tlen[112].tsym:= ''; tlen[112].tcons:= 3.86606;
tlen[112].tdef:= '11 pt in height.';
tlen[113].tu:= 'Soccer field'; tlen[113].tsym:= ''; tlen[113].tcons:= 91440;
tlen[113].tdef:= '100 yards.';
tlen[114].tu:= 'Solar diameter'; tlen[114].tsym:= ''; tlen[114].tcons:= 1391900000000;  //1.3919e+12
tlen[114].tdef:= 'Diameter of our sun.';
tlen[115].tu:= 'Span (Greek)'; tlen[115].tsym:= ''; tlen[115].tcons:= 231.394;
tlen[115].tdef:= 'To measure by the span of the hand with the fingers extended, or with the fingers encompassing the object; as, to span a space or distance; to span a cylinder. One half of a Greek cubit.';
tlen[116].tu:= 'Span (cloth)'; tlen[116].tsym:= ''; tlen[116].tcons:= 228.6;
tlen[116].tdef:= '9 inches.';
tlen[117].tu:= 'Spindle (cotten yarn)'; tlen[117].tsym:= ''; tlen[117].tcons:= 13825728;
tlen[117].tdef:= 'A cotten yarn measure containing 15,120 yards.';
tlen[118].tu:= 'Spindle (linen yarn)'; tlen[118].tsym:= ''; tlen[118].tcons:= 13167360;
tlen[118].tdef:= 'A linen yarn measure containing 14,400 yards.';
tlen[119].tu:= 'Stadia/stadion (Greek)'; tlen[119].tsym:= ''; tlen[119].tcons:= 185115.2;
tlen[119].tdef:= 'It was equal to 600 Greek or 625 Roman feet, or 125 Roman paces, or to 606 feet 9 inches English. This was also called the Olympic stadium, as being the exact length of the foot-race course at Olympia.';
tlen[120].tu:= 'Stadium (Persian)'; tlen[120].tsym:= ''; tlen[120].tcons:= 214579.62;
tlen[120].tdef:= '';
tlen[121].tu:= 'Stadium (Roman)'; tlen[121].tsym:= ''; tlen[121].tcons:= 184708.8;
tlen[121].tdef:= 'It was equal to 600 Greek or 625 Roman feet, or 125 Roman paces, or to 606 feet 9 inches English. This was also called the Olympic stadium, as being the exact length of the foot-race course at Olympia.';
tlen[122].tu:= 'Sun (Japanese)'; tlen[122].tsym:= ''; tlen[122].tcons:= 30.3022;
tlen[122].tdef:= 'Japanese measurement.';
tlen[123].tu:= 'Toise (French)'; tlen[123].tsym:= ''; tlen[123].tcons:= 1949.196;
tlen[123].tdef:= 'French fathom. It was originated in pre-revolutionary France. In North America, it was used in colonial French establishments in early New France, French Louisiana (La Louisiane), and Quebec.';

tlen[124].tu:= 'Twip'; tlen[124].tsym:= ''; tlen[124].tcons:= 0.017638878;
tlen[124].tdef:= 'Wikipedia: A twip (abbreviating "twentieth of a point", "twentieth of an inch point",or "twentieth of an Imperial point") is a typographical measurement, defined as 1/20 of a typographical point. One twip is 1/1440 inch or 17.639 µm when derived from the PostScript point at 72 to the inch, and 1/1445.4 inch or 17.573 µm based on the printer''s point at 72.27 to the inch.';

tlen[125].tu:= 'Vara (Mexican)'; tlen[125].tsym:= ''; tlen[125].tcons:= 837.946;
tlen[125].tdef:= 'A Mexican measure of length equal to about one yard (32.99 inches).';
tlen[126].tu:= 'Vara (Spanish)'; tlen[126].tsym:= ''; tlen[126].tcons:= 847.979;
tlen[126].tdef:= 'It is an old Spanish unit of length. Varas are a surveying unit that appears in many deeds in the southern United States and also used in Latin America. The Spanish unit was set at about 835.905 mm in 1801. In Argentina, the vara measured about 866 mm.';
tlen[127].tu:= 'Verst/werst'; tlen[127].tsym:= ''; tlen[127].tcons:= 1066800;
tlen[127].tdef:= 'A Russian measure of length containing 3,500 English feet.';
tlen[128].tu:= 'Yard'; tlen[128].tsym:= 'yd'; tlen[128].tcons:= 914.4;
tlen[128].tdef:= 'A yard (abbreviation: yd) is a unit of length in several different systems including United States customary units, Imperial units and the former English units. It is equal to 3 feet or 36 inches. Was legally defined to be exactly 0.9144 metres.';

end.


        (*mag1, mag2, mag3, mag4, mag5, mag6, mag7, mag8, mag9, mag10: array[0..3] of string;
        mag11, mag12, mag13, mag14, mag15, mag16, mag17, mag18, mag19, mag20: array[0..3] of string;
        mag21, mag22, mag23, mag24, mag25, mag26, mag27, mag28, mag29, mag30: array[0..3] of string;
        mag31, mag32, mag33, mag34, mag35, mag36, mag37, mag38, mag39, mag40: array[0..3] of string;
        mag41, mag42, mag43, mag44, mag45, mag46, mag47, mag48, mag49, mag50: array[0..3] of string;
        mag51, mag52, mag53, mag54, mag55, mag56, mag57, mag58, mag59, mag60: array[0..3] of string;
        mag61, mag62, mag63, mag64, mag65, mag66, mag67, mag68, mag69, mag70: array[0..3] of string;
        mag71, mag72, mag73, mag74, mag75, mag76, mag77, mag78, mag79, mag80: array[0..3] of string;
        mag81, mag82, mag83, mag84, mag85, mag86, mag87, mag88, mag89, mag90: array[0..3] of string;
        mag91, mag92, mag93, mag94, mag95, mag96, mag97, mag98, mag99, mag100: array[0..3] of string;
        mag101, mag102, mag103, mag104, mag105, mag106, mag107, mag108, mag109, mag110: array[0..3] of string;
        mag111, mag112, mag113, mag114, mag115, mag116, mag117, mag118, mag119, mag120: array[0..3] of string;
        mag121, mag122, mag123, mag124, mag125, mag126, mag127, mag128, mag129, mag130: array[0..3] of string;
        func1, func2,func3, func4, func5, func6, func7, func8, func9, func10: double;
        mem1, mem2, mem3, mem4, mem5, mem6, mem7, mem8, mem9, mem10: ansistring;
        mem11, mem12, mem13, mem14, mem15, mem16, mem17, mem18, mem19, mem20: ansistring;
        mem21, mem22, mem23, mem24, mem25, mem26, mem27, mem28, mem29, mem30: ansistring;
        mem31, mem32, mem33, mem34, mem35, mem36, mem37, mem38, mem39, mem40: ansistring;
        mem41, mem42, mem43, mem44, mem45, mem46, mem47, mem48, mem49, mem50: ansistring;
        mem51, mem52, mem53, mem54, mem55, mem56, mem57, mem58, mem59, mem60: ansistring;
        mem61, mem62, mem63, mem64, mem65, mem66, mem67, mem68, mem69, mem70: ansistring;
        mem71, mem72, mem73, mem74, mem75, mem76, mem77, mem78, mem79, mem80: ansistring;
        mem81, mem82, mem83, mem84, mem85, mem86, mem87, mem88, mem89, mem90: ansistring;
        mem91, mem92, mem93, mem94, mem95, mem96, mem97, mem98, mem99, mem100: ansistring;
        mem101, mem102, mem103, mem104, mem105, mem106, mem107, mem108, mem109, mem110: ansistring;
        mem111, mem112, mem113, mem114, mem115, mem116, mem117, mem118, mem119, mem120: ansistring;
        mem121, mem122, mem123, mem124, mem125, mem126, mem127, mem128, mem129, mem130: ansistring;*)
