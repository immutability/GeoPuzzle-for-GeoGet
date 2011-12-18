{
Autor: osnica / Rado
http://tiny.cc/osnica

GeoPuzzle, http://geotrophy.net

Tento subor obsahuje data Puzzle pre CR:
- Ceske Kopecky
- Ceske Hrady
- Ceske Rekordy
}


// ----------------------------------------------
// PUZZLE CZ KOPECKY - START
procedure ProcessCZKopecky(GC:TGeo);
begin
  case GC.ID of
    'GCQKPX' : flags_CZKopecky.Bits[1] := true;
    'GCPQER' : flags_CZKopecky.Bits[2] := true;
    'GCR00D' : flags_CZKopecky.Bits[3] := true;
    'GC9EBC' : flags_CZKopecky.Bits[4] := true;
    'GCPJYN' : flags_CZKopecky.Bits[5] := true;
    'GCVNR6' : flags_CZKopecky.Bits[6] := true;
    'GCPRHE' : flags_CZKopecky.Bits[7] := true;
    'GC2KG2Y' : flags_CZKopecky.Bits[8] := true;
    'GCXKEM' : flags_CZKopecky.Bits[9] := true;
    'GC29ZA6' : flags_CZKopecky.Bits[10] := true;
    'GC1ZQDJ' : flags_CZKopecky.Bits[11] := true;
    'GC164DM' : flags_CZKopecky.Bits[12] := true;
    'GCY8PR' : flags_CZKopecky.Bits[13] := true;
    'GCXN9X' : flags_CZKopecky.Bits[14] := true;
    'GCPPXP' : flags_CZKopecky.Bits[15] := true;
    'GCJ6RD' : flags_CZKopecky.Bits[16] := true;
    'GC1ZBK6' : flags_CZKopecky.Bits[17] := true;
    'GCYA71' : flags_CZKopecky.Bits[18] := true;
    'GC2CKK0' : flags_CZKopecky.Bits[19] := true;
    'GC13GFT' : flags_CZKopecky.Bits[20] := true;
    'GCQKPJ' : flags_CZKopecky.Bits[21] := true;
    'GCK98W' : flags_CZKopecky.Bits[22] := true;
    'GCX3DZ' : flags_CZKopecky.Bits[23] := true;
    'GC185ZY' : flags_CZKopecky.Bits[24] := true;
    'GC1MMTC' : flags_CZKopecky.Bits[25] := true;
    'GC1VB3X' : flags_CZKopecky.Bits[26] := true;
    'GCYDYA' : flags_CZKopecky.Bits[27] := true;
    'GCPKRR' : flags_CZKopecky.Bits[28] := true;
    'GCZ6W7' : flags_CZKopecky.Bits[29] := true;
    'GCPMM2' : flags_CZKopecky.Bits[30] := true;
    'GCKDBV' : flags_CZKopecky.Bits[31] := true;
    'GC1XNX3' : flags_CZKopecky.Bits[32] := true;
    'GCVJFA' : flags_CZKopecky.Bits[33] := true;
    'GCND2T' : flags_CZKopecky.Bits[34] := true;
    'GCYEKY' : flags_CZKopecky.Bits[35] := true;
  end;
end;


procedure GenerateCZKopecky;
var
  names : TPuzzleItems;
