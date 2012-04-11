{
Autor: osnica / Rado
http://tiny.cc/osnica

GeoPuzzle, http://geotrophy.net

Verzia: 2.0.2 / 2012-04-11
}

uses simplexml;

{$I GeoPuzzle.config.pas}

// verziu needitovat rucne! je automaticky aktualizovana cez ant
const VERSION = '2.0.2';

// zakladna URL pre XML subory jednotlivych puzzle
const BASE_URL = 'http://geotrophy.net/xml/';
const PLUGIN_DIR = '\GeoPuzzle\';


type
  // jedno policko puzzle
  TPuzzleItem = record
    fieldName : String; // meno policka
    cacheCodes : Array of String; // kod geocache(s) pre dane policko
    found : boolean; // priznak ci je dane policko oznacene
  end;

  // cely GeoPuzzle sa vzdy sklada z 35 policok v matici 7x5
  TPuzzle = Array[1..35] of TPuzzleItem;
  
  // download info pre jeden puzzle
  TPuzzleInfo = record
    title : String; // nazov puzzle
    xmlFile : String; // nazov zdrojoveho XML suboru
    htmlFile : String; // nazov generovaneho HTML suboru
    pathInfo : String; // cast cesty ku obrazkom, ktora je pre dany puzzle unikatna
    country : String; // kod krajiny (momentalne CZ alebo SK)
  end;
  
  // sada vsetkych puzzle
  TPuzzleSet = Array[1..10] of TPuzzleInfo;


var
  backgroundGlobal : String; // hlavne pozadie, podla konfiguracie
  useUtfOutput : boolean; // false = ANSI / Windows-1250, true = UTF-8
  cacheDays : double; // kolko dni kym sa nanovo stiahnut XML subory

  complete : String; // notifikacia ktora sa zobrazi po ukonceni behu

  puzzleSet : TPuzzleSet;


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
  Result := 'nowork,notrans';
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


// priprava info o jednotlivych puzzle
procedure InitPuzzleSet;
begin
  with puzzleSet[1] do
  begin
    title := 'Èeské kopeèky';
    xmlFile := 'kopecky-cz-v2.xml';
    htmlFile := 'GeoPuzzle_CZKopecky.html';
    pathInfo := 'kopecky-cz';
    country := 'CZ';
  end;

  with puzzleSet[2] do
  begin
    title := 'Slovenské kopèeky';
    xmlFile := 'kopecky-sk-v2.xml';
    htmlFile := 'GeoPuzzle_SKKopceky.html';
    pathInfo := 'kopecky-sk';
    country := 'SK';
  end;
  
  with puzzleSet[3] do
  begin
    title := 'Èeské rekordy';
    xmlFile := 'rekordy-cz-v2.xml';
    htmlFile := 'GeoPuzzle_CZRekordy.html';
    pathInfo := 'rekordy-cz';
    country := 'CZ';
  end;

  with puzzleSet[4] do
  begin
    title := 'Slovenské hrady';
    xmlFile := 'hrady-sk-v2.xml';
    htmlFile := 'GeoPuzzle_SKHrady.html';
    pathInfo := 'hrady-sk';
    country := 'SK';
  end;
  
  with puzzleSet[5] do
  begin
    title := 'Èeské hrady';
    xmlFile := 'hrady-cz-v2.xml';
    htmlFile := 'GeoPuzzle_CZHrady.html';
    pathInfo := 'hrady-cz';
    country := 'CZ';
  end;

  with puzzleSet[6] do
  begin
    title := 'Drevené kostolíky Slovenska';
    xmlFile := 'kostely-sk-v2.xml';
    htmlFile := 'GeoPuzzle_SKKostoliky.html';
    pathInfo := 'kostely-sk';
    country := 'SK';
  end;
  
  with puzzleSet[7] do
  begin
    title := 'Døevìné kostolíky';
    xmlFile := 'kostely-cz-v2.xml';
    htmlFile := 'GeoPuzzle_CZKosteliky.html';
    pathInfo := 'kostely-cz';
    country := 'CZ';
  end;
  
  with puzzleSet[8] do
  begin
    title := 'Èeské rozhledny';
    xmlFile := 'rozhledny-cz-v2.xml';
    htmlFile := 'GeoPuzzle_CZRozhledny.html';
    pathInfo := 'rozhledny-cz';
    country := 'CZ';
  end;

  with puzzleSet[9] do
  begin
    title := 'Hungarian Castles';
    xmlFile := 'hrady-hu-v2.xml';
    htmlFile := 'GeoPuzzle_HUCastles.html';
    pathInfo := 'hrady-hu';
    country := 'HU';
  end;

  with puzzleSet[10] do
  begin
    title := 'Slovenské jaskyne';
    xmlFile := 'jeskyne-sk-v2.xml';
    htmlFile := 'GeoPuzzle_SKJaskyne.html';
    pathInfo := 'jeskyne-sk';
    country := 'SK';
  end;
