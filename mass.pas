unit mass;

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
tmass: array[1..84] of TMag;

implementation

begin
tmass[1].tu := 'amu (atomic mass unit)/dalton'; tmass[1].tsym:= 'u/Da'; tmass[1].tcons:= 1.66053892173e-24; //1.660538921(73)×10−27
tmass[1].tdef:= 'Unit of mass for expressing masses of atoms or molecules.';
tmass[2].tu:= 'Bekah (biblical)'; tmass[2].tsym := ''; tmass[2].tcons:= 7.7758692;
tmass[2].tdef:= '1/2 shekel, 5 pennyweight.';
tmass[3].tu:= 'Carat'; tmass[3].tsym:= ''; tmass[3].tcons:= 0.2;
tmass[3].tdef:= 'The weight by which precious stones and pearls are weighed.';
tmass[4].tu:= 'Catty/caddy/chin'; tmass[4].tsym:= ''; tmass[4].tcons:= 604.789826667;
tmass[4].tdef:= 'An Chinese or East Indian Weight of 1 1/3 pounds.';
tmass[5].tu:= 'Cental'; tmass[5].tsym:= ''; tmass[5].tcons:= 45359.237;
tmass[5].tdef:= 'British for 100 pounds. Also called hundredweight in the US.';
tmass[6].tu:= 'Cotton bale (Egypt'; tmass[6].tsym:= ''; tmass[6].tcons:= 340194.2775;
tmass[6].tdef:= 'Egyptian measurement equivalent to 750 pounds.';
tmass[7].tu:= 'Cotton bale (US)'; tmass[7].tsym:= ''; tmass[7].tcons:= 226796.185;
tmass[7].tdef:= 'US measurement equivalent to 500 pounds.';
tmass[8].tu:= 'Crith'; tmass[8].tsym:= ''; tmass[8].tcons:= 0.0906;
tmass[8].tdef:= 'From the Greek word for barleycorn. '+'The weight of a liter of hydrogen at 0.01° centigrade and with a and pressure of 1 atmosphere.';
tmass[9].tu:= 'Denarius'; tmass[9].tsym:= ''; tmass[9].tcons:= 4.72492052083;
tmass[9].tdef:= 'Roman weight measuring 60 troy grains.';
tmass[10].tu:= 'Dinar'; tmass[10].tsym:= ''; tmass[10].tcons:= 4.2;
tmass[10].tdef:= 'Arabian weight measuring 4.2 gram.';
tmass[11].tu:= 'Doppelzentner'; tmass[11].tsym:= ''; tmass[11].tcons:= 1e5;
tmass[11].tdef:= 'Metric hundredweight equivalent to 100 kg.';
tmass[12].tu:= 'Drachma (Dutch)'; tmass[12].tsym:= ''; tmass[12].tcons:= 3.906;
tmass[12].tdef:= 'The weight of an old Dutch drachma coin.';
tmass[13].tu:= 'Drachma (Greek)'; tmass[13].tsym:= ''; tmass[13].tcons:= 4.2923;
tmass[13].tdef:= 'The weight of an old Greek drachma coin.';
tmass[14].tu:= 'Dram (avoirdupois)'; tmass[14].tsym:= ''; tmass[14].tcons:= 1.77184519531;
tmass[14].tdef:= 'In Avoirdupois weight, one sixteenth part of an ounce.';
tmass[15].tu:= 'Dram (Troy, apothecary)'; tmass[15].tsym:= ''; tmass[15].tcons:= 3.8879346;
tmass[15].tdef:= 'In Apothecaries'' weight, one eighth part of an ounce, or sixty grains.';
tmass[16].tu:= 'Earth mass'; tmass[16].tsym:= ''; tmass[16].tcons:= 5.983e+27;
tmass[16].tdef:= 'Mass of the Earth.';
tmass[17].tu:= 'Electron rest mass'; tmass[17].tsym:= ''; tmass[17].tcons:= 9.109558e-28;
tmass[17].tdef:= 'The mass of an electron as measured when the it is at rest relative to an observer, an inherent property of the body.';
tmass[18].tu:= 'Funt'; tmass[18].tsym:= ''; tmass[18].tcons:= 408.233133;
tmass[18].tdef:= 'Russian, equivalent to 0.9 pounds.';
tmass[19].tu:= 'Grain'; tmass[19].tsym:= ''; tmass[19].tcons:= 0.06479891;
tmass[19].tdef:= 'The unit of the English system of weights; so called because considered equal to the average of grains taken from the middle of the ears of wheat. '+'7,000 grains constitute the pound avoirdupois and 5,760 grains constitute the pound troy.';
tmass[20].tu:= 'Gram'; tmass[20].tsym:= ''; tmass[20].tcons:= 1;
tmass[20].tdef:= 'The unit of weight in the metric system. It was intended to be exactly, and is very nearly, equivalent to the weight in a vacuum of one cubic centimeter of pure water at its maximum density. It is equal to 15.432 grains.';