begin
  names[1] := 'Lysá hora (1323 m n. m.)';
  names[2] := 'Brdo (586 m n. m.)';
  names[3] := 'Lesný (982 m n. m.)';
  names[4] := 'Øíp (459 m n. m.)';
  names[5] := 'Dìvín (549 m n. m.)';
  names[6] := 'Tøemšín (827 m n. m.)';
  names[7] := 'Velká Deštná (1115 m n. m.)';
  names[8] := 'Javoøice (837 m n. m.)';
  names[9] := 'Libín (1093 m n. m.)';
  names[10] := 'Drkolná (729 m n. m.)';
  names[11] := 'Klínovec (1244 m n. m.)';
  names[12] := 'Radeè (721 m n. m.)';
  names[13] := 'Snìžka (1602 m n. m.)';
  names[14] := 'Pradìd (1492 m n. m.)';
  names[15] := 'Èerchov (1042 m n. m.)';
  names[16] := 'Milešovka (837 m n. m.)';
  names[17] := 'Výhon (356 m n. m.)';
  names[18] := 'Koráb (773 m n. m.)';
  names[19] := 'Skalky (735 m n. m.)';
  names[20] := 'Velky Javornik (1071 m n. m.)';
  names[21] := 'Skalka (964 m n. m.)';
  names[22] := 'Velká Javoøina (970 m n. m.)';
  names[23] := 'Ralsko (696 m n. m.)';
  names[24] := 'Královecký Špièák  (880 m n. m.)';
  names[25] := 'Plechý (1378 m n. m.)';
  names[26] := 'Sluneèná (800 m n. m.)';
  names[27] := 'Smrk (1024 m n. m.)';
  names[28] := 'Devìt skal (836 m n. m.)';
  names[29] := 'Dìèínský Snìžník (723 m n. m.)';
  names[30] := 'Kamenec (1072 m n. m.)';
  names[31] := 'Ještìd (1012 m n. m.)';
  names[32] := 'Králický Snìžník  (1424 m n. m.)';
  names[33] := 'Luž (793 m n. m.)';
  names[34] := 'Kunìtická hora (307 m n. m.)';
  names[35] := 'Velká Èantoryje (995 m n. m.)';

  GeneratePuzzle(flags_CZKopecky, names, GEOGET_SCRIPTDIR + OUT_CZKOPECKY, 'puzzlenew', backgroundGlobal);
end;


// ----------------------------------------------
// PUZZLE CZ HRADY - START
procedure ProcessCZHrady(GC:TGeo);
begin
  case GC.ID of
    'GCJGHT' : flags_CZHrady.Bits[1] := true;
    'GC175Y1' : flags_CZHrady.Bits[2] := true;
    'GC1QBTD' : flags_CZHrady.Bits[3] := true;
    'GC2VBQX' : flags_CZHrady.Bits[4] := true;
    'GC2HCBZ' : flags_CZHrady.Bits[5] := true;
    'GC15XMC' : flags_CZHrady.Bits[6] := true;
    'GC1FCY6' : flags_CZHrady.Bits[7] := true;
    'GCYDYV' : flags_CZHrady.Bits[8] := true;
    'GCPQZF' : flags_CZHrady.Bits[9] := true;
    'GCW4T5' : flags_CZHrady.Bits[10] := true;
    'GC11KAA' : flags_CZHrady.Bits[11] := true;
    'GCQHDD' : flags_CZHrady.Bits[12] := true;
    'GC1Q5DP' : flags_CZHrady.Bits[13] := true;
    'GC1Y9QB' : flags_CZHrady.Bits[14] := true;
    'GCKBP1' : flags_CZHrady.Bits[15] := true;
    'GC1RD64' : flags_CZHrady.Bits[16] := true;
    'GC195X3' : flags_CZHrady.Bits[17] := true;
    'GCYG20' : flags_CZHrady.Bits[18] := true;
    'GC2WJ1T' : flags_CZHrady.Bits[19] := true;
    'GCXE7Y' : flags_CZHrady.Bits[20] := true;
    'GCX7J6' : flags_CZHrady.Bits[21] := true;
    'GCND2T' : flags_CZHrady.Bits[22] := true;
    'GC1AXGB' : flags_CZHrady.Bits[23] := true;
    'GCXAZW' : flags_CZHrady.Bits[24] := true;
    'GC1P6MV' : flags_CZHrady.Bits[25] := true;
    'GCVHT3' : flags_CZHrady.Bits[26] := true;
    'GC13JDQ' : flags_CZHrady.Bits[27] := true;
    'GC1QTK9' : flags_CZHrady.Bits[28] := true;
    'GCQ8FH' : flags_CZHrady.Bits[29] := true;
    'GCV8QF' : flags_CZHrady.Bits[30] := true;
    'GC1H8ZN' : flags_CZHrady.Bits[31] := true;
    'GC1AA8Y' : flags_CZHrady.Bits[32] := true;
    'GC1128T' : flags_CZHrady.Bits[33] := true;
    'GC2A4NA' : flags_CZHrady.Bits[34] := true;
    'GCKPKN' : flags_CZHrady.Bits[35] := true;
  end;
