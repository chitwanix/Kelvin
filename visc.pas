unit visc;

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
tvisd: array[1..7] of tmag;
tvisk: array[1..6] of tmag;

implementation

begin

// Dynamic
tvisd[1].tu := 'Centipoise'; tvisd[1].tsym:= 'cP'; tvisd[1].tcons:= 0.01;
tvisd[1].tdef:= '';
tvisd[2].tu:= 'Micropascal-second'; tvisd[2].tsym := 'µPa·s'; tvisd[2].tcons:= 1e-5;
tvisd[2].tdef:= '';
tvisd[3].tu:= 'Microreyn'; tvisd[3].tsym:= ''; tvisd[3].tcons:= 0.0689475729;
tvisd[3].tdef:= '';
tvisd[4].tu:= 'Millipascal-second'; tvisd[4].tsym:= 'mPa·s'; tvisd[4].tcons:= 0.01;
tvisd[4].tdef:= '';
tvisd[5].tu:= 'Pascal-second'; tvisd[5].tsym:= 'Pa·s'; tvisd[5].tcons:= 10;
tvisd[5].tdef:= '';
tvisd[6].tu:= 'Poise'; tvisd[6].tsym:= 'P'; tvisd[6].tcons:= 1;
tvisd[6].tdef:= 'The poise (symbol P, /ˈpɔɪz/) is the unit of dynamic viscosity in the centimetre gram second system of units. It is named after Jean Louis Marie Poiseuille (22 April 1797 – 26 December 1869)  who was a French physician and physiologist.'+char(13)+'The analogous unit in the International System of Units is the pascal second (Pa·s).';
tvisd[7].tu:= 'Reyn'; tvisd[7].tsym:= ''; tvisd[7].tcons:= 68947.5729;
tvisd[7].tdef:= 'In fluid dynamics, the Reyn is a British unit of dynamic viscosity. Named in honour of Osbourne Reynolds (23 August 1842 – 21 February 1912) who was a prominent Anglo-Irish innovator in the understanding of fluid dynamics.'+char(13)+'One Reyn is: 1 lbf·sec·incheso¯². Relation between Reyn and centipoise is approximately: 6.89476 × 10⁶ centipoise ';

// Kynematic
tvisk[1].tu := 'Centistokes'; tvisk[1].tsym:= 'cSt'; tvisk[1].tcons:= 100;
tvisk[1].tdef:= '';
tvisk[2].tu:= 'Square centimetre per second'; tvisk[2].tsym := 'cm²/s'; tvisk[2].tcons:= 1;
tvisk[2].tdef:= '';
tvisk[3].tu:= 'Square foot per second'; tvisk[3].tsym:= 'ft²/s'; tvisk[3].tcons:= 929.0304;
tvisk[3].tdef:= '';
tvisk[4].tu:= 'Square meter per second'; tvisk[4].tsym:= 'm²/s'; tvisk[4].tcons:= 1e4;
tvisk[4].tdef:= '';
tvisk[5].tu:= 'Square millimeter per second'; tvisk[5].tsym:= 'mm²/s'; tvisk[5].tcons:= 0.10;
tvisk[5].tdef:= '';
tvisk[6].tu:= 'Stokes'; tvisk[6].tsym:= 'St'; tvisk[6].tcons:= 1;
tvisk[6].tdef:= 'The stokes (ST) is the cgs physical unit for kinematic viscosity, named after George Gabriel Stokes. It is sometimes expressed in terms of centistokes (cSt).  The SI unit of kinematic viscosity is m2/s.'+char(13)+'1 St = 1 cm2·s−1 = 10−4 m2·s−1.'+char(13)+'1 cSt = 1 mm2·s−1 = 10−6m2·s−1.'+char(13)+'Water at 20 °C has a kinematic viscosity of about 1 cSt.'+char(13)+'Sir George Gabriel Stokes, 1st Baronet FRS (13 August 1819 – 1 February 1903), was a mathematician, physicist, politician and theologian.';
end.