tmass[21].tu:= 'Hundredweight (long, English)'; tmass[21].tsym:= ''; tmass[21].tcons:= 50802.34544;
tmass[21].tdef:= 'A denomination of weight of 112 pounds.';
tmass[22].tu:= 'Hundredweight (short/net, US)'; tmass[22].tsym:= ''; tmass[22].tcons:= 45359.237;
tmass[22].tdef:= 'A denomination of weight of 100 pounds. In most of the United States, both in practice and by law, it is 100 pounds avoirdupois.';
tmass[23].tu:= 'Hyl'; tmass[23].tsym:= ''; tmass[23].tcons:= 9.80665;
tmass[23].tdef:= 'From an ancient Greek word for matter. '+'One hyl is the mass that is accelerated at one meter per second per second by one kilogram of force. '+'Equivalent to 0.00980665 kg.';
tmass[24].tu:= 'Kat'; tmass[24].tsym:= ''; tmass[24].tcons:= 9.331;
tmass[24].tdef:= 'Egyptian measure.';
tmass[25].tu:= 'Kerat'; tmass[25].tsym:= ''; tmass[25].tcons:= 0.19504;
tmass[25].tdef:= 'Egyptian measure.';
tmass[26].tu:= 'Kilogram'; tmass[26].tsym:= 'kg'; tmass[26].tcons:= 1000;
tmass[26].tdef:= 'The kilogram or kilogramme (SI unit symbol: kg; SI dimension symbol: M), is the base unit of mass in the International System of Units and is defined as being equal to the mass of the International Prototype of the Kilogram (IPK).';
tmass[27].tu:= 'Kin'; tmass[27].tsym:= ''; tmass[27].tcons:= 600.10270551;
tmass[27].tdef:= 'Japanese kin. Equivalent to 1.323 pound.';
tmass[28].tu:= 'Kona'; tmass[28].tsym:= ''; tmass[28].tcons:= 6.99828;
tmass[28].tdef:= 'Indian measure.';
tmass[29].tu:= 'Kwan'; tmass[29].tsym:= ''; tmass[29].tcons:= 3751.2088999;
tmass[29].tdef:= 'Japanese kwan. Equivalent to 8.27 pounds.';
tmass[30].tu:= 'Lian/tael'; tmass[30].tsym:= ''; tmass[30].tcons:= 37.7993641667;
tmass[30].tdef:= 'Chinese. Equivalent to 1/16 catty.';
tmass[31].tu:= 'Libra (Mexican)'; tmass[31].tsym:= ''; tmass[31].tcons:= 460.39625555;
tmass[31].tdef:= '';
tmass[32].tu:= 'Libra (Spanish)'; tmass[32].tsym:= ''; tmass[32].tcons:= 459.94266318;
tmass[32].tdef:= '';
tmass[33].tu:= 'Libra/librae/as/pondu'; tmass[33].tsym:= ''; tmass[33].tcons:= 326.5865064;
tmass[33].tdef:= 'Roman originator of the English pound (lb). Equivalent to 12 uncia.';
tmass[34].tu:= 'Livre (French)'; tmass[34].tsym:= ''; tmass[34].tcons:= 490.0;
tmass[34].tdef:= '';
tmass[35].tu:= 'Lot (German)'; tmass[35].tsym:= ''; tmass[35].tcons:= 15.625;
tmass[35].tdef:= 'One half unze.';
tmass[36].tu:= 'Mast'; tmass[36].tsym:= ''; tmass[36].tcons:= 933.1;
tmass[36].tdef:= 'British unit.';
tmass[37].tu:= 'Megagram'; tmass[37].tsym:= 'Mg'; tmass[37].tcons:= 1e6;
tmass[37].tdef:= 'A million grams (1x10⁶).';
tmass[38].tu:= 'Microgram'; tmass[38].tsym:= 'µg/mcg'; tmass[38].tcons:= 1e-6;
tmass[38].tdef:= 'In the metric system, a microgram (µg or mcg) is a unit of mass equal to one millionth (1/1,000,000) of a gram (1 × 10⁻⁶), or 1/1000 of a milligram. '+'It is one of the smallest units of mass (or weight) used in a macroscopic context.';
tmass[39].tu:= 'Milligram'; tmass[39].tsym:= 'mg'; tmass[39].tcons:= 1e-3;
tmass[39].tdef:= 'A measure of weight, in the metric system, being the thousandth part of a gram; equal to the weight of a cubic millimeter of water, or 0.01543 of a grain avoirdupois.';
tmass[40].tu:= 'Mina (Greek)/minah (Biblical)'; tmass[40].tsym:= ''; tmass[40].tcons:= 933.104304;
tmass[40].tdef:= 'The weight of the ancient Greek mina coin. '+'60 shekels.';
tmass[41].tu:= 'Mite (English)'; tmass[41].tsym:= ''; tmass[41].tcons:= 0.0032399455;
tmass[41].tdef:= 'A small weight, equivalent to one twentieth of a grain.';
tmass[42].tu:= 'Neutron rest mass'; tmass[42].tsym:= ''; tmass[42].tcons:= 1.67492e-24;
tmass[42].tdef:= 'The mass of a neutron as measured when the it is at rest relative to an observer, an inherent property of the body.';
tmass[43].tu:= 'Obolos (Ancient Greece)'; tmass[43].tsym:= ''; tmass[43].tcons:= 0.715383333333;
tmass[43].tdef:= 'Ancient Greek weight of an obol coin, equivalent to 1/6 drachma.';
tmass[44].tu:= 'Obolos (Modern Greece)'; tmass[44].tsym:= ''; tmass[44].tcons:= 0.1;
tmass[44].tdef:= 'Modern Greek name for decigram.';
tmass[45].tu:= 'Oka (Egyptian)'; tmass[45].tsym:= ''; tmass[45].tcons:= 1248.0;
tmass[45].tdef:= '';
tmass[46].tu:= 'Oka (Greek)'; tmass[46].tsym:= ''; tmass[46].tcons:= 1279.9;
tmass[46].tdef:= '';
tmass[47].tu:= 'Okia'; tmass[47].tsym:= ''; tmass[47].tcons:= 37.44027;
tmass[47].tdef:= 'Egyptian measure.';
tmass[48].tu:= 'Ounce (avoirdupois)'; tmass[48].tsym:= ''; tmass[48].tcons:= 28.349523125;
tmass[48].tdef:= 'The sixteenth part of a pound avoirdupois.';
tmass[49].tu:= 'Ounce (Troy)'; tmass[49].tsym:= ''; tmass[49].tcons:= 31.1034768;
tmass[49].tdef:= 'A unit of apothecary weight equal to 480 grains.';
tmass[50].tu:= 'Pala'; tmass[50].tsym:= ''; tmass[50].tcons:= 47.173;
tmass[50].tdef:= 'Indian measure.';
tmass[51].tu:= 'Pennyweight (Troy)'; tmass[51].tsym:= ''; tmass[51].tcons:= 1.55517384;
tmass[51].tdef:= 'A troy weight containing twenty-four grains, or the twentieth part of a troy ounce; as, a pennyweight of gold or of arsenic. '+'It was anciently the weight of a silver penny.';
tmass[52].tu:= 'Pfund (German)'; tmass[52].tsym:= ''; tmass[52].tcons:= 500.0;
tmass[52].tdef:= 'German pound. 500 grams, 16 unze.';
tmass[53].tu:= 'Picul (Borneo)'; tmass[53].tsym:= ''; tmass[53].tcons:= 61518.4651813;
tmass[53].tdef:= 'Equivalent to 135 5/8 pounds.';
tmass[54].tu:= 'Picul (Japan)'; tmass[54].tsym:= ''; tmass[54].tcons:= 60478.9826667;
tmass[54].tdef:= 'Equivalent to 133 1/3 pounds.';
tmass[55].tu:= 'Picul/tan/pecul/pecal (Chinese/Summatra)'; tmass[55].tsym:= ''; tmass[55].tcons:= 60554.581395;
tmass[55].tdef:= '100 catty. 133 1/2 pounds.';
tmass[56].tu:= 'Pood (Russian)'; tmass[56].tsym:= ''; tmass[56].tcons:= 16379.2204807;
tmass[56].tdef:= 'A Russian unit, equal to forty Russian pounds or about thirty-six English pounds avoirdupois.';
tmass[57].tu:= 'Pound (avoirdupois)'; tmass[57].tsym:= ''; tmass[57].tcons:= 453.59237;
tmass[57].tdef:= 'The pound in general use in the United States and in England is the pound avoirdupois, which is divided into sixteen ounces, and contains 7,000 grains. '+'The pound troy is divided into twelve ounces, and contains 5,760 grains. '+'144 pounds avoirdupois are equal to 175 pounds troy weight.';
tmass[58].tu:= 'Pound (Troy)'; tmass[58].tsym:= ''; tmass[58].tcons:= 373.2417216;
tmass[58].tdef:= 'The pound troy is divided into twelve ounces, and contains 5,760 grains. 144 pounds avoirdupois are equal to 175 pounds troy weight.';
tmass[59].tu:= 'Proton rest mass'; tmass[59].tsym:= ''; tmass[59].tcons:= 1.672614e-24;
tmass[59].tdef:= 'The mass of a proton as measured when the it is at rest relative to an observer, an inherent property of the body.';
tmass[60].tu:= 'Quarter (long)'; tmass[60].tsym:= ''; tmass[60].tcons:= 12700.58636;
tmass[60].tdef:= 'The fourth part of a long hundredweight, equal to 28 pounds.';
tmass[61].tu:= 'Quarter (short)'; tmass[61].tsym:= ''; tmass[61].tcons:= 11339.80925;
tmass[61].tdef:= 'The fourth part of a short hundredweight, equal to 25 pounds';
tmass[62].tu:= 'Quintal'; tmass[62].tsym:= ''; tmass[62].tcons:= 1e5;
tmass[62].tdef:= 'A metric measure of weight, being 100,000 grams, or 100 kilograms';
tmass[63].tu:= 'Quintal (Spanish)'; tmass[63].tsym:= ''; tmass[63].tcons:= 45994.266318;
tmass[63].tdef:= 'Spanish hundredweight.';
tmass[64].tu:= 'Quintal (long, UK)'; tmass[64].tsym:= ''; tmass[64].tcons:= 50802.34544;
tmass[64].tdef:= '112 pounds.';
tmass[65].tu:= 'Quintal (short, UK)'; tmass[65].tsym:= ''; tmass[65].tcons:= 45359.237;
tmass[65].tdef:= '100 pounds.';
tmass[66].tu:= 'Scruple (Troy)'; tmass[66].tsym:= ''; tmass[66].tcons:= 1.57497350694;
tmass[66].tdef:= 'A weight of twenty grains; the third part of a troy dram.';
tmass[67].tu:= 'Scrupulum (Roman)'; tmass[67].tsym:= ''; tmass[67].tcons:= 1.1359248923;
tmass[67].tdef:= '';
tmass[68].tu:= 'Shekel (Israeli)'; tmass[68].tsym:= ''; tmass[68].tcons:= 15.5517384;
tmass[68].tdef:= 'The sixtieth part of a mina. Ten pennyweight. '+'An ancient weight and coin used by the Jews and by other nations of the same stock.';
tmass[69].tu:= 'Slug'; tmass[69].tsym:= ''; tmass[69].tcons:= 14593.9029372;
tmass[69].tdef:= 'One slug is the mass accelerated at 1 foot per second by a force of 1 pound.';
tmass[70].tu:= 'Stone (butchers)'; tmass[70].tsym:= ''; tmass[70].tcons:= 3628.73896;
tmass[70].tdef:= 'Used to measure meat or fish weight. It is equivalent to 8 pounds.';
tmass[71].tu:= 'Stone (cheese)'; tmass[71].tsym:= ''; tmass[71].tcons:= 7257.47792;
tmass[71].tdef:= '16 pounds.';
tmass[72].tu:= 'Stone (glass)'; tmass[72].tsym:= ''; tmass[72].tcons:= 2267.96185;
tmass[72].tdef:= '5 pounds.';
tmass[73].tu:= 'Stone (hemp)'; tmass[73].tsym:= ''; tmass[73].tcons:= 14514.95584;
tmass[73].tdef:= '32 pounds.';
tmass[74].tu:= 'Stone (legal)'; tmass[74].tsym:= ''; tmass[74].tcons:= 6350.29318;
tmass[74].tdef:= '14 pounds.';
tmass[75].tu:= 'Talanton'; tmass[75].tsym:= ''; tmass[75].tcons:= 149998.5;
tmass[75].tdef:= 'Greek measure.';
tmass[76].tu:= 'Talent (Hebrew)'; tmass[76].tsym:= ''; tmass[76].tcons:= 26332.0;
tmass[76].tdef:= '';
tmass[77].tu:= 'Talent (Roman)'; tmass[77].tsym:= ''; tmass[77].tcons:= 40823.3133;
tmass[77].tdef:= '125 Roman libra.';
tmass[78].tu:= 'Talent (gold)'; tmass[78].tsym:= ''; tmass[78].tcons:= 93310.4304;
tmass[78].tdef:= 'Two silver talents, 250 lbs.';
tmass[79].tu:= 'Talent (silver)'; tmass[79].tsym:= ''; tmass[79].tcons:= 46655.2152;
tmass[79].tdef:= '3,000 shekels or 125 lbs.';
tmass[80].tu:= 'Ton (UK, long/gross/deadweight)'; tmass[80].tsym:= ''; tmass[80].tcons:= 1016046.9088;
tmass[80].tdef:= 'A British unit of weight equivalent to 2240 pounds.';
tmass[81].tu:= 'Ton (US, short)'; tmass[81].tsym:= 'tn'; tmass[81].tcons:= 907184.74;
tmass[81].tdef:= 'A US unit of weight equivalent to 2000 pounds.';
tmass[82].tu:= 'Tonne/metric ton'; tmass[82].tsym:= 't'; tmass[82].tcons:= 1e6;
tmass[82].tdef:= 'A metric ton, One Megagram, 1000 kg.';
tmass[83].tu:= 'Uncia'; tmass[83].tsym:= 'nmi'; tmass[83].tcons:= 27.2155422;
tmass[83].tdef:= 'Ancient Roman. '+'A twelfth part, as of the Roman "as" or "libra"; an ounce. '+'420 grains.';
tmass[84].tu:= 'Unze (German)'; tmass[84].tsym:= ''; tmass[84].tcons:= 31.25;
tmass[84].tdef:= 'German ounce. '+'1/16 pfund.';
end.

