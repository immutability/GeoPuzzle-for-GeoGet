{
Autor: osnica / Rado
http://tiny.cc/osnica

GeoPuzzle, http://geotrophy.net

Tento subor obsahuje data Puzzle pre SR:
- Slovenske Kopceky
- Slovenske Hrady
- Drevene kostoliky na Slovensku
}


// ----------------------------------------------
// PUZZLE TEMPLATE
{procedure ProcessCZRekordy(GC:TGeo);
begin
  case GC.ID of

  end;
end;


procedure GenerateCZRekordy;
var
  names : TPuzzleItems;
begin
  
  GeneratePuzzle(flags_CZRekordy, names, GEOGET_SCRIPTDIR + OUT_...., 'rekordy-cz');
end;}


// ----------------------------------------------
// PUZZLE SK KOPCEKY - START
procedure ProcessSKKopceky(GC:TGeo);
begin
  case GC.ID of
    'GC1Y114' : flags_SKKopceky.Bits[1] := true;
    'GC34TAW' : flags_SKKopceky.Bits[2] := true;
    // TODO na Bystrej este nie je geocache
    'GCPWTF' : flags_SKKopceky.Bits[4] := true;
    'GCK0XY' : flags_SKKopceky.Bits[5] := true;
    'GC2BT31' : flags_SKKopceky.Bits[6] := true;
    'GCW2K2' : flags_SKKopceky.Bits[7] := true;
    'GC1VNN8' : flags_SKKopceky.Bits[8] := true;
    'GC2W719' : flags_SKKopceky.Bits[9] := true;
    'GCYK95' : flags_SKKopceky.Bits[10] := true;
    'GC2926G' : flags_SKKopceky.Bits[11] := true;
    'GC301NJ' : flags_SKKopceky.Bits[12] := true;
    'GC26JZ3' : flags_SKKopceky.Bits[13] := true;
    'GCKZYW' : flags_SKKopceky.Bits[14] := true;
    'GC1B6A0' : flags_SKKopceky.Bits[15] := true;
    'GCYW3C' : flags_SKKopceky.Bits[16] := true;
    'GC259X5' : flags_SKKopceky.Bits[17] := true;
    'GC1J0F2' : flags_SKKopceky.Bits[18] := true;
    'GCYVPM' : flags_SKKopceky.Bits[19] := true;
    'GC1DPZD' : flags_SKKopceky.Bits[20] := true;
    'GC15W4H' : flags_SKKopceky.Bits[21] := true;
    'GC17635' : flags_SKKopceky.Bits[22] := true;
    'GC2VW0M' : flags_SKKopceky.Bits[23] := true;
    'GC1EA4R' : flags_SKKopceky.Bits[24] := true;
    'GCMGXB' : flags_SKKopceky.Bits[25] := true;
    'GCPE44' : flags_SKKopceky.Bits[26] := true;
    'GCK98W' : flags_SKKopceky.Bits[27] := true;
    'GC13GFT' : flags_SKKopceky.Bits[28] := true;
    'GC106QQ' : flags_SKKopceky.Bits[29] := true;
    'GC1YH9R' : flags_SKKopceky.Bits[30] := true;
    'GC194K3' : flags_SKKopceky.Bits[31] := true;
    'GC11VCH' : flags_SKKopceky.Bits[32] := true;
    'GC12J7E' : flags_SKKopceky.Bits[33] := true;
    'GCPKAX' : flags_SKKopceky.Bits[34] := true;
    'GCYDVT' : flags_SKKopceky.Bits[35] := true;
  end;
end;


procedure GenerateSKKopceky;
var
  names : TPuzzleItems;
