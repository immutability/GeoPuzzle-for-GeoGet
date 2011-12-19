{
Autor: osnica / Rado
http://tiny.cc/osnica

GeoPuzzle, http://geotrophy.net

Verzia: 1.0.2 / 2011-12-18
}

{$I GeoPuzzle.config.pas}

// verziu needitovat rucne! je automaticky aktualizovana cez ant
const VERSION = '1.0.2';

// nazvy generovanych HTML suborov s jednotlivymi puzzle
const OUT_SKKOPCEKY = '\GeoPuzzle\GeoPuzzle_SKKopceky.html';
const OUT_SKHRADY = '\GeoPuzzle\GeoPuzzle_SKHrady.html';
const OUT_SKKOSTOLIKY = '\GeoPuzzle\GeoPuzzle_SKKostoliky.html';
const OUT_CZKOPECKY = '\GeoPuzzle\GeoPuzzle_CZKopecky.html';
const OUT_CZHRADY = '\GeoPuzzle\GeoPuzzle_CZHrady.html';
const OUT_CZKOSTELIKY = '\GeoPuzzle\GeoPuzzle_CZKosteliky.html';
const OUT_CZREKORDY = '\GeoPuzzle\GeoPuzzle_CZRekordy.html';

type
  TPuzzleItems = Array[1..35] of String;

var
  cnt : integer;
  backgroundGlobal : String; // hlavne pozadie, podla konfiguracie
  useUtfOutput : boolean; // false = ANSI / Windows-1250, true = UTF-8
  flags_SKKopceky : TBits;
  flags_SKHrady : TBits;
  flags_SKKostoliky : TBits;
  flags_CZKopecky : TBits;
  flags_CZHrady : TBits;
  flags_CZKosteliky : TBits;
  flags_CZRekordy : TBits;


function PluginCaption: String;
begin
  Result := 'GeoPuzzle';
end;


function PluginHint: String;
begin
  Result := 'GeoPuzzle ' + VERSION;
end;


function PluginIcon: String;
begin
  Result := DecodeBase64('Qk02AwAAAAAAADYAAAAoAAAAEAAAABAAAAABABgAAAAAAAADAADCHgAAwh4AAAAAAAAAAAAA////////////////////oH5KoH5K////////////oH5KoH5KoH5KoH5K////////////////////////oX9O48CI16ddp5R3////p5R316dd48CI48CI48CIrIZM////////////////////sYpR4Ll9l3hI////////////l3hI37h837h837h8uo9P////////wpxkwpxk////vJFT3bJwlndI////////////lHZH269r269r269rw5VQ////yaJq3rZ32apiwZVUyZZL16ddz5dDmHhGinFJl3dGzZVA16dd16db16dbxpZR////xZdV3rZ22qxl3rV0265o0p1K055M1KBR1KBR1KBR0pxKv5JQv5JQ0ZpHyZlR////0Kdr4b2C3LBsyZpV1KFV1aJTzpU9zpQ7zpQ70ZpGwZNO////////y6x9////////////0qdn0qdn////zZ1W37d52Khf1KBPz5ZB0pxKuZBS////////////////////////////////////0qFX4Lp92q1n2q1n2q1n3rV0xpZQ////////y6x9////////////////////////1KNa4r6F3LJv3LJv3LJv3bRy3LBuxJVQxJVQ269s1KNa////////////////////1qVe6Mqa5MON5MKM48GK4byA3rZ34r6E5cWS5cSP1qVe////////////////////////16hh16hh16hh16hh27Bt48GK2axl16hh16hh////////////////////////////////////////////2apl6Muc2apl////////////////////////////////////////////////3bR35caT5saU5caT3bR3////////////////////////////////////////////3rV57NWv69Gn7NSt3rV5////////////////////////////////////////////////4Ll/269t4Ll/////////////////');
end;


function PluginFlags: String;
begin
  Result := 'global,notrans';
end;


// vypocet X-offset v pixloch na zaklade indexu obrazku, pre maticu 9 x 4 o dlzke strany 72px
function CalculateXOffset(index:integer): String;
begin
  Result := IntToStr(72*((index - 1) mod 9)) + 'px';
end;


// vypocet Y-offset v pixloch na zaklade indexu obrazku, pre maticu 9 x 4 o dlzke strany 72px
function CalculateYOffset(index:integer): String;
begin
  Result := IntToStr(72*((index - 1) div 9)) + 'px';
end;


// inicializacia bitovych poli na 35 poloziek
function InitFlagBits:TBits;
var
  i : integer;
