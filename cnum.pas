unit cnum;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
function dbi(bdv: double; dv: smallint) :string;
function bid(dbv: string; bv: smallint) :double;
function dduo(dduov: double) :string;
function duod(duodvar: string; le:smallint) :string;
function td (tdv: string; bv: smallint) : string;
function thtod(v30: string; le: integer) :string;
function th6od(v36: string; le: integer) :string;
function ftod(v40: string; b40: integer) :string;
function fitod(v50: string; b50: integer) :string;
function sixtod(v60: string; b60: integer) :string;
function s2tod(v62: string; b62: integer) :string;
function dtoa(dtv: double; bv: integer) :string;   // decimal to all (until 20)
function dto30(v30: double; b30: integer) :string;
function dto36(v36: double; b36: integer) :string;
function dto40(dtv: double; bv: integer) :string;
function dto50(v50: double; bv: integer) :string;
function dto60(v60: double; bv: integer) :string;
function dto62(v62: double; bv: integer) :string;
function IntToHex (Value: Integer; Digits: Integer): string;

type
TMag = record
        tu, tsym: string;
        tcons: double;
        tdef: string;
end;

var
a:      string;
b:      array[1..8] of char = '23456789';
temp:   double;
tcnum:  array[1..26] of tmag;
lett:   array[1..10] of char = 'abcdefghij';
lett30: array[1..20] of char = 'abcdefghijklmnopqrst';
lett36: array[1..26] of char = 'abcdefghijklmnopqrstuvwxyz';
let4:   array[1..30] of char = 'abcdefghijklmnopqrstuvwxyzABCD';
let5:   array[1..40] of char = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMN';
let60:  array[1..52] of char = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWX';
let62:  array[1..52] of char = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';

implementation

// 20d new
function td (tdv: string; bv: smallint) : string;
var
tlen:    smallint;
fl:      integer;
ttemp:   integer  = 0;
l:       integer = 1;
tra:     array[1..100] of string;
begin
     tlen:= length(tdv);
     while tlen >= 1 do begin
     tra[tlen]:= tdv[tlen];
     for fl:= 10 to bv do
     if (tra[tlen] = lett[fl-9]) then tra[tlen]:= inttostr(fl);
     ttemp:= strtoint(tra[tlen])* l + ttemp;
     l:= l*bv; tlen:= tlen-1; end;
     result:= floattostr(ttemp);
end;

function bid(dbv: string; bv: smallint) :double;
var
len: smallint;
dbit: double;
l: smallint = 1;
begin
     //dbit:= 0;
     len:= length(dbv);
     while len >= 1 do begin
     dbit:= strtofloat(dbv[len])*l + dbit;
     l:= l*bv; len:= len-1;;
     end;
     result:= dbit;
end;

function dbi(bdv: double; dv: smallint) :string;
var
bids: string;
bidt: integer;
bia:   array[1..20] of integer;
l: smallint = 0;
begin
     if bdv < dv then dbi:= floattostr(bdv) else
     while bdv >=2 do begin
     bidt:= round(bdv) mod dv;
     bdv:= round(bdv) div dv;
     bids:= inttostr(bidt) + bids; end;
     bids:= floattostr(bdv) + bids;
(*     bia[l]:= bidt; bids:= floattostr(bia[l])+bids; l:= l+1; end;

     bia[l]:= bidt; bids:= floattostr(bdv)+bids;      *)
     dbi:= bids;
end;
// Duodecimal
function dduo(dduov: double) :string;
var
duos: string;
duotemp: double;
l: smallint = 1;
begin
     if dduov <= 9 then result:= floattostr(dduov) else
     while dduov >=12 do begin
     duotemp:= (round(dduov) mod 12); if duotemp= 10 then duos:= 'a'+duos else
     if duotemp= 11 then duos:= 'b'+duos else
     duos:= floattostr(duotemp)+duos; l:= l+1;
     dduov:= (round(dduov) div 12);
     end;
     if dduov= 10 then duos:= 'a'+duos else
     if dduov= 11 then duos:= 'b'+duos else
     duos:= floattostr(dduov)+duos;
      result:= duos;
end;