end;


procedure GenerateCZHrady;
var
  names : TPuzzleItems;
begin
  names[1] := 'Bezdìz';
  names[2] := 'Bouzov';
  names[3] := 'Kašperk';
  names[4] := 'Budynì nad Ohøí';
  names[5] := 'Buchlov';
  names[6] := 'Èeský Šternberk';
  names[7] := 'Grabštejn';
  names[8] := 'Frýdlant';
  names[9] := 'Helfštýn';
  names[10] := 'Karlštejn';
  names[11] := 'Bítov';
  names[12] := 'Kokoøín';
  names[13] := 'Zvíkov';
  names[14] := 'Køivoklát';
  names[15] := 'Kost';
  names[16] := 'Ledeè nad Sázavou';
  names[17] := 'Pražský hrad';
  names[18] := 'Litice nad Orlicí';
  names[19] := 'Loket';
  names[20] := 'Nové Hrady';
  names[21] := 'Pecka';
  names[22] := 'Kunìtická hora';
  names[23] := 'Pernštejn';
  names[24] := 'Roštejn';
  names[25] := 'Rožmberk';
  names[26] := 'Sovinec';
  names[27] := 'Špilberk';
  names[28] := 'Šternberk';
  names[29] := 'Švihov';
  names[30] := 'Støekov';
  names[31] := 'Svojanov';
  names[32] := 'Veveøí';
  names[33] := 'Valdštejn';
  names[34] := 'Velhartice';
  names[35] := 'Toèník';

  GeneratePuzzle(flags_CZHrady, names, GEOGET_SCRIPTDIR + OUT_CZHRADY, 'hrady-cz', backgroundGlobal);
end;


// ----------------------------------------------
// PUZZLE CZ REKORDY - START
procedure ProcessCZRekordy(GC:TGeo);
begin
  case GC.ID of
    'GC1H84F' : flags_CZRekordy.Bits[1] := true;
    'GC1F0J3' : flags_CZRekordy.Bits[2] := true;
    'GC12RC1' : flags_CZRekordy.Bits[3] := true;
    'GC16HV5' : flags_CZRekordy.Bits[4] := true;
    'GCQR7M' : flags_CZRekordy.Bits[5] := true;
    'GC19MRV' : flags_CZRekordy.Bits[6] := true;
    'GC1QZ1A' : flags_CZRekordy.Bits[7] := true;
    'GCQDGV' : flags_CZRekordy.Bits[8] := true;
    'GCQ7RN' : flags_CZRekordy.Bits[9] := true;
    'GCW21Q' : flags_CZRekordy.Bits[10] := true;
    'GC1486B' : flags_CZRekordy.Bits[11] := true;
    'GC136TH' : flags_CZRekordy.Bits[12] := true;
    'GCXXHX' : flags_CZRekordy.Bits[13] := true;
    'GC1GD0K' : flags_CZRekordy.Bits[14] := true;
    'GC1G18Q' : flags_CZRekordy.Bits[15] := true;
    'GC1YH7X' : flags_CZRekordy.Bits[16] := true;
    'GC2D4N3' : flags_CZRekordy.Bits[17] := true;
    'GC15P0G' : flags_CZRekordy.Bits[18] := true;
    'GC1J2CV' : flags_CZRekordy.Bits[19] := true;
    'GCP6MG' : flags_CZRekordy.Bits[20] := true;
    'GC1GC4H' : flags_CZRekordy.Bits[21] := true;
    'GC1R3WR' : flags_CZRekordy.Bits[22] := true;
    'GCYCYX' : flags_CZRekordy.Bits[23] := true;
    'GCQ7QC' : flags_CZRekordy.Bits[24] := true;
    'GCX9VC' : flags_CZRekordy.Bits[25] := true;
    'GC27NVH' : flags_CZRekordy.Bits[26] := true;
    'GCM39Z' : flags_CZRekordy.Bits[27] := true;
    'GC195X3' : flags_CZRekordy.Bits[28] := true;
    'GCYKA4' : flags_CZRekordy.Bits[29] := true;
    'GCQZRR' : flags_CZRekordy.Bits[30] := true;
    'GC13XMV' : flags_CZRekordy.Bits[31] := true;
    'GCKT03' : flags_CZRekordy.Bits[32] := true;
    'GCVF5D' : flags_CZRekordy.Bits[33] := true;
    'GC1H7VE' : flags_CZRekordy.Bits[34] := true;
    'GC9899' : flags_CZRekordy.Bits[35] := true;
  end;