end;


// vrati nazov polozky so spravnym kodovanim
function GetEncodedString(input:String):String;
begin
  if useUtfOutput then begin
    Result := input;
  end
  else
    Result := UtfToAnsi(input);
end;


// stiahne XML pre dany puzzle do pracovneho adresara
function DownloadPuzzleXML(filename:String) : boolean;
var
  fileAvailable : boolean;
  tempStr : String;
begin
  // zisti, ci uz mame k dispozicii starsiu verziu
  fileAvailable := FileExists(GEOGET_SCRIPTDIR + PLUGIN_DIR + filename);
  
  // stiahni iba ak je starsi nez 1 den
  if (Now - GetFileTime(GEOGET_SCRIPTDIR + PLUGIN_DIR + filename)) > cacheDays then
  begin
    if HttpAsk('POST', BASE_URL + filename, '', '', tempStr) then
    begin
      // uloz subor
      StringToFile(tempStr, GEOGET_SCRIPTDIR + PLUGIN_DIR + filename)
      Result := true;
    end
    else begin
      // ak sa nepodarilo stiahnut, ale mame starsiu verziu, pouzi tu
      if fileAvailable then
      begin
        Result := true;
      end
      // ak sa nepodarilo stiahnut a starsiu nemame, zobraz chybu
      else begin
        ShowMessage('Pøi stahování souboru došlo k chybì:' + sLineBreak + BASE_URL + filename);
        Result := false;
      end;
    end;
  end
  else
    Result := true; // pouzijeme starsiu verziu
end;


// rozlozi XML subor pre dany puzzle do struktur pre dalsie spracovanie
function ParsePuzzleXML(filename:String) : TPuzzle;
var 
  Xml : TJclSimpleXML;
  element, subElement :  TJclSimpleXMLElem;
  n : Integer;
  j : Integer;
  fieldIndex : Integer;
  codeIndex : Integer;
  gc : TGeo;
begin
  // vytvorime XML parser pre dany subor
  Xml := TJclSimpleXML.Create();
  try
    Xml.loadfromfile(GEOGET_SCRIPTDIR + PLUGIN_DIR + filename, seAuto, 0);
  finally
    //DeleteFile(sFile);
  end;

  // field index je 1-based index pre polozku puzzle, ktorych je vzdy 35
  fieldIndex := 1;
  gc := TGeo.Create();
  
  // prechadzame vsetky XML polozky, zaujimaju nas len <cache> elementy
  for n := 0 to XML.Root.Items.count - 1 do 
  begin
    element := XML.Root.Items[n];
    if element.name='cache' then
    begin
      // pre pole cacheCodes nastavime dlzku podla mnozstva subelementov
      // ratame ze subelementy budu vzdy jeden <puzzle> a "n" <code"
      SetLength(Result[fieldIndex].cacheCodes, element.Items.count-1);
      
      // nastav found na false
      Result[fieldIndex].found := false;
      
      codeIndex := 0;
      for j := 0 to element.Items.count - 1 do
      begin
        subElement := element.Items[j];
        
        // pre puzzle element vytiahneme len jeho nazov
        if subElement.name='puzzle' then
          Result[fieldIndex].fieldName := subElement.properties.Value('title', '');
          
        // pre code element, pridame GC kod do pola a inkrementujeme index
        if subElement.name='code' then begin
          Result[fieldIndex].cacheCodes[codeIndex] := subElement.Value;
          gc.LoadByGC(subElement.Value);
          if (gc.IsFound) or (gc.IsOwner) then Result[fieldIndex].found := true;
          Inc(codeIndex);
        end;
      end;
      
      // na zaver inkrementujeme index pre jednotlive policka
      Inc(fieldIndex);
    end;
  end;
