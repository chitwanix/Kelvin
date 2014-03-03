unit magnf;

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
tmfs: array[1..6] of tmag;
tmflux: array[1..6] of tmag;
tmfd: array[1..11] of tmag;
tmmf: array[1..5] of tmag;

implementation

begin
// magnetic field strenth
tmfs[1].tu := 'Ampere per meter'; tmfs[1].tsym:= 'A/m'; tmfs[1].tcons:= 1;
tmfs[1].tdef:= '';
tmfs[2].tu:= 'Ampere-turn per inch'; tmfs[2].tsym := 'At/in'; tmfs[2].tcons:= 39.3700787402;
tmfs[2].tdef:= '';
tmfs[3].tu:= 'Ampere-turn per meter'; tmfs[3].tsym:= 'A/m'; tmfs[3].tcons:= 1;
tmfs[3].tdef:= '';
tmfs[4].tu:= 'Kiloampere per meter'; tmfs[4].tsym:= 'kA/m'; tmfs[4].tcons:= 1000;
tmfs[4].tdef:= '';
tmfs[5].tu:= 'Newton per weber'; tmfs[5].tsym:= 'N/Wb'; tmfs[5].tcons:= 1;
tmfs[5].tdef:= 'Equivalent to Ampere per meter.';
tmfs[6].tu:= 'Oersted'; tmfs[6].tsym:= 'Oe'; tmfs[6].tcons:= 79.577471546;
tmfs[6].tdef:= 'Named after the Danish physicist and chemist Hans Christian Oersted (1777-1851). The C.G.S. unit of magnetic reluctance or resistance, equal to the reluctance of a centimeter cube of air (or vacuum) between parallel faces. '+'Also, a reluctance in which unit magnetomotive force sets up unit flux.';

// magnetic flux
tmflux[1].tu := 'Line of force'; tmflux[1].tsym:= ''; tmflux[1].tcons:= 1;
tmflux[1].tdef:= 'Equivalent to Maxwell.';
tmflux[2].tu:= 'Maxwell'; tmflux[2].tsym := 'Mx'; tmflux[2].tcons:= 1;
tmflux[2].tdef:= 'Named after the Scottish physicist James Clerk Maxwell (1831-1879). A cgs unit of magnetic flux equal to the flux perpendicular to an area of 1 square centimeter in a magnetic field of 1 gauss.';
tmflux[3].tu:= 'Microweber'; tmflux[3].tsym:= 'µWb'; tmflux[3].tcons:= 1e2;
tmflux[3].tdef:= '10¯⁶ weber.';
tmflux[4].tu:= 'Milliweber'; tmflux[4].tsym:= 'mWb'; tmflux[4].tcons:= 1e5;
tmflux[4].tdef:= '10¯³ weber.';
tmflux[5].tu:= 'Unit pole (electromagnetic unit)'; tmflux[5].tsym:= ''; tmflux[5].tcons:= 12.5663706144;
tmflux[5].tdef:= '';
tmflux[6].tu:= 'Weber'; tmflux[6].tsym:= 'Wb'; tmflux[6].tcons:= 1e8;
tmflux[6].tdef:= 'The derived SI unit of magnetic flux; the flux that, when linking a circuit of one turn, produces in it an emf of 1 volt as it is reduced to zero at a uniform rate in one second. 1 weber is equivalent to 108 maxwells.'+char(13)+'The weber is named for the German physicist Wilhelm Eduard Weber (1804–1891).';

// magnetic flux density
tmfd[1].tu := 'Gamma'; tmfd[1].tsym:= ''; tmfd[1].tcons:= 1e-5;
tmfd[1].tdef:= 'Equivalent to one nanotesla.';
tmfd[2].tu:= 'Gauss'; tmfd[2].tsym := 'G'; tmfd[2].tcons:= 1;
tmfd[2].tdef:= 'Named after German mathematician and astronomer Karl Friedrich Gauss (1777-1855). The C.G.S. unit of density of magnetic field, equal to a field of one line of force per square centimeter, '+'being thus adopted as an international unit at Paris in 1900; sometimes used as a unit of intensity of magnetic field.'+char(13)+'It was previously suggested as a unit of magnetomotive force.';
tmfd[3].tu:= 'Kilogauss'; tmfd[3].tsym:= 'kG'; tmfd[3].tcons:= 1e3;
tmfd[3].tdef:= '10³ gauss.';
tmfd[4].tu:= 'Line per square inch'; tmfd[4].tsym:= ''; tmfd[4].tcons:= 0.155000310001;
tmfd[4].tdef:= 'Equivalent to maxwell per square inch.';
tmfd[5].tu:= 'Maxwell per square centimeter'; tmfd[5].tsym:= 'Mx/cm²'; tmfd[5].tcons:= 1;
tmfd[5].tdef:= '';
tmfd[6].tu:= 'Maxwell per square inch'; tmfd[6].tsym:= 'Mx/in²'; tmfd[6].tcons:= 0.155000310001;
tmfd[6].tdef:= '';
tmfd[7].tu:= 'Microtesla'; tmfd[7].tsym:= 'µT'; tmfd[7].tcons:= 1e-2;
tmfd[7].tdef:= '';
tmfd[8].tu:= 'Millitesla'; tmfd[8].tsym:= 'mT'; tmfd[8].tcons:= 10;
tmfd[8].tdef:= '';
tmfd[9].tu:= 'Nanotesla'; tmfd[9].tsym:= 'nT'; tmfd[9].tcons:= 1e-05;
tmfd[9].tdef:= '';
tmfd[10].tu:= 'Tesla'; tmfd[10].tsym:= 'T'; tmfd[10].tcons:= 1e4;
tmfd[10].tdef:= 'Named after the Croatian born inventer Nikola Tesla (1856-1943). A unit of magnetic flux density equal to one weber per square meter.';
tmfd[11].tu:= 'Weber per square meter'; tmfd[11].tsym:= 'Wb/m²'; tmfd[11].tcons:= 1e4;
tmfd[11].tdef:= '';

// magnetomotive force
tmmf[1].tu := 'Ampere'; tmmf[1].tsym:= 'A'; tmmf[1].tcons:= 1;
tmmf[1].tdef:= 'The basic SI unit of electric current; the constant current that, when maintained in two parallel conductors of infinite length and negligible cross section placed '+'1 metre apart in free space, produces a force of 2 × 10⁻⁷ newton permetre between them.'+char(13)+'One ampere is equivalent to 1 coulomb per second.';
tmmf[2].tu:= 'Ampere-turn'; tmmf[2].tsym := 'At'; tmmf[2].tcons:= 1;
tmmf[2].tdef:= 'A unit of magnetomotive force equal to the magnetomotive force produced by the passage of 1 ampere through 1 complete turn of a coil.';
tmmf[3].tu:= 'Gilbert'; tmmf[3].tsym:= 'Gb'; tmmf[3].tcons:= 0.795775;
tmmf[3].tdef:= 'The unit is named after William Gilbert (1544–1603) English physician, astronomer and natural philosopher.'+char(13)+'The unit of magnetomotive force in the electromagnetic system, equal to the magnetomotive force of a closed loop of one turn in which there is a current of 1/(4π) abamp.';
tmmf[4].tu:= 'Kiloampere'; tmmf[4].tsym:= 'kA'; tmmf[4].tcons:= 1000;
tmmf[4].tdef:= '10³ ampere.';
tmmf[5].tu:= 'Oersted-centimeter'; tmmf[5].tsym:= ''; tmmf[5].tcons:= 0.795775;
tmmf[5].tdef:= 'Equivalent to gilbert.';

end.
