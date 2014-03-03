unit time;

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
ttime: array[1..37] of tmag;


implementation

begin
ttime[1].tu := 'Century'; ttime[1].tsym:= ''; ttime[1].tcons:= 3153600000;
ttime[1].tdef:= 'A period of a hundred years; as, this event took place over two centuries ago.'+char(13)+'Note: Century, in the reckoning of time, although often used in a general way of any series of hundred consecutive years (as, a century of temperance work), '+'usually signifies a division of the Christian era, consisting of a period of one hundred years ending with the hundredth year from which it is named; '+'as, the first century (a. d. 1-100 inclusive); the seventh century (a.d. 601-700); the eighteenth century (a.d. 1701-1800).'+char(13)+'With words or phrases connecting it with some other system of chronology it is used of similar division of those eras; as, the first century of Rome (A.U.C. 1-100).';
ttime[2].tu:= 'Cesium vibrations'; ttime[2].tsym := 'vibrations'; ttime[2].tcons:= 1.08782775708e-10;
ttime[2].tdef:= 'It takes one second for hot cesium atoms to vibrate 9,192,631,770 times (microwaves). This standard was adopted by the International System in 1967.';
ttime[3].tu:= 'Day'; ttime[3].tsym:= 'd'; ttime[3].tcons:= 86400;
ttime[3].tdef:= 'The period of the earth''s revolution on its axis, ordinarily divided into twenty-four hours.'+char(13)+'It is measured by the interval between two successive transits of a celestial body over the same meridian, and takes a specific name from that of the body. Thus, if this is the sun, the day (the interval between two successive transits '+'of the sun''s center over the same meridian) is called a solar day; if it is a star, a sidereal day; if it is the moon, a lunar day.';
ttime[4].tu:= 'Day (lunar/tidal)'; ttime[4].tsym:= ''; ttime[4].tcons:= 89400;
ttime[4].tdef:= '24 hours 50 minutes used in tidal predictions.';
ttime[5].tu:= 'Day (sidereal)'; ttime[5].tsym:= ''; ttime[5].tcons:= 86164.09;
ttime[5].tdef:= 'The interval between two successive transits of the first point of Aries over the same meridian. The Sidereal day is 23 h. 56 m. 4.09 s. of mean solar time.';
ttime[6].tu:= 'Decade'; ttime[6].tsym:= ''; ttime[6].tcons:= 315360000;
ttime[6].tdef:= 'A group or division of ten; esp., a period of ten years; a decennium; as, a decade of years or days; a decade of soldiers; the second decade of Livy.';
ttime[7].tu:= 'Fortnight'; ttime[7].tsym:= ''; ttime[7].tcons:= 1209600;
ttime[7].tdef:= 'Fourteen nights, our ancestors reckoning time by nights and winters.  The space of fourteen days; two weeks.';
ttime[8].tu:= 'Hour'; ttime[8].tsym:= 'h'; ttime[8].tcons:= 3600;
ttime[8].tdef:= 'The twenty-fourth part of a day; sixty minutes.';
ttime[9].tu:= 'Microsecond'; ttime[9].tsym:= 'µs'; ttime[9].tcons:= 1e-6;
ttime[9].tdef:= 'One millionth of a second.';
ttime[10].tu:= 'Millennium'; ttime[10].tsym:= ''; ttime[10].tcons:= 31536000000;
ttime[10].tdef:= 'A thousand years; especially, the thousand years mentioned in the twentieth chapter in the twentieth chapter of Revelation, during which holiness is to be triumphant throughout the world. '+'Some believe that, during this period, Christ will reign on earth in person with his saints.';
ttime[11].tu:= 'Millisecond'; ttime[11].tsym:= ''; ttime[11].tcons:= 1E-3;
ttime[11].tdef:= 'One thousandth of a second.';
ttime[12].tu:= 'Minute'; ttime[12].tsym:= 'min'; ttime[12].tcons:= 60;
ttime[12].tdef:= 'The sixtieth part of an hour; sixty seconds.';
ttime[13].tu:= 'Month'; ttime[13].tsym:= ''; ttime[13].tcons:= 2628000;
ttime[13].tdef:= 'One of the twelve portions into which the year is divided; the twelfth part of a year, corresponding nearly to the length of a synodic revolution of the moon, whence the name.'+char(13)+'In popular use, a period of four weeks is often called a month.';
ttime[14].tu:= 'Month (sidereal)'; ttime[14].tsym:= ''; ttime[14].tcons:= 2360591.5;
ttime[14].tdef:= 'Period between successive conjunctions with a star, 27.322 days (27 d 7 h 43 min 11.5 s).';
ttime[15].tu:= 'Month (synodic/lunar month/lunation)'; ttime[15].tsym:= ''; ttime[15].tcons:= 2551442.976;
ttime[15].tdef:= 'The period between successive new moons (29.53059 days).'+char(13)+'syn: lunar month, moon, lunation.';
ttime[16].tu:= 'Nanosecond'; ttime[16].tsym:= 'ns'; ttime[16].tcons:= 1e-9;
ttime[16].tdef:= '10⁻⁹ seconds.';
ttime[17].tu:= 'Novennial'; ttime[17].tsym:= ''; ttime[17].tcons:= 283824000;
ttime[17].tdef:= 'Done or recurring every ninth year.';
ttime[18].tu:= 'Octennial'; ttime[18].tsym:= ''; ttime[18].tcons:= 252288000;
ttime[18].tdef:= 'Happening every eighth year; also, lasting a period of eight years.';
ttime[19].tu:= 'Olympiad'; ttime[19].tsym:= ''; ttime[19].tcons:= 126144000;
ttime[19].tdef:= 'A period of four years, by which the ancient Greeks reckoned time, being the interval from one celebration of the Olympic games to another, beginning with the victory of Coroebus in the foot race, '+'which took place in the year 776 b.c.; as, the era of the olympiads.';
ttime[20].tu:= 'Picosecond'; ttime[20].tsym:= 'ps'; ttime[20].tcons:= 1e-12;
ttime[20].tdef:= '10¯ⁱ² seconds.';
ttime[21].tu:= 'Pregnancy'; ttime[21].tsym:= ''; ttime[21].tcons:= 23652000;
ttime[21].tdef:= 'The condition of being pregnant; the state of being with young. A period of approximately 9 months for humans.';
ttime[22].tu:= 'Quindecennial'; ttime[22].tsym:= ''; ttime[22].tcons:= 473040000;
ttime[22].tdef:= 'A period of 15 years.';
ttime[23].tu:= 'Quinquennial'; ttime[23].tsym:= ''; ttime[23].tcons:= 157680000;
ttime[23].tdef:= 'Occurring once in five years, or at the end of every five years; also, lasting five years. A quinquennial event.';
ttime[24].tu:= 'Second'; ttime[24].tsym:= 's'; ttime[24].tcons:= 1;
ttime[24].tdef:= 'The sixtieth part of a minute of time.';
ttime[25].tu:= 'Septennial'; ttime[25].tsym:= ''; ttime[25].tcons:= 220752000;
ttime[25].tdef:= 'Lasting or continuing seven years; as, septennial parliaments.';
ttime[26].tu:= 'Week'; ttime[26].tsym:= ''; ttime[26].tcons:= 604800;
ttime[26].tdef:= 'A period of seven days, usually that reckoned from one Sabbath or Sunday to the next. Also seven nights, known as sennight.';
ttime[27].tu:= 'Year'; ttime[27].tsym:= 'a'; ttime[27].tcons:= 31536000;
ttime[27].tdef:= 'The time of the apparent revolution of the sun trough the ecliptic; the period occupied by the earth in making its revolution around the sun, called the astronomical year; also, a period more or less nearly agreeing with this, '+'adopted by various nations as a measure of time, and called the civil year; as, the common lunar year of 354 days, '+'still in use among the Mohammedans; the year of 360 days, etc.'+char(13)+'In common usage, the year consists of 365 days, and every fourth year (called bissextile, or leap year) of 366 days, a day being added to February on that year, on account of the excess above 365 days.';
ttime[28].tu:= 'Year (anomalistic)'; ttime[28].tsym:= ''; ttime[28].tcons:= 31558428;
ttime[28].tdef:= 'The time of the earth''s revolution from perihelion to perihelion again, which is 365 days, 6 hours, 13 minutes, and 48 seconds.';
ttime[29].tu:= 'Year (common lunar)'; ttime[29].tsym:= ''; ttime[29].tcons:= 30585600;
ttime[29].tdef:= 'The period of 12 lunar months, or 354 days.';
ttime[30].tu:= 'Year (embolismic/intercalary lunar)'; ttime[30].tsym:= ''; ttime[30].tcons:= 33177600;
ttime[30].tdef:= 'The period of 13 lunar months, or 384 days.';
ttime[31].tu:= 'Year (leap/bissextile)'; ttime[31].tsym:= ''; ttime[31].tcons:= 31622400;
ttime[31].tdef:= 'Bissextile; a year containing 366 days; every fourth year which leaps over a day more than a common year, giving to February twenty-nine days.'+char(13)+'Note: Every year whose number is divisible by four without a remainder is a leap year, excepting the full centuries, which, to be leap years, '+'must be divisible by 400 without a remainder. If not so divisible they are common years. 1900, therefore, is not a leap year.';
ttime[32].tu:= 'Year (lunar astronomical)'; ttime[32].tsym:= ''; ttime[32].tcons:= 30617316;
ttime[32].tdef:= 'The period of 12 lunar synodical months, or 354 days, 8 hours, 48 minutes, 36 seconds.';
ttime[33].tu:= 'Year (lunisolar)'; ttime[33].tsym:= ''; ttime[33].tcons:= 16777152000.0;
ttime[33].tdef:= 'A period of time, at the end of which, in the Julian calendar, the new and full moons and the eclipses '+'recur on the same days of the week and month and year as in the previous period. '+'It consists of 532 common years, being the least common multiple of the numbers of years in the cycle of the sun and the cycle of the moon.';
ttime[34].tu:= 'Year (sabbatical)'; ttime[34].tsym:= ''; ttime[34].tcons:= 220752000;
ttime[34].tdef:= 'Every seventh year, in which the Israelites were commanded to suffer their fields and vineyards to rest, or lie without tillage.';
ttime[35].tu:= 'Year (sidereal)'; ttime[35].tsym:= ''; ttime[35].tcons:= 31558149.3;
ttime[35].tdef:= 'The time in which the sun, departing from any fixed star, returns to the same. This is 365 days, 6 hours, 9 minutes, and 9.3 seconds.';
ttime[36].tu:= 'Year (sothic)'; ttime[36].tsym:= ''; ttime[36].tcons:= 31557600;
ttime[36].tdef:= 'The Egyptian year of 365 days and 6 hours, as distinguished from the Egyptian vague year, which contained 365 days.'+char(13)+'The Sothic period consists of 1,460 Sothic years, being equal to 1,461 vague years. One of these periods ended in July, a.d. 139.';
ttime[37].tu:= 'Year (tropic)'; ttime[37].tsym:= ''; ttime[37].tcons:= 31556926;
ttime[37].tdef:= 'The solar year; the period occupied by the sun in passing from one tropic or one equinox to the same again, having a mean length of 365 days, '+'5 hours, 48 minutes, 46.0 seconds, which is 20 minutes, 23.3 seconds shorter than the sidereal year, on account of the precession of the equinoxes.';
end.