end;


// generovanie HTML kodu pre konkretny puzzle
procedure GeneratePuzzle(puzzle:TPuzzle; output:String; urlDirName:String; backgroundString:String);
var
  htmlout : String;
  i : integer;
  foundGC : integer;
begin
  htmlout := '<div style="width: 688px; height: 324px; background: transparent url(http://www.geotrophy.net/content/' + urlDirName + '/background' + backgroundString + '.png) no-repeat 0 0; margin: 10px auto;" >';
  foundGC := 0;
  
  for i := 1 to 35 do
    if puzzle[i].found = true then begin
      Inc(foundGC);
      htmlout := htmlout + '<div style="background: transparent url(http://www.geotrophy.net/content/' + urlDirName + '/' + IntToStr(i) + '.png) no-repeat ' + CalculateXOffset(i) + ' ' + CalculateYOffset(i) + ' ">';
    end;

  htmlout := htmlout + '<div style="width: 669px; height: 305px; padding: 19px 0 0 19px;">';

  //
  for i := 1 to 35 do
    htmlout := htmlout + '<div style="float:left; overflow: hidden; width:72px; height: 72px; cursor: help;" title="' + GetEncodedString(puzzle[i].fieldName) + '">&nbsp;</div>';

  htmlout := htmlout + '</div>';
  for i := 1 to foundGC do
    htmlout := htmlout + '</div>';
  htmlout := htmlout + '</div>';
  
  if FileExists(GEOGET_SCRIPTDIR + PLUGIN_DIR + output) then begin
    if DeleteFile(GEOGET_SCRIPTDIR + PLUGIN_DIR + output) then
      StringToFile(htmlout, GEOGET_SCRIPTDIR + PLUGIN_DIR + output);
  end
  else
    StringToFile(htmlout, GEOGET_SCRIPTDIR + PLUGIN_DIR + output);
end;


// hlavna funkcia ktora vykonava samotnu pracu pluginu
procedure PluginStart;
var
  backgroundIndex : integer;
  i : integer;
  puzzle : TPuzzle;
begin
  // inicializacia textoveho potvrdenia
  complete := 'Vaše GeoPuzzles byly úspìšnì vytvoøeny:<br><br>';

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
    
  try
    cacheDays := StrToFloat(CACHE_DAYS);
  except
    cacheDays := 7;
  end;
  
  if(cacheDays < 0) then
    cacheDays := 0;
    
  InitPuzzleSet();

  // Busy Dialog
  GeoBusyStart;
  GeoBusyCaption(PluginHint());
  GeoBusyProgress(0, Length(puzzleSet));
  GeoBusyKind('Zpracování GeoPuzzle...');
  
  for i := 1 to Length(puzzleSet) do
  begin
    GeoBusyProgress(i, Length(puzzleSet));
    GeoBusyKind('Zpracování GeoPuzzle - ' + puzzleSet[i].title);

    complete := complete + '<a href="file://'+ GEOGET_SCRIPTDIR + PLUGIN_DIR + puzzleSet[i].htmlFile + '">' + puzzleSet[i].title + '</a><br>';

    if DownloadPuzzleXML(puzzleSet[i].xmlFile) then
    begin
      puzzle := ParsePuzzleXML(puzzleSet[i].xmlFile);
      GeneratePuzzle(puzzle, puzzleSet[i].htmlFile, puzzleSet[i].pathInfo, backgroundGlobal);
    end
    else
      exit;
  end;
end;


procedure PluginWork;
begin
  // nepouziva sa v nowork rezime
end;


procedure PluginStop;
begin
  if SILENT = '0' then
    ShowHTMLMessage(PluginCaption(), complete);
end;