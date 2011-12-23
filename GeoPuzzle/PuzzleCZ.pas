{
Autor: osnica / Rado
http://tiny.cc/osnica

GeoPuzzle, http://geotrophy.net

Tento subor obsahuje data Puzzle pre CR:
- Ceske Kopecky
- Ceske Hrady
- Ceske Kosteliky
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
  names[1] := 'Lys� hora (1323 m n. m.) - Moravskoslezsk� Beskydy';
  names[2] := 'Brdo (586 m n. m.) - Ch�iby';
  names[3] := 'Lesn� (982 m n. m.) - Slavkovsk� les';
  names[4] := '��p (459 m n. m.) - Dolnooharsk� tabule ';
  names[5] := 'D�v�n (549 m n. m.) - Mikulovsk� vrchovina  ';
  names[6] := 'T�em��n (827 m n. m.) - Brdsk� vrchovina';
  names[7] := 'Velk� De�tn� (1115 m n. m.) - Orlick� hory ';
  names[8] := 'Javo�ice (837 m n. m.) - Javo�ick� vrchovina';
  names[9] := 'Lib�n (1093 m n. m.) - �umavsk� podh���';
  names[10] := 'Drkoln� (729 m n. m.) - Blatensk� pahorkatina ';
  names[11] := 'Kl�novec (1244 m n. m.) - Kru�n� hory';
  names[12] := 'Rade� (721 m n. m.) - K�ivokl�tsk� vrchovina ';
  names[13] := 'Sn�ka (1602 m n. m.) - Krkono�e';
  names[14] := 'Prad�d (1492 m n. m.) - Hrub� Jesen�k';
  names[15] := '�erchov (1042 m n. m.) - �esk� les';
  names[16] := 'Mile�ovka (837 m n. m.) - �esk� st�edoho��';
  names[17] := 'V�hon (356 m n. m.) - Dyjsko-svrateck� �val';
  names[18] := 'Kor�b (773 m n. m.) - �vihovsk� pahorkatina';
  names[19] := 'Skalky (735 m n. m.) - Drahansk� vrchovina ';
  names[20] := 'Velky Javornik (1071 m n. m.) - Javorn�ky';
  names[21] := 'Skalka (964 m n. m.) - Podbeskydsk� pahorkatina';
  names[22] := 'Velk� Javo�ina (970 m n. m.) - B�l� Karpaty';
  names[23] := 'Ralsko (696 m n. m.) - Ralsk� pahorkatina';
  names[24] := 'Kr�loveck� �pi��k  (880 m n. m.) - Broumovsk� vrchovina';
  names[25] := 'Plech� (1378 m n. m.) - �umava';
  names[26] := 'Slune�n� (800 m n. m.) - N�zk� Jesen�k';
  names[27] := 'Smrk (1024 m n. m.) - Jizersk� hory';
  names[28] := 'Dev�t skal (836 m n. m.) - Hornosvrateck� vrchovina';
  names[29] := 'D���nsk� Sn�n�k (723 m n. m.) - D���nsk� vrchovina';
  names[30] := 'Kamenec (1072 m n. m.) - Novohradsk� hory';
  names[31] := 'Je�t�d (1012 m n. m.) - Je�t�dsko-koz�kovsk� h�bet';
  names[32] := 'Kr�lick� Sn�n�k  (1424 m n. m.) - Kr�lick� Sn�n�k';
  names[33] := 'Lu� (793 m n. m.) - Lu�ick� hory';
  names[34] := 'Kun�tick� hora (307 m n. m.) - V�chodolabsk� tabule';
  names[35] := 'Velk� �antoryje (995 m n. m.) - Slezsk� Beskydy';

  GeneratePuzzle(flags_CZKopecky, names, GEOGET_SCRIPTDIR + OUT_CZKOPECKY, 'kopecky-cz', backgroundGlobal);
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
    'GCK7JR' : flags_CZHrady.Bits[14] := true;
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
    'GCJFRR' : flags_CZHrady.Bits[24] := true;
    'GC1P6MV' : flags_CZHrady.Bits[25] := true;
    'GCVHT3' : flags_CZHrady.Bits[26] := true;
    'GC13JDQ' : flags_CZHrady.Bits[27] := true;
    'GCG747' : flags_CZHrady.Bits[27] := true;
    'GC1QTK9' : flags_CZHrady.Bits[28] := true;
    'GCQ8FH' : flags_CZHrady.Bits[29] := true;
    'GCV8QF' : flags_CZHrady.Bits[30] := true;
    'GC1H8ZN' : flags_CZHrady.Bits[31] := true;
    'GCJXRG' : flags_CZHrady.Bits[31] := true;
    'GC1AA8Y' : flags_CZHrady.Bits[32] := true;
    'GC1128T' : flags_CZHrady.Bits[33] := true;
    'GC2A4NA' : flags_CZHrady.Bits[34] := true;
    'GC10EB7' : flags_CZHrady.Bits[34] := true;
    'GCKPKN' : flags_CZHrady.Bits[35] := true;
  end;
end;


procedure GenerateCZHrady;
var
  names : TPuzzleItems;
begin
  names[1] := 'Bezd�z';
  names[2] := 'Bouzov';
  names[3] := 'Ka�perk';
  names[4] := 'Budyn� nad Oh��';
  names[5] := 'Buchlov';
  names[6] := '�esk� �ternberk';
  names[7] := 'Grab�tejn';
  names[8] := 'Fr�dlant';
  names[9] := 'Helf�t�n';
  names[10] := 'Karl�tejn';
  names[11] := 'B�tov';
  names[12] := 'Koko��n';
  names[13] := 'Zv�kov';
  names[14] := 'K�ivokl�t';
  names[15] := 'Kost';
  names[16] := 'Lede� nad S�zavou';
  names[17] := 'Pra�sk� hrad';
  names[18] := 'Litice nad Orlic�';
  names[19] := 'Loket';
  names[20] := 'Nov� Hrady';
  names[21] := 'Pecka';
  names[22] := 'Kun�tick� hora';
  names[23] := 'Pern�tejn';
  names[24] := 'Ro�tejn';
  names[25] := 'Ro�mberk';
  names[26] := 'Sovinec';
  names[27] := '�pilberk';
  names[28] := '�ternberk';
  names[29] := '�vihov';
  names[30] := 'St�ekov';
  names[31] := 'Svojanov';
  names[32] := 'Veve��';
  names[33] := 'Vald�tejn';
  names[34] := 'Velhartice';
  names[35] := 'To�n�k';

  GeneratePuzzle(flags_CZHrady, names, GEOGET_SCRIPTDIR + OUT_CZHRADY, 'hrady-cz', backgroundGlobal);
end;


// ----------------------------------------------
// PUZZLE CZ KOSTELIKY - START
procedure ProcessCZKosteliky(GC:TGeo);
begin
  case GC.ID of
    'GC1QEKR' : flags_CZKosteliky.Bits[1] := true;
    'GC1N2XB' : flags_CZKosteliky.Bits[2] := true;
    'GCWPJK' : flags_CZKosteliky.Bits[3] := true;
    'GC131Z3' : flags_CZKosteliky.Bits[4] := true;
    'GC123D1' : flags_CZKosteliky.Bits[5] := true;
    'GC1DKRX' : flags_CZKosteliky.Bits[6] := true;
    'GC21A43' : flags_CZKosteliky.Bits[7] := true;
    'GC18HJV' : flags_CZKosteliky.Bits[8] := true;
    'GCVPR1' : flags_CZKosteliky.Bits[9] := true;
    'GC1G6A8' : flags_CZKosteliky.Bits[10] := true;
    'GC184H3' : flags_CZKosteliky.Bits[11] := true;
    'GC1DT2W' : flags_CZKosteliky.Bits[12] := true;
    'GCXPVX' : flags_CZKosteliky.Bits[13] := true;
    'GC1D3ZH' : flags_CZKosteliky.Bits[14] := true;
    'GC1576M' : flags_CZKosteliky.Bits[15] := true;
    'GC15CH3' : flags_CZKosteliky.Bits[16] := true;
    'GC34PZG' : flags_CZKosteliky.Bits[17] := true;
    'GC1AGCA' : flags_CZKosteliky.Bits[18] := true;
    'GC10034' : flags_CZKosteliky.Bits[19] := true;
    'GCZ1TW' : flags_CZKosteliky.Bits[20] := true;
    'GC129AJ' : flags_CZKosteliky.Bits[21] := true;
    // TODO tento kostolik este nema kes
    'GC1T1EH' : flags_CZKosteliky.Bits[23] := true;
    'GC2D81Y' : flags_CZKosteliky.Bits[24] := true;
    'GC1F9EQ' : flags_CZKosteliky.Bits[25] := true;
    'GC13K7C' : flags_CZKosteliky.Bits[26] := true;
    // TODO tento kostolik este nema kes
    'GCKD3N' : flags_CZKosteliky.Bits[28] := true;
    'GC26BME' : flags_CZKosteliky.Bits[29] := true;
    'GC102HP' : flags_CZKosteliky.Bits[30] := true;
    'GC30JF0' : flags_CZKosteliky.Bits[31] := true;
    'GCW7X7' : flags_CZKosteliky.Bits[31] := true;
    'GC1F7JC' : flags_CZKosteliky.Bits[32] := true;
    'GC1ANGZ' : flags_CZKosteliky.Bits[33] := true;
    'GC19NWD' : flags_CZKosteliky.Bits[34] := true;
    'GC2ARDK' : flags_CZKosteliky.Bits[35] := true;
    'GCVBWE' : flags_CZKosteliky.Bits[35] := true;
  end;
end;


procedure GenerateCZKosteliky;
var
  names : TPuzzleItems;
begin
  names[1] := 'kostel svat�ho Petra a Pavla - Albrechtice';
  names[2] := 'kostel�svat�ho Bed�icha - B�l�';
  names[3] := 'kostel�C�rkve �eskoslovensk� husitsk� Blansko - Blansko';
  names[4] := 'kostel svat�ho Petra a Pavla - Liberk';
  names[5] := 'kostel C�rkve �eskoslovensk� husitsk� Dob��kov - Dob��kov';
  names[6] := 'kostel Panny Marie - Gru� ';
  names[7] := 'kostel svat�ho Petra a Pavla - Hn�vo�ice';
  names[8] := 'kostel svat�ho Ond�eje - Hodslavice';
  names[9] := 'kostel svat� Kate�iny - Ostrava';
  names[10] := 'kostel svat�ho V�clava - Kozojedy';
  names[11] := 'kostel svat�ho Kry�tofa - Kry�tofovo �dol�';
  names[12] := 'kostel svat�ho Prokopa a svat� Barbory - Kun�ice pod Ond�ejn�kem';
  names[13] := 'kostel Panny Marie - Broumov';
  names[14] := 'kostel�svat�ho Jana K�titele - Lipn�';
  names[15] := 'kostel�archand�la Michaela - Mar��kov';
  names[16] := 'kostel svat�ho Ji�� - Lou�n� Hora ';
  names[17] := 'kostel svat�ho Mikul�e Divotvorce - Hradec Kr�lov�';
  names[18] := 'kostel svat�ho V�clava a Stanislava - M�n�k';
  names[19] := 'kostel�svat�ho Mikul�e - Veliny';
  names[20] := 'kostel�svat�ho Michala - Praha 5 - Mal� Strana';
  names[21] := 'kostel�svat� Anny - Ro�nov pod Radho�t�m';
  names[22] := 'kostel Nalezen� svat�ho K��e - Ryb�';
  names[23] := 'kostel�svat�ho Michaela Archand�la - �epi�t�';
  names[24] := 'kostel V�ech svat�ch - Sedli�t�';
  names[25] := 'kostel svat�ho Jana K�titele - Slavo�ov';
  names[26] := 'kostel�Nejsv�t�j�� Trojice - Vala�sk� Mezi����';
  names[27] := 'kostel�svat� Kate�iny - Tamovice ';
  names[28] := 'kaple�svat�ho Cyrila a Metod�je - Radho�� ';
  names[29] := 'kostel svat� Mark�ty - Vyso�any';
  names[30] := 'kostel�Panny Marie Sn�n� - Velk� Karlovice';
  names[31] := 'kostel svat�ho Martina - ��rov�';
  names[32] := 'kaple svat�ho Jana Nepomuck�ho - Klep��ov ';
  names[33] := 'kostel svat�ho Jana K�titele - Hradec Kr�lov�';
  names[34] := 'kostel Pov��en� svat�ho K��e� - Byst�ice nad Ol�� ';
  names[35] := 'kostel Bo��ho T�la� - Guty';

  GeneratePuzzle(flags_CZKosteliky, names, GEOGET_SCRIPTDIR + OUT_CZKOSTELIKY, 'kostely-cz', backgroundGlobal);
end;


// ----------------------------------------------
// PUZZLE CZ REKORDY - START
procedure ProcessCZRekordy(GC:TGeo);
begin
  case GC.ID of
    'GC1H84F' : flags_CZRekordy.Bits[1] := true;
    'GCQ5W1' : flags_CZRekordy.Bits[1] := true;
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
    'GCTH3V' : flags_CZRekordy.Bits[19] := true;
    'GCP6MG' : flags_CZRekordy.Bits[20] := true;
    'GC1GC4H' : flags_CZRekordy.Bits[21] := true;
    'GC1R3WR' : flags_CZRekordy.Bits[22] := true;
    'GCYCYX' : flags_CZRekordy.Bits[23] := true;
    'GCQD45' : flags_CZRekordy.Bits[23] := true;
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
  names[1] := 'B�evnovsk� kl�ter - Nejstar�� kl�ter';
  names[2] := 'B�ezensk� tunel - Nejdel�� �elezni�n� tunel';
  names[3] := '�ern� jezero - Nejhlub�� a nejv�t�� �esk� jezero';
  names[4] := 'City Tower - Nejvy��� budova';
  names[5] := 'D�dek - Nejmohutn�j�� balvan';
  names[6] := 'Elektrarna Chvaletice  - Nejvy��� kom�n ';
  names[7] := 'kabinov� lanovka �ern� Hora - Nejstar�� kabinov� lanovka';
  names[8] := 'Hranick� propast - Nejhlub�� propast';
  names[9] := 'Kamenn� most v P�sku - Nejstar�� zachovan� most';
  names[10] := 'kostel Svat�ho Bartolom�je - Nejvy��� kosteln� v�';
  names[11] := 'Kuncick� bludn� balvan - Nejv�t�� bludn� balvan';
  names[12] := 'Mumlavsk� vodop�d - Nejmohutn�j�� vodop�d';
  names[13] := 'Negrelliho viadukt - Nejdel�� �elezni�n� most';
  names[14] := 'Chalupsk� jez�rko - Nejv�t�� ra�elinn� jez�rko';
  names[15] := 'Nov� Louka - Nejvy��� sr�ky za 24 hodin';
  names[16] := '�pa - Nejv��e pramen�c� �eka';
  names[17] := 'Pan�avsk� vodop�d - Nejvy��� vodop�d';
  names[18] := 'Prav�ick� br�na - Nejv�t�� skaln� br�na';
  names[19] := 'Strahovsk� stadion - Nejv�t�� sportovn� stadion';
  names[20] := 'P�ehrada Orl�k - Nejv�t�� p�ehradn� n�dr� a nejvy��� betonov� p�ehradn� hr�z';
  names[21] := 'Karlovo n�m�st� - Nejv�t��ch n�m�st�';
  names[22] := 'p�ehradn� hr�z Nechranice - Nejdel�� sypan� p�ehradn� hr�z';
  names[23] := '�i�kovsk� vys�la� - Nejv��e um�st�n� vyhl�dkov� plo�ina rozhledny';
  names[24] := 'Ro�mberk - Plochou nejv�t�� rybn�k';
  names[25] := 'Sekvojovec obrovsk� - Mo�n� nejvy��� strom v �R';
  names[26] := 'Sta�kovsk� rybn�k - Nejobjemn�j�� rybn�k';
  names[27] := 'sto��ry rozhlasov�ho vys�la�e Praha - Liblice - Nejvy��� stavba';
  names[28] := 'Pra�sk� hrad - Nejv�t�� hrad';
  names[29] := 'Vejvodova l�pa - Strom s nejv�t��m obvodem';
  names[30] := 'velkolom B�lina - Um�l� bod na povrchu zem� s nejmen�� nadmo�skou v��kou';
  names[31] := '���kovsk� most - Nejvy��� most';
  names[32] := 'Rotunda sv. Petra a Pavla - Nejstar�� dosud stoj�c� stavba';
  names[33] := '�of�nsk� prales - Nejstar�� p��rodn� rezervace';
  names[34] := 'p�ehradn� hr�z Dale�ice - Nejvy��� p�ehradn� hr�z';
  names[35] := 'Macocha - Nejmohutn�j�� propast';

  GeneratePuzzle(flags_CZRekordy, names, GEOGET_SCRIPTDIR + OUT_CZREKORDY, 'rekordy-cz', backgroundGlobal);
end;