unit shoe; 

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
tshoe: array[1..8] of tmag;


implementation

begin
tshoe[1].tu := 'Children (US)'; tshoe[1].tsym:= ''; tshoe[1].tcons:= 19.4733333333;
tshoe[1].tdef:= 'Starting at 4 5/6" for size 5 1/2 up to 7 1/3" for size 13 then 7 2/3" for size 1 and going up to 9" for size 5.';
tshoe[2].tu:= 'Men (UK)'; tshoe[2].tsym := ''; tshoe[2].tcons:= 6.93997637767957; //5.875;
tshoe[2].tdef:= 'Starting at 9 1/3" for size 5 and moving up by 1/6" for each half size to 11 2/3" for size 12.'+char(13)+'Beware that some manufacturers use different measurement techniques.';
tshoe[3].tu:= 'Men (US)'; tshoe[3].tsym:= ''; tshoe[3].tcons:= 0.430107527;
tshoe[3].tdef:= 'Starting at 9 1/3" for size 6 and moving up by 1/6" for each half size to 11 2/3" for size 13.'+char(13)+'Beware that some manufacturers use different measurement techniques.';
tshoe[4].tu:= 'Women (UK)'; tshoe[4].tsym:= ''; tshoe[4].tcons:= 19.8966666667;
tshoe[4].tdef:= 'Starting at 8 1/2" for size 3 and moving up by 1/6" for each half size to 10 5/6" for size 10.'+char(13)+'Beware that some manufacturers use different measurement techniques.';
tshoe[5].tu:= 'Women (US)'; tshoe[5].tsym:= ''; tshoe[5].tcons:= 18.2033333333;
tshoe[5].tdef:= 'Starting at 8 1/2" for size 5 and moving up by 1/6" for each half size to 10 5/6" for size 12.'+char(13)+'Beware that some manufacturers use different measurement techniques.';
tshoe[6].tu:= 'Centimeter'; tshoe[6].tsym:= 'cm'; tshoe[6].tcons:= 1.18110236215822;
tshoe[6].tdef:= 'The hundredth part of a meter; a measure of length equal to rather more than thirty-nine hundredths (0.3937) of an inch.';
tshoe[7].tu:= 'Inch'; tshoe[7].tsym:= 'in'; tshoe[7].tcons:= 2.54;
tshoe[7].tdef:= 'The twelfth part of a foot, commonly subdivided into halves, quarters, eights, sixteenths, etc., as among mechanics. It was also formerly divided into twelve parts, called lines, and originally into three parts, '+'called barleycorns, its length supposed to have been determined from three grains of barley placed end to end lengthwise.';
tshoe[8].tu:= 'Barleycorn'; tshoe[8].tsym:= 'b'; tshoe[8].tcons:= 1; //0.8466666667;
tshoe[8].tdef:= 'The twelfth part of a foot, commonly subdivided into halves, quarters, eights, sixteenths, etc., as among mechanics. It was also formerly divided into twelve parts, called lines, and originally into three parts, '+'called barleycorns, its length supposed to have been determined from three grains of barley placed end to end lengthwise.';
end.
