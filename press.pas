unit press;

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
tpress: array[1..42] of tmag;


implementation

begin
tpress[1].tu := 'Atmosphere (absolute, standard)'; tpress[1].tsym:= 'atm'; tpress[1].tcons:= 760;
tpress[1].tdef:= 'The average pressure of the Earth''s atmosphere at sea level.';
tpress[2].tu:= 'Atmosphere (technical)'; tpress[2].tsym := 'atm'; tpress[2].tcons:= 735.55912101;
tpress[2].tdef:= 'A metric unit equal to one kilogram of force per square centimeter.';
tpress[3].tu:= 'Bar'; tpress[3].tsym:= 'bar'; tpress[3].tcons:= 750.063755419;
tpress[3].tdef:= 'From the Greek word baros.';
tpress[4].tu:= 'Barie/barye'; tpress[4].tsym:= ''; tpress[4].tcons:= 0.000750061682704;
tpress[4].tdef:= '';
tpress[5].tu:= 'Centimeter of mercury (0ºC)'; tpress[5].tsym:= 'cmHg'; tpress[5].tcons:= 10;
tpress[5].tdef:= '';
tpress[6].tu:= 'Centimeter of water (39.2º F, 4ºC)'; tpress[6].tsym:= 'cmH₂O'; tpress[6].tcons:= 0.735541021;
tpress[6].tdef:= '';
tpress[7].tu:= 'Centimeter of water (60ºF, 15.5ºC)'; tpress[7].tsym:= 'cmH₂O'; tpress[7].tcons:= 0.734643639183;
tpress[7].tdef:= '';
tpress[8].tu:= 'Dyne per square centimeter'; tpress[8].tsym:= 'dyn/cm²'; tpress[8].tcons:= 0.0007500615613;
tpress[8].tdef:= '';
tpress[9].tu:= 'Feet of water (39.2ºF, 4ºC)'; tpress[9].tsym:= 'ftH₂O'; tpress[9].tcons:= 22.419255637;
tpress[9].tdef:= '';
tpress[10].tu:= 'Feet of water (60ºF, 15.5ºC)'; tpress[10].tsym:= 'ftH₂O'; tpress[10].tcons:= 22.397773811;
tpress[10].tdef:= '';
tpress[11].tu:= 'Foot of mercury (0ºC)'; tpress[11].tsym:= 'ftHg'; tpress[11].tcons:= 304.79999646;
tpress[11].tdef:= '';
tpress[12].tu:= 'Hectopascal'; tpress[12].tsym:= 'hPa'; tpress[12].tcons:= 0.750063755;
tpress[12].tdef:= '100 pascals exactly.';
tpress[13].tu:= 'Inches of mercury (0ºC)'; tpress[13].tsym:= 'inHg'; tpress[13].tcons:= 25.400009001;
tpress[13].tdef:= '';
tpress[14].tu:= 'Inches of mercury (60ºF, 15.5ºC)'; tpress[14].tsym:= 'inHg'; tpress[14].tcons:= 25.328527925;
tpress[14].tdef:= '';
tpress[15].tu:= 'Inches of water (39.2ºF, 4ºC)'; tpress[15].tsym:= 'inH₂O'; tpress[15].tcons:= 1.868273803;
tpress[15].tdef:= '';
tpress[16].tu:= 'Inches of water (60ºF, 15.5ºC)'; tpress[16].tsym:= 'H₂O'; tpress[16].tcons:= 1.866481151;
tpress[16].tdef:= '';
tpress[17].tu:= 'Kilonewton per square centimeter'; tpress[17].tsym:= 'kN/cm²'; tpress[17].tcons:= 75006.37554;
tpress[17].tdef:= 'Used for loads and concrete stress.';
tpress[18].tu:= 'Kilonewton per square meter'; tpress[18].tsym:= 'kN/m²'; tpress[18].tcons:= 7.500637554;
tpress[18].tdef:= 'Used for ground pressure.';
tpress[19].tu:= 'Kilogram force per square centimeter'; tpress[19].tsym:= 'kgf/cm²'; tpress[19].tcons:= 735.561272708;
tpress[19].tdef:= 'Used for ground pressure and steel stress.';
tpress[20].tu:= 'Kilogram force per square meter'; tpress[20].tsym:= 'kgf/m²'; tpress[20].tcons:= 0.073556127;
tpress[20].tdef:= '';
tpress[21].tu:= 'Kilopascal'; tpress[21].tsym:= 'kPa'; tpress[21].tcons:= 7.500637554;
tpress[21].tdef:= 'One thousand pascals exactly.';
tpress[22].tu:= 'Megapascal'; tpress[22].tsym:= 'MPa'; tpress[22].tcons:= 7500.637554;
tpress[22].tdef:= 'One million pascals exactly.';
tpress[23].tu:= 'Meter of water (39.2ºF, 4ºC)'; tpress[23].tsym:= 'mH₂O'; tpress[23].tcons:= 73.5540851085;
tpress[23].tdef:= '';
tpress[24].tu:= 'Meter of water (60ºF, 15.5ºC)'; tpress[24].tsym:= 'mH₂O'; tpress[24].tcons:= 73.4643639183;
tpress[24].tdef:= '';
tpress[25].tu:= 'Microbar'; tpress[25].tsym:= 'µbar'; tpress[25].tcons:= 0.0007500615613;
tpress[25].tdef:= '10⁻⁶ bars.';
tpress[26].tu:= 'Micrometer of mercury'; tpress[26].tsym:= 'µmHg'; tpress[26].tcons:= 0.00099999984999;
tpress[26].tdef:= '';
tpress[27].tu:= 'Micron'; tpress[27].tsym:= 'µ'; tpress[27].tcons:= 0.00099999984999;
tpress[27].tdef:= 'Used in vacuum technology. Equal to 1 millitorr.';
tpress[28].tu:= 'Millibar'; tpress[28].tsym:= 'mb/mbar'; tpress[28].tcons:= 0.7500615613;
tpress[28].tdef:= 'One thousandth of a bar.';
tpress[29].tu:= 'Millimeter of mercury (0ºC)'; tpress[29].tsym:= 'mmHg'; tpress[29].tcons:= 1;
tpress[29].tdef:= '';
tpress[30].tu:= 'Millimeter of water (39.2ºF, 4ºC)'; tpress[30].tsym:= 'mmH₂O'; tpress[30].tcons:= 0.073555912101;
tpress[30].tdef:= '';
tpress[31].tu:= 'Millimeter of water (60ºF, 15.5ºC)'; tpress[31].tsym:= 'mmH₂O'; tpress[31].tcons:= 73.4643639183;
tpress[31].tdef:= '';
tpress[32].tu:= 'Newton per square centimeter'; tpress[32].tsym:= 'N/cm²'; tpress[32].tcons:= 75.0061682704;
tpress[32].tdef:= '';
tpress[33].tu:= 'Newton per square meter'; tpress[33].tsym:= 'N/m²'; tpress[33].tcons:= 0.007500615613;
tpress[33].tdef:= '';
tpress[34].tu:= 'Newton per square millimeter'; tpress[34].tsym:= 'N/mm²'; tpress[34].tcons:= 7500.615613;
tpress[34].tdef:= 'Used for concrete stress.';
tpress[35].tu:= 'Ounces per square inch'; tpress[35].tsym:= 'oz/in²'; tpress[35].tcons:= 3.2321827564;
tpress[35].tdef:= '';
tpress[36].tu:= 'Pascal'; tpress[36].tsym:= 'Pa'; tpress[36].tcons:= 0.007500615613;
tpress[36].tdef:= 'Named after the French philosopher and mathematician Blaise Pascal (1623 - 1662).'+char(13)+'Equal to one newton per square meter.';
tpress[37].tu:= 'Pieze'; tpress[37].tsym:= ''; tpress[37].tcons:= 7.500615613;
tpress[37].tdef:= 'From the Greek word piezein (to press).'+char(13)+'The pieze is a pressure of one sthene per square meter. 1000 newtons per square meter.';
tpress[38].tu:= 'Pound force per square foot'; tpress[38].tsym:= 'lbf/ft²'; tpress[38].tcons:= 0.359131476191;
tpress[38].tdef:= '';
tpress[39].tu:= 'Pound force per square inch'; tpress[39].tsym:= 'psi'; tpress[39].tcons:= 51.7149325715;
tpress[39].tdef:= '';
tpress[40].tu:= 'Tons (UK) per square foot'; tpress[40].tsym:= 'tons(UK)/ft²'; tpress[40].tcons:= 804.454506668;
tpress[40].tdef:= '';
tpress[41].tu:= 'Tons (US) per square foot'; tpress[41].tsym:= 'tons(US)/ft²'; tpress[41].tcons:= 718.262952382;
tpress[41].tdef:= '';
tpress[42].tu:= 'Torricelli'; tpress[42].tsym:= 'torr'; tpress[42].tcons:= 0.99999984999;
tpress[42].tdef:= 'Named after Italian physicist and mathematician Evangelista Torricelli, (1608-1647). A unit of pressure equal to 0.001316 atmosphere.';
end.
