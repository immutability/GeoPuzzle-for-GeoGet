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
    'GC259X5' : flags_SKKopceky.Bits[16] := true;
    'GCYW3C' : flags_SKKopceky.Bits[17] := true;
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
    'GC1YH9R' : flags_SKKopceky.Bits[29] := true;
    'GC106QQ' : flags_SKKopceky.Bits[30] := true;
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
  names[1] := 'Gerlachovsk� �t�t (2654 m n. m.) - Vysok� Tatry';
  names[2] := 'Ban�kov (2178 m n. m.) - Z�padn� Tatry - Roh��e';
  names[3] := 'Bystr� (2248 m n. m.) - Z�padn� (Liptovsk�) Tatry';
  names[4] := '�umbier (2043 m n. m.) - �umbierske Tatry';
  names[5] := 'Kr�ova Ho�a (1946 m n. m.) - Kr�ovoho�sk� Tatry';
  names[6] := 'Ostredok (1592 m n. m.) - Ve�k� Fatra';
  names[7] := 'Ve�k� Cho� (1611 m n. m.) - Cho�sk� vrchy';
  names[8] := 'Ve�k� Kriv�� (1708 m n. m.) - Kriv�nska Mal� Fatra';
  names[9] := 'Ve�k� L�ka (1475 m n. m.) - L��ansk� Mal� Fatra';
  names[10] := 'Str�ov (1213 m n. m.) - Str�ovsk� vrchy';
  names[11] := 'Inovec (1042 m n. m.) - Pova�sk� Inovec';
  names[12] := 'Zniev (985 m n. m.) - �iar';
  names[13] := 'Ve�k� Tribe� (829 m n. m.) - Tribe�';
  names[14] := 'Z�ruby (768 m n. m.) - Mal� Karpaty';
  names[15] := 'Smrekovica (1200 m n. m.) - Branisko';
  names[16] := 'Ondrejisko (1270 m n. m.) - Spi�sko-gemersk� kras';
  names[17] := 'Klenovsk� Vepor (1338 m n. m.) - Veporsk� vrchy';
  names[18] := 'Zlat� st�l (1322 m n. m.) - Volovsk� vrchy';
  names[19] := 'Roh��ka (1028 m n. m.) - �ierna hora';
  names[20] := 'Vt��nik (1346 m n. m.) - Vt��nik';
  names[21] := 'Ve�k� Inovec (900 m n. m.) - Pohronsk� Inovec';
  names[22] := 'Sitno (1009 m n. m.) - �tiavnick� vrchy';
  names[23] := 'Flochov� (1316 m n. m.) - Kremnick� vrchy';
  names[24] := 'Hrb (1254 m n. m.) - Po�ana';
  names[25] := 'Burdov (387 m n. m.) - Burda';
  names[26] := '�imonka (1092 m n. m.) - Slansk� vrchy';
  names[27] := 'Ve�k� Javorina (969 m n. m.) - Biele Karpaty';
  names[28] := 'Ve�k� Javorn�k (1071 m n. m.) - Javorn�ky';
  names[29] := 'Babia hora (1725 m n. m.) - Oravsk� Beskydy';
  names[30] := 'Ve�k� Ra�a (1236 m n. m.) - Kysuck� Beskydy';
  names[31] := 'Kub�nska ho�a (1346 m n. m.) - Oravsk� Magura';
  names[32] := 'Min�ol (1157 m n. m.) - �ergov';
  names[33] := '�iernohuzec (1216 m n. m.) - Levo�sk� vrchy';
  names[34] := 'Vihorlat (1076 m n. m.) - Vihorlat';
  names[35] := 'Kremenec (1221 m n. m.) - Bukovsk� vrchy';

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
    'GCR3HR' : flags_SKHrady.Bits[19] := true;
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
  names[2] := 'Revi�te';
  names[3] := '�achtice';
  names[4] := 'Temat�n';
  names[5] := 'Nitra';
  names[6] := 'G�me�';
  names[7] := 'Hru�ov';
  names[8] := 'Dev�n';
  names[9] := '��ov';
  names[10] := 'Kremnica';
  names[11] := 'Levice';
  names[12] := 'Bojnice';
  names[13] := 'Beckov';
  names[14] := 'Tren��n';
  names[15] := 'Stre�no';
  names[16] := 'Pova�sk� hrad';
  names[17] := 'Lietava';
  names[18] := 'Sitno';
  names[19] := 'Slanec';
  names[20] := '�omo�ka';
  names[21] := 'Star� �ubov�a';
  names[22] := 'Pust� hrad';
  names[23] := 'Zvolen';
  names[24] := 'Vinn�';
  names[25] := 'Orava';
  names[26] := 'Likava';
  names[27] := 'Spi�sk� hrad';
  names[28] := 'Kr�sna h�rka';
  names[29] := 'Fi�akovo';
  names[30] := 'Tur�a';
  names[31] := '�ari�';
  names[32] := 'Kapu�any';
  names[33] := '�abra�';
  names[34] := '�up�a';
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
  names[1] := 'V�etk�ch sv�t�ch - Tvrdo��n';
  names[2] := 'sv. Franti�ka z Assisi - Hervartov';
  names[3] := 'sv. Mikul�a - Bodru�al';
  names[4] := 'Dreven� artikul�rny kostol (Le�tiny) - Le�tiny';
  names[5] := 'Dreven� artikul�rny kostol (Ke�marok) - Ke�marok';
  names[6] := 'Dreven� artikul�rny kostol (Hronsek) - Hronsek';
  names[7] := 'Prenesenia ostatkov sv. Mikulasa - Rusk� Bystr�';
  names[8] := 'sv. �tefana Kr�a - Martin (p�vodne umiestnen� v Rudne)';
  names[9] := 'archanjela Michala - Ladom�rov�';
  names[10] := 'sv. archanjela Michala - Topo�a';
  names[11] := 'Sv�tej Paraskievy - Dobroslava';
  names[12] := 'sv. archanjela Michala - Uli�sk� Kriv�';
  names[13] := 'Sv�t�ch Kozmu a Dami�na - Lukov-Ven�cia';
  names[14] := 'sv. Luk�a Evanjelistu - Bre�any';
  names[15] := 'sv. Mikul�a + Ochrany Presv�tej Bohorodi�ky - Bardejovsk� K�pele (p�vodne umiestnen� v Zboji a Mikul�ovej)';
  names[16] := 'sv. Bazila Ve�k�ho - Krajn� �ierno';
  names[17] := 'sv. Juraja - Jalov�';
  names[18] := 'Dreven� artikul�rny kostol (Istebn�) - Istebn�';
  names[19] := 'sv. Luk�a - Tro�any';
  names[20] := 'sv. archanjela Michala - Rusk� Potok';
  names[21] := 'Nanebovsupenia p�na - �migovec';
  names[22] := 'sv. J�na Krstite�a - Kaln� Roztoka';
  names[23] := 'Stretnutia P�na so Simeonom - Ko�any';
  names[24] := 'sv. Paraskievu - Svidn�k (p�vodne umiestnen� v Novej Polianke)';
  names[25] := 'Ochrany Presv�tej Bohorodi�ky - Korejovce';
  names[26] := 'Ochrany Presv�tej Bohorodi�ky - Jedlinka';
  names[27] := 'Dreven� artikul�rny kostol (Sv�t� Kr�-Lazisko) - Sv�t� Kr�';
  names[28] := 'sv. archanjela Michala - Humenn� (p�vodne umiestnen� v Novej Sedlici)';
  names[29] := 'Ochrany Presv�tej Bohorodi�ky - Hunkovce';
  names[30] := 'sv. Bazila Ve�k�ho - Hrabov� Roztoka';
  names[31] := 'sv. Paraskievy - Vy�n� Polianka';
  names[32] := 'sv. Luk�a - Kriv�';
  names[33] := 'sv. archanjela Michala - Inovce';
  names[34] := 'Ochrany Presv�tej Bohorodi�ky - Varadka';
  names[35] := 'sv. biskupa Mikul�a - Habura';

  GeneratePuzzle(flags_SKKostoliky, names, GEOGET_SCRIPTDIR + OUT_SKKOSTOLIKY, 'kostely-sk', backgroundGlobal);
end;