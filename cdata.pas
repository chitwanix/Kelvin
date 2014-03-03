unit cdata;

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
tcdata: array[1..14] of tmag;

implementation
begin
tcdata[1].tu := 'Bit'; tcdata[1].tsym:= ''; tcdata[1].tcons:= 0.125; //⁺⁻⁰ⁱ⁴⁵⁶⁷⁸⁸⁹¹²³
tcdata[1].tdef:= 'Acronym of BInary digiT';
tcdata[2].tu:= 'Byte'; tcdata[2].tsym := ''; tcdata[2].tcons:= 1;
tcdata[2].tdef:= 'The byte is a unit of digital information in computing and telecommunications that most commonly consists of eight bits.'+char(13)+'Historically, a byte was the number of bits used to encode a single character of text in a computer and for this reason it is the basic addressable element in many computer architectures.';
tcdata[3].tu:= 'Character'; tcdata[3].tsym:= ''; tcdata[3].tcons:= 1;
tcdata[3].tdef:= 'Usually described by one byte (256 possible characters can be defined by one byte).';
tcdata[4].tu:= 'Exabyte/exbi'; tcdata[4].tsym:= 'E/Ei'; tcdata[4].tcons:= exp(6*ln(1024));
tcdata[4].tdef:= '2⁶⁰, 1024⁶, 1024 petabytes.'+char(13)+'1024 comes from 2ⁱ⁰ which is close enough to 1000.'+char(13)+'Tebi is the IEEE proposal.';
tcdata[5].tu:= 'Gigabyte/gibi'; tcdata[5].tsym:= 'G/Gi'; tcdata[5].tcons:= exp(3*ln(1024));
tcdata[5].tdef:= '2³⁰, 1024³. 1024 megabytes.'+char(13)+'1024 comes from 2¹⁰ which is close enough to 1000.'+char(13)+'Gibi is the IEEE proposal.';
tcdata[6].tu:= 'Kilobit'; tcdata[6].tsym:= 'kilobit'; tcdata[6].tcons:= 128;
tcdata[6].tdef:= '2ⁱ⁰ bits.';
tcdata[7].tu:= 'Kilobyte/kibi'; tcdata[7].tsym:= 'K/Ki'; tcdata[7].tcons:= 1024;
tcdata[7].tdef:= '2ⁱ⁰, 1024 bytes.'+char(13)+'1024 comes from 2¹⁰ which is close enough to 1000.'+char(13)+'Kibi is the IEEE proposal.';
tcdata[8].tu:= 'Megabit'; tcdata[8].tsym:= 'megabit'; tcdata[8].tcons:= 131072;
tcdata[8].tdef:= '2²⁰ bits.';
tcdata[9].tu:= 'Megabyte/mebi'; tcdata[9].tsym:= 'M/Mi'; tcdata[9].tcons:= exp(2*ln(1024));
tcdata[9].tdef:= '2²⁰, 1024² bytes. 1024 kilobytes.'+char(13)+'1024 comes from 2¹⁰ which is close enough to 1000.'+char(13)+'Mebi is the IEEE proposal.';
tcdata[10].tu:= 'Nibble/hexit/quadbit'; tcdata[10].tsym:= ''; tcdata[10].tcons:= 0.5;
tcdata[10].tdef:= 'One half a byte.';
tcdata[11].tu:= 'Petabyte/pebi'; tcdata[11].tsym:= 'P/Pi'; tcdata[11].tcons:= exp(5*ln(1024));
tcdata[11].tdef:= '2⁵⁰, 1024⁵. 1024 terabytes.'+char(13)+'1024 comes from 2¹⁰ which is close enough to 1000.'+char(13)+'Tebi is the IEEE proposal.';
tcdata[12].tu:= 'Terabyte'; tcdata[12].tsym:= 'T/Ti'; tcdata[12].tcons:= exp(4*ln(1024));
tcdata[12].tdef:= '2⁴⁰, 1024⁴. 1024 gigabytes.'+char(13)+'1024 comes from 2¹⁰ which is close enough to 1000.'+char(13)+'Tebi is the IEEE proposal.';
tcdata[13].tu:= 'Yobi/yottabyte'; tcdata[13].tsym:= 'Yi'; tcdata[13].tcons:= exp(8*ln(1024));
tcdata[13].tdef:= '1024⁸. 1024 yobibytes.'+char(13)+'1024 comes from 2¹⁰ which is close enough to 1000.'+char(13)+'Tebi is the IEEE proposal.';
tcdata[14].tu:= 'Zebi/zettabyte'; tcdata[14].tsym:= 'Zi'; tcdata[14].tcons:= exp(7*ln(1024));
tcdata[14].tdef:= '1024⁷. 1024 exbibytes.'+char(13)+'1024 comes from 2¹⁰ which is close enough to 1000.'+char(13)+'Tebi is the IEEE proposal.';
end.