begin
  Result := TBits.Create;

  // z nejakeho dovodu mi nefungovalo inicializovanie cez flags.Size property
  for i := 1 to 35 do
    Result.Bits[i] := false;
end;


// vrati nazov polozky so spravnym kodovanim
function GetEncodedString(input:String):String;
begin
  if useUtfOutput then begin
    Result := AnsiToUtf(input);
  end
  else
    Result := input;
end;


// generovanie HTML kodu pre konkretny puzzle
procedure GeneratePuzzle(flags:TBits; names:TPuzzleItems; output:String; urlDirName:String; backgroundString:String);
var
  htmlout : String;
  i : integer;
  foundGC : integer;
begin
  htmlout := '<div style="width: 688px; height: 324px; background: transparent url(http://www.geotrophy.net/content/' + urlDirName + '/background' + backgroundString + '.png) no-repeat 0 0; margin: 10px auto;" >';
  foundGC := 0;
  
  for i := 1 to 35 do
    if flags.Bits[i] = true then begin
      Inc(foundGC);
      htmlout := htmlout + '<div style="background: transparent url(http://www.geotrophy.net/content/' + urlDirName + '/' + IntToStr(i) + '.png) no-repeat ' + CalculateXOffset(i) + ' ' + CalculateYOffset(i) + ' ">';
    end;

  htmlout := htmlout + '<div style="width: 669px; height: 305px; padding: 19px 0 0 19px;">';

  //
  for i := 1 to 35 do
    htmlout := htmlout + '<div style="float:left; overflow: hidden; width:72px; height: 72px; cursor: help;" title="' + GetEncodedString(names[i]) + '">&nbsp;</div>';

  htmlout := htmlout + '</div>';
  for i := 1 to foundGC do
    htmlout := htmlout + '</div>';
  htmlout := htmlout + '</div>';
  
  if FileExists(output) then begin
    if DeleteFile(output) then
      StringToFile(htmlout, output);
  end
  else
    StringToFile(htmlout, output);
end;


// includovanie datovych poli pre jednotlive SK/CZ puzzle
{$I PuzzleSK.pas}
{$I PuzzleCZ.pas}


procedure PluginStart;
var
  backgroundIndex : integer;
begin
  // inicializacia bitovych poli
  flags_SKKopceky := InitFlagBits();
  flags_SKHrady := InitFlagBits();
  flags_SKKostoliky := InitFlagBits();
  flags_CZKopecky := InitFlagBits();
  flags_CZHrady := InitFlagBits();
  flags_CZKosteliky := InitFlagBits();
  flags_CZRekordy := InitFlagBits();

  // reset pocitadla
  cnt := 0;

  // kontrola nastavenia pozadia, pouzi "2" ako default
  try
    backgroundIndex := StrToInt(BACKGROUND);
  except
    backgroundIndex := 2;
  end;

  if (backgroundIndex < 1) or (backgroundIndex > 9) then 
    backgroundIndex := 2;
    
  // nastav pozadie (od verze 2.0 podporovane iba 2, 4, 6, 8 a 9)
  if (backgroundIndex = 1) or (backgroundIndex = 3) or (backgroundIndex = 5) or (backgroundIndex = 7) then
    Inc(backgroundIndex);

  backgroundGlobal := IntToStr(backgroundIndex);

  // kontrola nastavenia vystupneho kodovania
  if UTF_OUTPUT = '1' then begin
    useUtfOutput := true;
  end
  else
    useUtfOutput := false;

  // Busy Dialog
  GeoBusyStart;
  GeoBusyCaption(PluginHint());
  GeoBusyProgress(0, geoget_maxcount);
  GeoBusyKind('Zpracování puzzle - naèítání keší...');
end;


procedure PluginWork;
begin
  if (GC.IsFound) or (GC.IsOwner) then begin
    ProcessSKKopceky(GC);
    ProcessSKHrady(GC);
    ProcessSKKostoliky(GC);
    ProcessCZKopecky(GC);
    ProcessCZHrady(GC);
    ProcessCZKosteliky(GC);
    ProcessCZRekordy(GC);
  end;

  // aktualizuj progres
  Inc(cnt);
  GeoBusyProgress(cnt,geoget_maxcount);
end;


procedure PluginStop;
begin
  GenerateSKKopceky();
  GenerateSKHrady();
  GenerateSKKostoliky();
  GenerateCZKopecky();
  GenerateCZHrady();
  GenerateCZKosteliky();
  GenerateCZRekordy();
end;