end;


procedure GenerateCZRekordy;
var
  names : TPuzzleItems;
begin
  names[1] := 'Bøevnovský klášter-Nejstarší klášter';
  names[2] := 'Bøezenský tunel-Nejdelší železnièní tunel';
  names[3] := 'Èerné jezero-Nejhlubší a nejvìtší èeské jezero';
  names[4] := 'City Tower-Nejvyšší budova';
  names[5] := 'Dìdek-Nejmohutnìjší balvan';
  names[6] := 'Elektrarna Chvaletice -Nejvyšší komín';
  names[7] := 'kabinová lanovka Èerná Hora-Nejstarší kabinová lanovka';
  names[8] := 'Hranická propast-Nejhlubší propast';
  names[9] := 'Kamenný most v Písku-Nejstarší zachovaný most';
  names[10] := 'kostel Svatého Bartolomìje-Nejvyšší kostelní vìž';
  names[11] := 'Kuncický bludný balvan-Nejvìtší bludný balvan';
  names[12] := 'Mumlavský vodopád-Nejmohutnìjší vodopád';
  names[13] := 'Negrelliho viadukt-Nejdelší železnièní most';
  names[14] := 'Chalupské jezírko-Nejvìtší rašelinné jezírko';
  names[15] := 'Nová Louka-Nejvyšší srážky za 24 hodin';
  names[16] := 'Úpa-Nejvýše pramenící øeka';
  names[17] := 'Panèavský vodopád-Nejvyšší vodopád';
  names[18] := 'Pravèická brána-Nejvìtší skalní brána';
  names[19] := 'Strahovský stadion-Nejvìtší sportovní stadion';
  names[20] := 'Pøehrada Orlík-Nejvìtší pøehradní nádrž a nejvyšší betonová pøehradní hráz';
  names[21] := 'Karlovo námìstí-Nejvìtších námìstí';
  names[22] := 'pøehradní hráz Nechranice-Nejdelší sypaná pøehradní hráz';
  names[23] := 'Žižkovský vysílaè-';
  names[24] := 'Rožmberk-Plochou nejvìtší rybník';
  names[25] := 'Sekvojovec obrovský-Možná nejvyšší strom v ÈR';
  names[26] := 'Staòkovský rybník-Nejobjemnìjší rybník';
  names[27] := 'stožáry rozhlasového vysílaèe Praha - Liblice-Nejvyšší stavba';
  names[28] := 'Pražský hrad-Nejvìtší hrad';
  names[29] := 'Vejvodova lípa-Strom s nejvìtším obvodem';
  names[30] := 'velkolom Bílina-Umìlý bod na povrchu zemì s nejmenší nadmoøskou výškou';
  names[31] := 'Žïákovský most-Nejvyšší most';
  names[32] := 'Rotunda sv. Petra a Pavla-Nejstarší dosud stojící stavba';
  names[33] := 'Žofínský prales-Nejstarší pøírodní rezervace';
  names[34] := 'pøehradní hráz Dalešice-Nejvyšší pøehradní hráz';
  names[35] := 'Macocha-Nejmohutnìjší propast';

  GeneratePuzzle(flags_CZRekordy, names, GEOGET_SCRIPTDIR + OUT_CZREKORDY, 'rekordy-cz', backgroundGlobal);
end;