begin
  names[1] := 'Gerlachovský štít (2654 m n. m.)';
  names[2] := 'Baníkov (2178 m n. m.)';
  names[3] := 'Bystrá (2248 m n. m.)';
  names[4] := 'Ïumbier (2043 m n. m.)';
  names[5] := 'Krá¾ova Ho¾a (1946 m n. m.)';
  names[6] := 'Ostredok (1592 m n. m.)';
  names[7] := 'Ve¾ký Choè (1611 m n. m.)';
  names[8] := 'Ve¾ký Kriváò (1708 m n. m.)';
  names[9] := 'Ve¾ká Lúka (1475 m n. m.)';
  names[10] := 'Strážov (1213 m n. m.)';
  names[11] := 'Inovec (1042 m n. m.)';
  names[12] := 'Zniev (985 m n. m.)';
  names[13] := 'Ve¾ký Tribeè (829 m n. m.)';
  names[14] := 'Záruby (768 m n. m.)';
  names[15] := 'Smrekovica (1200 m n. m.)';
  names[16] := 'Ondrejisko (1270 m n. m.)';
  names[17] := 'Klenovský Vepor (1338 m n. m.)';
  names[18] := 'Zlatý stôl (1322 m n. m.)';
  names[19] := 'Roháèka (1028 m n. m.)';
  names[20] := 'Vtáènik (1346 m n. m.)';
  names[21] := 'Ve¾ký Inovec (900 m n. m.)';
  names[22] := 'Sitno (1009 m n. m.)';
  names[23] := 'Flochová (1316 m n. m.)';
  names[24] := 'Hrb (1254 m n. m.)';
  names[25] := 'Burdov (387 m n. m.)';
  names[26] := 'Šimonka (1092 m n. m.)';
  names[27] := 'Ve¾ká Javorina (969 m n. m.)';
  names[28] := 'Ve¾ký Javorník (1071 m n. m.)';
  names[29] := 'Babia hora (1725 m n. m.)';
  names[30] := 'Ve¾ká Raèa (1236 m n. m.)';
  names[31] := 'Kubínska ho¾a (1346 m n. m.)';
  names[32] := 'Minèol (1157 m n. m.)';
  names[33] := 'Èiernohuzec (1216 m n. m.)';
  names[34] := 'Vihorlat (1076 m n. m.)';
  names[35] := 'Kremenec (1221 m n. m.)';

  GeneratePuzzle(flags_SKKopceky, names, GEOGET_SCRIPTDIR + OUT_SKKOPCEKY, 'kopecky-sk', backgroundGlobal);
end;


// ----------------------------------------------
// PUZZLE SK HRADY - START
procedure ProcessSKHrady(GC:TGeo);
begin
  case GC.ID of
    'GCGWZ4' : flags_SKHrady.Bits[1] := true;
    'GC14HW7' : flags_SKHrady.Bits[2] := true;
    'GCK9TP' : flags_SKHrady.Bits[3] := true;
    'GCQ2GA' : flags_SKHrady.Bits[4] := true;
    'GC18JPD' : flags_SKHrady.Bits[5] := true;
    'GCPZY8' : flags_SKHrady.Bits[6] := true;
    'GC171WH' : flags_SKHrady.Bits[7] := true;
    'GC1G6FK' : flags_SKHrady.Bits[8] := true;
    'GC14EZH' : flags_SKHrady.Bits[9] := true;
    'GC1BECR' : flags_SKHrady.Bits[10] := true;
    'GCY9Q7' : flags_SKHrady.Bits[11] := true;
    'GC1W3W7' : flags_SKHrady.Bits[12] := true;
    'GCKJBH' : flags_SKHrady.Bits[13] := true;
    'GC35E9X' : flags_SKHrady.Bits[14] := true;
    'GCKR6M' : flags_SKHrady.Bits[15] := true;
    'GC1VEB5' : flags_SKHrady.Bits[16] := true;
    'GCXVBV' : flags_SKHrady.Bits[17] := true;
    'GC18WGX' : flags_SKHrady.Bits[18] := true;
    'GC146C3' : flags_SKHrady.Bits[19] := true;
    'GC16TZA' : flags_SKHrady.Bits[20] := true;
    'GC146C3' : flags_SKHrady.Bits[21] := true;
    'GC1511Y' : flags_SKHrady.Bits[22] := true;
    'GCWATV' : flags_SKHrady.Bits[23] := true;
    'GCWJ0G' : flags_SKHrady.Bits[24] := true;
    'GCQTBV' : flags_SKHrady.Bits[25] := true;
    'GC12AX8' : flags_SKHrady.Bits[26] := true;
    'GCH07D' : flags_SKHrady.Bits[27] := true;
    'GC30PVD' : flags_SKHrady.Bits[28] := true;
    'GC15TNM' : flags_SKHrady.Bits[29] := true;
    'GCNB22' : flags_SKHrady.Bits[30] := true;
    'GC2TPRH' : flags_SKHrady.Bits[31] := true;
    'GCH3Y4' : flags_SKHrady.Bits[32] := true;
    'GC1Q2RX' : flags_SKHrady.Bits[33] := true;
    'GC33HFN' : flags_SKHrady.Bits[34] := true;
    'GC10JNE' : flags_SKHrady.Bits[35] := true;
  end;
