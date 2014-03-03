unit angle;

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
tangle: array[1..16] of tmag;


implementation

begin
tangle[1].tu := 'Centesimal minute'; tangle[1].tsym:= ''; tangle[1].tcons:= 32.4;
tangle[1].tdef:= 'One hundredth of a grade, 0.01 grade.';
tangle[2].tu := 'Centesimal second'; tangle[2].tsym:= ''; tangle[2].tcons:= 0.324;
tangle[2].tdef:= 'One ten-thousandth of a grade, 0.0001 grade.';
tangle[3].tu := 'Degree'; tangle[3].tsym:= 'º'; tangle[3].tcons:= 3600;
tangle[3].tdef:= '1/360 of a complete revolution.';
tangle[4].tu := 'Grad/grade/gon'; tangle[4].tsym:= 'g'; tangle[4].tcons:= 3240;
tangle[4].tdef:= 'One-hundredth of a right angle.';
tangle[5].tu := 'Mil'; tangle[5].tsym:= ''; tangle[5].tcons:= 202.5;
tangle[5].tdef:= 'Used in artillery; 1/6400 of a complete revolution.';
tangle[6].tu := 'Milliradian'; tangle[6].tsym:= 'mrad'; tangle[6].tcons:= 206.264806247;
tangle[6].tdef:= 'A unit of angular distance equal to one thousandth of a radian.';
tangle[7].tu := 'Minute'; tangle[7].tsym:= ''''; tangle[7].tcons:= 60;
tangle[7].tdef:= 'The sixtieth part of a degree; sixty seconds (Marked thus (''''); as, 10deg 20'').';
tangle[8].tu := 'Octant'; tangle[8].tsym:= ''; tangle[8].tcons:= 162000;
tangle[8].tdef:= 'The eighth part of a circle (an arc of 45 degrees).';
tangle[9].tu := 'Point'; tangle[9].tsym:= ''; tangle[9].tcons:= 40500;
tangle[9].tdef:= '1/32 of a circle. Points are used on the face of a compass (32 points). Each point is labelled clockwise starting from North as follows: North, North by East, North Northeast, Northeast by North, and Northeast, etc.';
tangle[10].tu := 'Quadrant'; tangle[10].tsym:= ''; tangle[10].tcons:= 324000;
tangle[10].tdef:= 'The fourth part of a circle (an arc of 90 degrees).';
tangle[11].tu := 'Radian'; tangle[11].tsym:= 'rad'; tangle[11].tcons:= 206264.806247;
tangle[11].tdef:= 'An arc of a circle which is equal in length to the radius, or the angle measured by such an arc.';
tangle[12].tu := 'Revolution/circle/perigon/turn'; tangle[12].tsym:= 'r'; tangle[12].tcons:= 1296000;
tangle[12].tdef:= 'The act of revolving, or turning round on an axis or a center; the motion of a body round a fixed point or line; rotation; as, the revolution of a wheel, of a top, of the earth on its axis, etc.';
tangle[13].tu := 'Right angle'; tangle[13].tsym:= 'L'; tangle[13].tcons:= 324000;
tangle[13].tdef:= 'The angle formed by one line meeting another perpendicularly.';
tangle[14].tu := 'Second'; tangle[14].tsym:= '"'; tangle[14].tcons:= 1;
tangle[14].tdef:= 'One sixtieth of a minute (marked thus ("); as, 10 deg 20'' 30").';
tangle[15].tu := 'Sextant'; tangle[15].tsym:= ''; tangle[15].tcons:= 216000;
tangle[15].tdef:= 'The sixth part of a circle (an arc of 60 degrees).';
tangle[16].tu := 'Sign'; tangle[16].tsym:= ''; tangle[16].tcons:= 108000;
tangle[16].tdef:= 'The twelfth part of a circle as in twelve signs of the zodiac (an arc of 30 degrees).';
end.
