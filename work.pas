unit work;

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
twrk: array[1..38] of tmag;


implementation

begin
twrk[1].tu := 'British thermal unit'; twrk[1].tsym:= 'Btu/BTU'; twrk[1].tcons:= 10550559000;
twrk[1].tdef:= 'The British thermal unit (symbol Btu or sometimes BTU) is a traditional unit of energy equal to about 1055 joules. It is the amount of energy needed to heat one pound of water by one degree Fahrenheit. '+'In scientific contexts the Btu has largely been replaced by the SI unit of energy, the joule.';
twrk[2].tu:= 'Gigaelectronvolt'; twrk[2].tsym := 'GeV'; twrk[2].tcons:= 0.0016021773;
twrk[2].tdef:= 'A billionth electronvolts.';
twrk[3].tu:= 'Megaelectronvolt'; twrk[3].tsym:= 'MeV'; twrk[3].tcons:= 0.0000016021773;
twrk[3].tdef:= 'A million electronvolts.';
twrk[4].tu:= 'Mega British thermal unit'; twrk[4].tsym:= 'MBtu'; twrk[4].tcons:= 0.0010550559000;
twrk[4].tdef:= 'A million British thermal units.';
twrk[5].tu:= 'Attojoule'; twrk[5].tsym:= 'aJ'; twrk[5].tcons:= 1e-11;
twrk[5].tdef:= '1 x 10 ⁻¹⁸ joules.';
twrk[6].tu:= 'Barrel of crude oil'; twrk[6].tsym:= ''; twrk[6].tcons:= 6.119e+16;
twrk[6].tdef:= 'It is equivalent to 5,800,000 Btu.';
twrk[7].tu:= 'Calorie'; twrk[7].tsym:= 'cal'; twrk[7].tcons:= 41839999.99994176;
twrk[7].tdef:= 'The unit of heat according to the French standard; the amount of heat required to raise the temperature of one kilogram (sometimes, one gram) of water one degree centigrade, or from 0 deg to 1 deg.';
twrk[8].tu:= 'Electron volt'; twrk[8].tsym:= 'eV'; twrk[8].tcons:= 1.6021773000008304e-12;
twrk[8].tdef:= 'A unit of energy equal to the work done by an electron accelerated through a potential difference of 1 volt.';
twrk[9].tu:= 'Erg/dyne-centimeter'; twrk[9].tsym:= ''; twrk[9].tcons:= 1;
twrk[9].tdef:= 'The unit of work or energy in the C.G.S. system, being the amount of work done by a dyne working through a distance of one centimeter; the amount of energy expended in moving a body one centimeter against a force of one dyne.'+char(13)+'One foot pound is equal to 13,560,000 ergs.';
twrk[10].tu:= 'Foot-pound force'; twrk[10].tsym:= 'ft·lbf'; twrk[10].tcons:= 13558179.4833;
twrk[10].tdef:= 'A unit of work equal to a force of one pound moving through a distance of one foot.';
twrk[11].tu:= 'Foot-poundals'; twrk[11].tsym:= ''; twrk[11].tcons:= 421400.0;
twrk[11].tdef:= '';
twrk[12].tu:= 'Gallon gasohol (10% ethanol, 90% gasoline)'; twrk[12].tsym:= ''; twrk[12].tcons:= 1.275495e+15;
twrk[12].tdef:= 'It is equivalent to 120,900 Btu.';
twrk[13].tu:= 'Gallon middle distillate or diesel fuel oil'; twrk[13].tsym:= ''; twrk[13].tcons:= 1.4631795e+15;
twrk[13].tdef:= 'It is equivalent to 138,690 Btu.';
twrk[14].tu:= 'Gallon of crude oil'; twrk[14].tsym:= ''; twrk[14].tcons:= 1.45690225e+15;
twrk[14].tdef:= 'It is equivalent to 138,095 Btu.';
twrk[15].tu:= 'Gallon of ethanol'; twrk[15].tsym:= ''; twrk[15].tcons:= 8.9042e+14;
twrk[15].tdef:= 'It is equivalent to 84,400 Btu.';
twrk[16].tu:= 'Gallon of gasoline'; twrk[16].tsym:= ''; twrk[16].tcons:= 1.31875e+15;
twrk[16].tdef:= 'It is equivalent to 125,000 Btu.';
twrk[17].tu:= 'Gallon of kerosene or light distillate oil'; twrk[17].tsym:= ''; twrk[17].tcons:= 1.42425e+15;
twrk[17].tdef:= 'It is equivalent to 135,000 Btu.';
twrk[18].tu:= 'Gallon of liquefied petroleum gas'; twrk[18].tsym:= 'LPG'; twrk[18].tcons:= 1.00726125e+15;
twrk[18].tdef:= 'It is equivalent to 95,475 Btu.';
twrk[19].tu:= 'Gallon of methanol'; twrk[19].tsym:= ''; twrk[19].tcons:= 6.6254e+14;
twrk[19].tdef:= 'It is equivalent to 62,800 Btu.';
twrk[20].tu:= 'Gallon residential fuel oil'; twrk[20].tsym:= ''; twrk[20].tcons:= 1.5792295e+15;
twrk[20].tdef:= 'It is equivalent to 62,800 Btu.';
twrk[21].tu:= 'Gigajoule'; twrk[21].tsym:= 'GJ'; twrk[21].tcons:= 1e16;
twrk[21].tdef:= '';
twrk[22].tu:= 'Gigawatt-hour'; twrk[22].tsym:= 'GWh'; twrk[22].tcons:= 36e18;
twrk[22].tdef:= '';
twrk[23].tu:= 'Horsepower-hour'; twrk[23].tsym:= 'hp·h'; twrk[23].tcons:= 26845195000000;
twrk[23].tdef:= '';
twrk[24].tu:= 'Joule/wattsecond/newton-meter'; twrk[24].tsym:= 'J'; twrk[24].tcons:= 1e7;
twrk[24].tdef:= 'Named after the English physicist James Prescott Joule (1818-1889). A unit of work which is equal to 10⁷ units of work in the C.G.S. system of units (ergs), and is practically equivalent '+'to the energy expended in one second by an electric current of one ampere in a resistance of one ohm.'+char(13)+'One joule is approximately equal to 0.738 foot pounds.';
twrk[25].tu:= 'kg force meters'; twrk[25].tsym:= 'kgf.m'; twrk[25].tcons:= 98066500.0;
twrk[25].tdef:= 'Work done by one kilogram of force acting through a distance of one meter.';
twrk[26].tu:= 'Kilocalorie'; twrk[26].tsym:= 'kcal'; twrk[26].tcons:= 41858000000;
twrk[26].tdef:= '';
twrk[27].tu:= 'Kilojoule'; twrk[27].tsym:= 'kJ'; twrk[27].tcons:= 1e10;
twrk[27].tdef:= '10³ joules.';
twrk[28].tu:= 'Kiloton'; twrk[28].tsym:= ''; twrk[28].tcons:= 4184e16;   //41840000000000000000
twrk[28].tdef:= 'A measure of explosive power (of an atomic weapon) equal to that of 1000 tons of TNT.';
twrk[29].tu:= 'Kilowatt-hour'; twrk[29].tsym:= 'KWh'; twrk[29].tcons:= 3.6e13;
twrk[29].tdef:= '';
twrk[30].tu:= 'Megajoule'; twrk[30].tsym:= 'MJ'; twrk[30].tcons:= 1e13;
twrk[30].tdef:= 'A million joules.';
twrk[31].tu:= 'Megawatt-hour'; twrk[31].tsym:= 'MWh'; twrk[31].tcons:= 0.00000000000131962;
twrk[31].tdef:= '';
twrk[32].tu:= 'Microjoule'; twrk[32].tsym:= 'µJ'; twrk[32].tcons:= 10;
twrk[32].tdef:= 'A thousandth of a millijoule.';
twrk[33].tu:= 'Millijoule'; twrk[33].tsym:= 'mJ'; twrk[33].tcons:= 10000;
twrk[33].tdef:= 'A thousandth of a joule.';
twrk[34].tu:= 'Pound of carbon (upper heating value)'; twrk[34].tsym:= ''; twrk[34].tcons:= 1.535025e+14;
twrk[34].tdef:= 'It is equivalent to 14,550 Btu.';
twrk[35].tu:= 'Therm'; twrk[35].tsym:= ''; twrk[35].tcons:= 1.0550559e8;
twrk[35].tdef:= '10⁵ Btus.';
twrk[36].tu:= 'Therm of natural gas'; twrk[36].tsym:= ''; twrk[36].tcons:= 1.055e+15;
twrk[36].tdef:= 'It is equivalent to 100,000 Btu.';
twrk[37].tu:= 'Ton of coke'; twrk[37].tsym:= ''; twrk[37].tcons:= 2.743e+17;
twrk[37].tdef:= 'It is equivalent to 26,000,000 Btu.';
twrk[38].tu:= 'Watt-hour'; twrk[38].tsym:= 'Wh'; twrk[38].tcons:= 3.6e10;
twrk[38].tdef:= '';
end.