// Decimal to 20
function dtoa(dtv: double; bv: integer) :string;
var
ds,ts:      string;
dtemp: integer;
zl,al: smallint;
l:     smallint= 1;
st:   array[1..30] of string;
begin
     while dtv >= bv do begin
     dtemp:= (round(dtv) mod bv);
     dtv:= (round(dtv) div bv);
     st[l]:= inttostr(dtemp); l:= l+1; end;
     st[l]:= floattostr(dtv);
     for al:= length(st) downto 1 do begin
     for zl:= 10 to bv do begin
     if st[al] = inttostr(zl) then st[al]:= lett[zl-9]; end; end;
     for al:= length(st) downto 1 do ds:= ds + st[al];
     result:= ds;
end;

// (20) to decimal
function duod(duodvar: string; le: smallint) :string;
var
dlen:   smallint;
dt:     double;
dtt:    double;
l:      smallint=1;
zl:     smallint;
begin
     dlen:= length(duodvar);
     while dlen >= 1 do begin
     for zl:= 1 to le do
     if duodvar[dlen]= lett[zl] then begin
     duodvar[dlen]:= '0'; dt:= (9+zl)*l+dt; end;
     dt:= strtofloat(duodvar[dlen])*l +dt;
     l:= l*(le); dlen:= dlen-1;         end;
     result:= floattostr(dt);
end;

// (30) to decimal
function thtod(v30: string; le: integer) :string;
var
tlen:    smallint;
fl:      integer;
ttemp:   integer  = 0;
l:       integer = 1;
tra:     array[1..30] of string;
begin
     tlen:= length(v30);
     while tlen >= 1 do begin
     tra[tlen]:= v30[tlen];
     for fl:= 10 to le do
     if (tra[tlen] = lett30[fl-9]) then tra[tlen]:= inttostr(fl);
     ttemp:= strtoint(tra[tlen])* l + ttemp;
     l:= l*le; tlen:= tlen-1; end;
     result:= floattostr(ttemp);
end;

// (36) to decimal
function th6od(v36: string; le: integer) :string;
var
tlen:    smallint;
fl:      integer;
ttemp:   integer  = 0;
l:       integer = 1;
tra:     array[1..30] of string;
begin
     tlen:= length(v36);
     while tlen >= 1 do begin
     tra[tlen]:= v36[tlen];
     for fl:= 10 to le do
     if (tra[tlen] = lett36[fl-9]) then tra[tlen]:= inttostr(fl);
     ttemp:= strtoint(tra[tlen])* l + ttemp;
     l:= l*le; tlen:= tlen-1; end;
     result:= floattostr(ttemp);
end;

// (40) to decimal
function ftod(v40: string; b40: integer) :string;
var
tlen:    smallint;
fl:      integer;
ttemp:   integer  = 0;
l:       integer = 1;
tra:     array[1..30] of string;
begin
     tlen:= length(v40);
     while tlen >= 1 do begin
     tra[tlen]:= v40[tlen];
     for fl:= 10 to b40 do
     if (tra[tlen] = let4[fl-9]) then tra[tlen]:= inttostr(fl);
     ttemp:= strtoint(tra[tlen])* l + ttemp;
     l:= l*b40; tlen:= tlen-1; end;
     result:= floattostr(ttemp);
end;

// (50) to decimal
function fitod(v50: string; b50: integer) :string;
var
tlen:    smallint;
fl:      integer;
ttemp:   integer  = 0;
l:       integer = 1;
tra:     array[1..30] of string;
begin
     tlen:= length(v50);
     while tlen >= 1 do begin
     tra[tlen]:= v50[tlen];
     for fl:= 10 to b50 do
     if (tra[tlen] = let5[fl-9]) then tra[tlen]:= inttostr(fl);
     ttemp:= strtoint(tra[tlen])* l + ttemp;
     l:= l*b50; tlen:= tlen-1; end;
     result:= floattostr(ttemp);
end;

// (60) to decimal
function sixtod(v60: string; b60: integer) :string;
var
tlen:    smallint;
fl:      integer;
ttemp:   integer  = 0;
l:       integer = 1;
tra:     array[1..30] of string;
begin
     tlen:= length(v60);
     while tlen >= 1 do begin
     tra[tlen]:= v60[tlen];
     for fl:= 10 to b60 do
     if (tra[tlen] = let60[fl-9]) then tra[tlen]:= inttostr(fl);
     ttemp:= strtoint(tra[tlen])* l + ttemp;
     l:= l*b60; tlen:= tlen-1; end;
     result:= floattostr(ttemp);