end;


procedure GenerateSKHrady;
var
  names : TPuzzleItems;
begin
  names[1] := 'Bratislava';
  names[2] := 'Revište';
  names[3] := 'Èachtice';
  names[4] := 'Tematín';
  names[5] := 'Nitra';
  names[6] := 'Gýmeš';
  names[7] := 'Hrušov';
  names[8] := 'Devín';
  names[9] := 'Šášov';
  names[10] := 'Kremnica';
  names[11] := 'Levice';
  names[12] := 'Bojnice';
  names[13] := 'Beckov';
  names[14] := 'Trenèín';
  names[15] := 'Streèno';
  names[16] := 'Považský hrad';
  names[17] := 'Lietava';
  names[18] := 'Sitno';
  names[19] := 'Slanec';
  names[20] := 'Šomoška';
  names[21] := 'Stará ¼ubovòa';
  names[22] := 'Pustý hrad';
  names[23] := 'Zvolen';
  names[24] := 'Vinné';
  names[25] := 'Orava';
  names[26] := 'Likava';
  names[27] := 'Spišský hrad';
  names[28] := 'Krásna hôrka';
  names[29] := 'Fi¾akovo';
  names[30] := 'Turòa';
  names[31] := 'Šariš';
  names[32] := 'Kapušany';
  names[33] := 'Èabraï';
  names[34] := '¼upèa';
  names[35] := 'Brekov';

  GeneratePuzzle(flags_SKHrady, names, GEOGET_SCRIPTDIR + OUT_SKHRADY, 'hrady-sk', backgroundGlobal);
end;