end;

// (62) to decimal
function s2tod(v62: string; b62: integer) :string;
var
tlen:    smallint;
fl:      integer;
ttemp:   integer  = 0;
l:       integer = 1;
tra:     array[1..30] of string;
begin
     tlen:= length(v62);
     while tlen >= 1 do begin
     tra[tlen]:= v62[tlen];
     for fl:= 10 to b62 do
     if (tra[tlen] = let62[fl-9]) then tra[tlen]:= inttostr(fl);
     ttemp:= strtoint(tra[tlen])* l + ttemp;
     l:= l*b62; tlen:= tlen-1; end;
     result:= floattostr(ttemp);
end;

// Decimal to 30    0-9 A-T
function dto30(v30: double; b30: integer) :string;
var
ds,ts:      string;
dtemp: double;
zl,al: smallint;
l:     smallint=1;
st:   array[1..10] of string;
begin
     while v30>= b30 do begin
     dtemp:= (round(v30) mod b30);
     v30:= (round(v30) div b30);
     st[l]:= floattostr(dtemp); l:= l+1; end;
     st[l]:= floattostr(v30);
     for al:= length(st) downto 1 do begin
     for zl:= 10 to b30 do begin
     if st[al] = inttostr(zl) then st[al]:= lett30[zl-9]; end; end;
     for al:= length(st) downto 1 do ds:= ds + st[al];
     result:= ds;
end;

// Decimal to 36
function dto36(v36: double; b36: integer) :string;
var
ds,ts:      string;
dtemp: double;
zl,al: smallint;
l:     smallint=1;
st:   array[1..10] of string;
begin
     while v36>= b36 do begin
     dtemp:= (round(v36) mod b36);
     v36:= (round(v36) div b36);
     st[l]:= floattostr(dtemp); l:= l+1; end;
     st[l]:= floattostr(v36);
     for al:= length(st) downto 1 do begin
     for zl:= 10 to b36 do begin
     if st[al] = inttostr(zl) then st[al]:= lett36[zl-9]; end; end;
     for al:= length(st) downto 1 do ds:= ds + st[al];
     result:= ds;
end;

// Decimal to 40
function dto40(dtv: double; bv: integer) :string;
var
ds,ts:      string;
dtemp: double;
zl,al: smallint;
l:     smallint=1;
st:   array[1..30] of string;
begin
     while dtv>= bv do begin
     dtemp:= (round(dtv) mod bv);
     dtv:= (round(dtv) div bv);
     st[l]:= floattostr(dtemp); l:= l+1; end;
     st[l]:= floattostr(dtv);
     for al:= length(st) downto 1 do begin
     for zl:= 10 to bv do begin
     if st[al] = inttostr(zl) then st[al]:= let4[zl-9]; end; end;
     for al:= length(st) downto 1 do ds:= ds + st[al];
     result:= ds;
end;

// Decimal to 50 A-M
function dto50(v50: double; bv: integer) :string;
var
ds,ts:      string;
dtemp: double;
zl,al: smallint;
l:     smallint=1;
st:   array[1..10] of string;
begin
     while v50>= bv do begin
     dtemp:= (round(v50) mod bv);
     v50:= (round(v50) div bv);
     st[l]:= floattostr(dtemp); l:= l+1; end;
     st[l]:= floattostr(v50);
     for al:= length(st) downto 1 do begin
     for zl:= 10 to bv do begin
     if st[al] = inttostr(zl) then st[al]:= let5[zl-9]; end; end;
     for al:= length(st) downto 1 do ds:= ds + st[al];
     result:= ds;
end;

// Decimal to 60 A-Z a-x
function dto60(v60: double; bv: integer) :string;
var
ds,ts:      string;
dtemp: double;
zl,al: smallint;
l:     smallint=1;
st:   array[1..10] of string;
begin
     while v60>= bv do begin
     dtemp:= (round(v60) mod bv);
     v60:= (round(v60) div bv);
     st[l]:= floattostr(dtemp); l:= l+1; end;
     st[l]:= floattostr(v60);
     for al:= length(st) downto 1 do begin
     for zl:= 10 to bv do begin
     if st[al] = inttostr(zl) then st[al]:= let60[zl-9]; end; end;
     for al:= length(st) downto 1 do ds:= ds + st[al];
     result:= ds;
end;

// Decimal to 62 A-Z a-z
function dto62(v62: double; bv: integer) :string;
var
ds,ts:      string;
dtemp: double;
zl,al: smallint;
l:     smallint=1;
st:   array[1..10] of string;
begin
     while v62>= bv do begin
     dtemp:= (round(v62) mod bv);
     v62:= (round(v62) div bv);
     st[l]:= floattostr(dtemp); l:= l+1; end;
     st[l]:= floattostr(v62);
     for al:= length(st) downto 1 do begin
     for zl:= 10 to bv do begin
     if st[al] = inttostr(zl) then st[al]:= let62[zl-9]; end; end;
     for al:= length(st) downto 1 do ds:= ds + st[al];
     result:= ds;
end;

function IntToHex (Value: Integer; Digits: Integer): string;
begin
     result:= inttohex(value, 10);
end;

begin
tcnum[1].tu := 'Base 2 binary'; tcnum[1].tsym:= 'Base 2'; tcnum[1].tcons:= 35478.72;
tcnum[1].tdef:= 'Base two numbering system using the digits 0-1.';
tcnum[2].tu:= 'Base 3 ternary/trinary'; tcnum[2].tsym := 'Base 3'; tcnum[2].tcons:= 1.93303;
tcnum[2].tdef:= 'Base three numbering system using the digits 0-2. Russian Nikolay Brusentsov built a trinary based computer system.';
tcnum[3].tu:= 'Base 4 quaternary/quadrary'; tcnum[3].tsym:= 'Base 4'; tcnum[3].tcons:= 0.0000001;
tcnum[3].tdef:= 'Base four numbering system using the digits 0-3.';
tcnum[4].tu:= 'Base 5 quinary'; tcnum[4].tsym:= 'Base 5'; tcnum[4].tcons:= 58471.308;
tcnum[4].tdef:= 'Base five numbering system using the digits 0-4.';
tcnum[5].tu:= 'Base 6 senary/hexary'; tcnum[5].tsym:= 'Base 6'; tcnum[5].tcons:= 44289146.88;
tcnum[5].tdef:= 'Base six numbering system using the digits 0-5.';
tcnum[6].tu:= 'Base 7 septenary/septary'; tcnum[6].tsym:= 'Base 7'; tcnum[6].tcons:= 58475.88;
tcnum[6].tdef:= 'Base seven numbering system using the digits 0-6.';
tcnum[7].tu:= 'Base 8 octonary/octal/octonal/octimal'; tcnum[7].tsym:= 'Base 8'; tcnum[7].tcons:= 711.2;
tcnum[7].tdef:= 'Base eight numbering system using the digits 0-7. Commonly used in older computer systems.';
tcnum[8].tu:= 'Base 9 nonary'; tcnum[8].tsym:= 'Base 9'; tcnum[8].tcons:= 20;
tcnum[8].tdef:= 'Base nine numbering system using the digits 0-8.';
tcnum[9].tu:= 'Base 10 decimal'; tcnum[9].tsym:= 'Base 10'; tcnum[9].tcons:= 149597870700000;
tcnum[9].tdef:= 'Base ten numbering system using the digits 0-9.';
tcnum[10].tu:= 'Base 11 undenary'; tcnum[10].tsym:= 'Base 11'; tcnum[10].tcons:= 8.466666667;
tcnum[10].tdef:= 'Base eleven numbering system using the digits 0-9, A.';
tcnum[11].tu:= 'Base 12 duodecimal'; tcnum[11].tsym:= 'Base 12'; tcnum[11].tcons:= 0.0000000529177;
tcnum[11].tdef:= 'Base twelve numbering system using the digits 0-9, A-B.';
tcnum[12].tu:= 'Base 13 tridecimal'; tcnum[12].tsym:= 'Base 13'; tcnum[12].tcons:= 36576;
tcnum[12].tdef:= 'Base Thirteen numbering system using the digits 0-9, A-C.';
tcnum[13].tu:= 'Base 14 quattuordecimal'; tcnum[13].tsym:= 'Base 14'; tcnum[13].tcons:= 0.635;
tcnum[13].tdef:= 'Base Fourteen numbering system using the digits 0-9, A-D.';
tcnum[14].tu:= 'Base 15 quindecimal'; tcnum[14].tsym:= 'Base 15'; tcnum[14].tcons:= 3.16314;
tcnum[14].tdef:= 'Base Fifteen numbering system using the digits 0-9, A-E.';
tcnum[15].tu:= 'Base 16 sexadecimal/hexadecimal/hex'; tcnum[15].tsym:= 'Base 16'; tcnum[15].tcons:= 2.81168;
tcnum[15].tdef:= 'Base Sixteen numbering system using the digits 0-1, A-F. Commonly used in computer systems.';
tcnum[16].tu:= 'Base 17 septendecimal'; tcnum[16].tsym:= 'Base 17'; tcnum[16].tcons:= 219456;
tcnum[16].tdef:= 'Base Sixteen numbering system using the digits 0-1, A-G.';
tcnum[17].tu:= 'Base 18 octodecimal'; tcnum[17].tsym:= 'Base 18'; tcnum[17].tcons:= 0.254;
tcnum[17].tdef:= 'Base Sixteen numbering system using the digits 0-1, A-H.';
tcnum[18].tu:= 'Base 19 nonadecimal'; tcnum[18].tsym:= 'Base 19'; tcnum[18].tcons:= 3840.49;
tcnum[18].tdef:= 'Base Sixteen numbering system using the digits 0-1, A-I.';
tcnum[19].tu:= 'Base 20 vigesimal'; tcnum[19].tsym:= 'Base 20'; tcnum[19].tcons:= 10;
tcnum[19].tdef:= 'Base Twenty numbering system using the digits 0-1, A-J.';
tcnum[20].tu:= 'Base 30 trigesimal'; tcnum[20].tsym:= 'Base 30'; tcnum[20].tcons:= 30480;
tcnum[20].tdef:= 'Base Thirty numbering system using the digits 0-9, A-T.';
tcnum[21].tu:= 'Base 36 hexatrigesimal'; tcnum[21].tsym:= 'Base 36'; tcnum[21].tcons:= 20116.8;
tcnum[21].tdef:= 'Base Thirty-six numbering system using the digits 0-9, A-Z.';
tcnum[22].tu:= 'Base 40 quadragesimal'; tcnum[22].tsym:= 'Base 40'; tcnum[22].tcons:= 260.1;
tcnum[22].tdef:= 'Base Fifty digits numbering system using the digits 0-1, A-Z, a-d.';
tcnum[23].tu:= 'Base 50 quinquagesimal'; tcnum[23].tsym:= 'Base 50'; tcnum[23].tcons:= 21031.24;
tcnum[23].tdef:= 'Base Fifty digits numbering system using the digits 0-1, A-Z, a-n.';
tcnum[24].tu:= 'Base 60 sexagesimal'; tcnum[24].tsym:= 'Base 60'; tcnum[24].tcons:= 4.51278;
tcnum[24].tdef:= 'Base Sixty numbering system using the digits 0-9, A-Z, a-x.';
tcnum[25].tu:= 'Base 62 deuosexagesimal'; tcnum[25].tsym:= 'Base 62'; tcnum[25].tcons:= 91440.0;
tcnum[25].tdef:= 'Base Sixty-two numbering system using the digits 0-9, A-Z, a-z.'+char(13)+'This is the highest numbering system that can be represented with all decimal numbers and lower and upper case English alphabet characters.'+char(13)+'Other number systems include septagesimal (base 70), octagesimal (base 80), nonagesimal (base 90), centimal (base 100), bicentimal (base 200), tercentimal (base 300), quattrocentimal (base 400), quincentimal (base 500).';
tcnum[26].tu:= 'Roman numerals'; tcnum[26].tsym:= ''; tcnum[26].tcons:= 0.00000000000281793345048;
tcnum[26].tdef:= 'A symbol set in the old Roman notation; I, V, X, L, C, D, M.'+char(13)+'Range 1 to 3999 (higher values cannot be represented with standard ASCII characters).';
end.