// ----------------------------------------------
// PUZZLE SK KOSTOLIKY - START
procedure ProcessSKKostoliky(GC:TGeo);
begin
  case GC.ID of
    'GC18C5Q' : flags_SKKostoliky.Bits[1] := true;
    'GC1QJYH' : flags_SKKostoliky.Bits[2] := true;
    'GC14Q23' : flags_SKKostoliky.Bits[3] := true;
    'GC25VRW' : flags_SKKostoliky.Bits[4] := true;
    'GC2EWP7' : flags_SKKostoliky.Bits[5] := true;
    'GC134Q2' : flags_SKKostoliky.Bits[6] := true;
    'GC2VANE' : flags_SKKostoliky.Bits[7] := true;
    'GC284Z3' : flags_SKKostoliky.Bits[8] := true;
    'GC1R6Q2' : flags_SKKostoliky.Bits[9] := true;
    'GC2B36Y' : flags_SKKostoliky.Bits[10] := true;
    'GC1R6PV' : flags_SKKostoliky.Bits[11] := true;
    'GC2B311' : flags_SKKostoliky.Bits[12] := true;
    'GC1TCD0' : flags_SKKostoliky.Bits[13] := true;
    'GCTV3N' : flags_SKKostoliky.Bits[14] := true;
    'GCP0DB' : flags_SKKostoliky.Bits[15] := true;
    'GC1R6RV' : flags_SKKostoliky.Bits[16] := true;
    'GC1XXQR' : flags_SKKostoliky.Bits[17] := true;
    'GC2631G' : flags_SKKostoliky.Bits[18] := true;
    'GCTY1V' : flags_SKKostoliky.Bits[19] := true;
    'GC2B326' : flags_SKKostoliky.Bits[20] := true;
    'GC2VAKH' : flags_SKKostoliky.Bits[21] := true;
    'GC2VAJQ' : flags_SKKostoliky.Bits[22] := true;
    'GC2622Z' : flags_SKKostoliky.Bits[23] := true;
    'GC30Y77' : flags_SKKostoliky.Bits[24] := true;
    'GC1R6QJ' : flags_SKKostoliky.Bits[25] := true;
    'GC1R6P6' : flags_SKKostoliky.Bits[26] := true;
    'GCR5BV' : flags_SKKostoliky.Bits[27] := true;
    'GC17CYM' : flags_SKKostoliky.Bits[28] := true;
    'GC1R6QA' : flags_SKKostoliky.Bits[29] := true;
    'GC2VAM1' : flags_SKKostoliky.Bits[30] := true;
    'GC1QYRJ' : flags_SKKostoliky.Bits[31] := true;
    'GC2X57X' : flags_SKKostoliky.Bits[32] := true;
    'GC2VANW' : flags_SKKostoliky.Bits[33] := true;
    'GC1QMZ2' : flags_SKKostoliky.Bits[34] := true;
    'GC2YZBK' : flags_SKKostoliky.Bits[35] := true;
  end;
end;


procedure GenerateSKKostoliky;
var
  names : TPuzzleItems;
begin
  names[1] := 'Všetkých svätých';
  names[2] := 'sv. Františka z Assisi';
  names[3] := 'sv. Mikuláša';
  names[4] := 'Drevený artikulárny kostol (Leštiny)';
  names[5] := 'Drevený artikulárny kostol (Kežmarok)';
  names[6] := 'Drevený artikulárny kostol (Hronsek)';
  names[7] := 'Prenesenia ostatkov sv. Mikulasa';
  names[8] := 'sv. Štefana Krá¾a';
  names[9] := 'archanjela Michala';
  names[10] := 'sv. archanjela Michala';
  names[11] := 'Svätej Paraskievy';
  names[12] := 'sv. archanjela Michala';
  names[13] := 'Svätých Kozmu a Damiána';
  names[14] := 'sv. Lukáša Evanjelistu';
  names[15] := 'sv. Mikuláša + Ochrany Presvätej Bohorodièky';
  names[16] := 'sv. Bazila Ve¾kého';
  names[17] := 'sv. Juraja';
  names[18] := 'Drevený artikulárny kostol (Istebné)';
  names[19] := 'sv. Lukáša';
  names[20] := 'sv. archanjela Michala';
  names[21] := 'Nanebovsupenia pána';
  names[22] := 'sv. Jána Krstite¾a';
  names[23] := 'Stretnutia Pána so Simeonom';
  names[24] := 'sv. Paraskievu';
  names[25] := 'Ochrany Presvätej Bohorodièky';
  names[26] := 'Ochrany Presvätej Bohorodièky';
  names[27] := 'Drevený artikulárny kostol (Svätý Kríž-Lazisko)';
  names[28] := 'sv. archanjela Michala';
  names[29] := 'Ochrany Presvätej Bohorodièky';
  names[30] := 'sv. Bazila Ve¾kého';
  names[31] := 'sv. Paraskievy';
  names[32] := 'sv. Lukáša';
  names[33] := 'sv. archanjela Michala';
  names[34] := 'Ochrany Presvätej Bohorodièky';
  names[35] := 'sv. biskupa Mikuláša';

  GeneratePuzzle(flags_SKKostoliky, names, GEOGET_SCRIPTDIR + OUT_SKKOSTOLIKY, 'kostely-sk', backgroundGlobal);
end;