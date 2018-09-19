{
Autor: osnica / Rado
http://tiny.cc/osnica

Updates: PJSmith (GC tym PetrAJana) / Petr

GeoPuzzle, http://geotrophy.net

Verzia: 2.0.13 / 2018-07-18
}

uses simplexml;

{$I GeoPuzzle.config.pas}

// verziu needitovat rucne! je automaticky aktualizovana cez ant
const VERSION = '2.0.13';

// zakladna URL pre XML subory jednotlivych puzzle
const BASE_URL = 'http://geotrophy.net/xml/';
const PLUGIN_DIR = '\GeoPuzzle\';
const TAG_CATEGORY = 'GeoPuzzle';  //category of tags

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
	// preddefinovane hodnoty
    xmlFile : String; // nazov zdrojoveho XML suboru
    htmlFile : String; // nazov generovaneho HTML suboru
    pathInfo : String; // cast cesty ku obrazkom, ktora je pre dany puzzle unikatna
    country : String; // kod krajiny (momentalne CZ alebo SK)
	// hodnoty nacitane z XML suboru
    title : String; // nazov puzzle
	puzzleUrl : String; // adresa stranky pre dany puzzle
	data : TPuzzle; // data daneho puzzle, ziskane z XML suboru
	foundCount : Byte; // pocet najdenych
  end;
  
  // sada vsetkych puzzle
  TPuzzleSet = Array[1..20] of TPuzzleInfo;


var
  backgroundGlobal : String; // hlavne pozadie, podla konfiguracie
  useUtfOutput : boolean; // false = ANSI / Windows-1250, true = UTF-8
  cacheDays : double; // kolko dni kym sa nanovo stiahnut XML subory
  showTitle : boolean; // pridavat nadpis?
  showCount : integer; // pridavat pocet nalezov (0 = nie, 1 = pod, 2 = nad)
  countryList : String; // zoznam povolenych krajin
  allCountries : boolean; // generovat vsetky puzzle
  tagPuzzle : boolean; // tagovat puzzle?
  missingGcCodes : TStringList; // chybejici GC code
  puzzleGcCodes : TStringList; // predchozi GC code
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
    xmlFile := 'kopecky-cz-v2-v2.xml';
    htmlFile := 'GeoPuzzle_CZKopecky.html';
    pathInfo := 'kopecky-cz-v2';
    country := 'CZ';
  end;

  with puzzleSet[2] do
  begin
    xmlFile := 'kopecky-sk-v2-v2.xml';
    htmlFile := 'GeoPuzzle_SKKopceky.html';
    pathInfo := 'kopecky-sk-v2';
    country := 'SK';
  end;
  
  with puzzleSet[3] do
  begin
    xmlFile := 'rekordy-cz-v2-v2.xml';
    htmlFile := 'GeoPuzzle_CZRekordy.html';
    pathInfo := 'rekordy-cz-v2';
    country := 'CZ';
  end;

  with puzzleSet[4] do
  begin
    xmlFile := 'hrady-sk-v2-v2.xml';
    htmlFile := 'GeoPuzzle_SKHrady.html';
    pathInfo := 'hrady-sk-v2';
    country := 'SK';
  end;
  
  with puzzleSet[5] do
  begin
    xmlFile := 'hrady-cz-v2-v2.xml';
    htmlFile := 'GeoPuzzle_CZHrady.html';
    pathInfo := 'hrady-cz-v2';
    country := 'CZ';
  end;

  with puzzleSet[6] do
  begin
    xmlFile := 'kostely-sk-v2-v2.xml';
    htmlFile := 'GeoPuzzle_SKKostoliky.html';
    pathInfo := 'kostely-sk-v2';
    country := 'SK';
  end;
  
  with puzzleSet[7] do
  begin
    xmlFile := 'kostely-cz-v2-v2.xml';
    htmlFile := 'GeoPuzzle_CZKosteliky.html';
    pathInfo := 'kostely-cz-v2';
    country := 'CZ';
  end;
  
  with puzzleSet[8] do
  begin
    xmlFile := 'rozhledny-cz-v2-v2.xml';
    htmlFile := 'GeoPuzzle_CZRozhledny.html';
    pathInfo := 'rozhledny-cz-v2';
    country := 'CZ';
  end;

  with puzzleSet[9] do
  begin
    xmlFile := 'hrady-hu-v2-v2.xml';
    htmlFile := 'GeoPuzzle_HUCastles.html';
    pathInfo := 'hrady-hu-v2';
    country := 'HU';
  end;

  with puzzleSet[10] do
  begin
    xmlFile := 'jeskyne-sk-v2-v2.xml';
    htmlFile := 'GeoPuzzle_SKJaskyne.html';
    pathInfo := 'jeskyne-sk-v2';
    country := 'SK';
  end;

  with puzzleSet[11] do
  begin
    xmlFile := 'summits-v2-v2.xml';
    htmlFile := 'GeoPuzzle_EUSummits.html';
    pathInfo := 'summits-v2';
    country := 'EU';
  end;
  
  with puzzleSet[12] do
  begin
    xmlFile := 'zamky-cz-v2-v2.xml';
    htmlFile := 'GeoPuzzle_CZZamky.html';
    pathInfo := 'zamky-cz-v2';
    country := 'CZ';
  end;  
  
  with puzzleSet[13] do
  begin
    xmlFile := 'tatry-v2-v2.xml';
    htmlFile := 'GeoPuzzle_SKTatry.html';
    pathInfo := 'tatry-v2';
    country := 'SK';
  end;
  
  with puzzleSet[14] do
  begin
    xmlFile := 'rozhledny-sk-v2-v2.xml';
    htmlFile := 'GeoPuzzle_SKRozhladne.html';
    pathInfo := 'rozhledny-sk-v2';
    country := 'SK';
  end;  
  
  with puzzleSet[15] do
  begin
    xmlFile := 'pivovary-cz-v2-v2.xml';
    htmlFile := 'GeoPuzzle_CZPivovary.html';
    pathInfo := 'pivovary-cz-v2';
    country := 'CZ';
  end;  

  with puzzleSet[16] do
  begin
    xmlFile := 'bazalt-v2-v2.xml';
    htmlFile := 'GeoPuzzle_EUBasalt.html';
    pathInfo := 'bazalt-v2';
    country := 'EU';
  end;  
  
  with puzzleSet[17] do
  begin
    xmlFile := 'domy-cz-v2-v2.xml';
    htmlFile := 'GeoPuzzle_CZRodneDomy.html';
    pathInfo := 'domy-cz-v2';
    country := 'CZ';
  end; 

  with puzzleSet[18] do
  begin
    xmlFile := 'krize-v2-v2.xml';
    htmlFile := 'GeoPuzzle_SKKrize.html';
    pathInfo := 'krize-v2';
    country := 'SK';
  end; 
  
  with puzzleSet[19] do
  begin
    xmlFile := 'unesco-de-v2-v2.xml';
    htmlFile := 'GeoPuzzle_DEunesco.html';
    pathInfo := 'unesco-de-v2';
    country := 'DE';
  end; 

  with puzzleSet[20] do
  begin
    xmlFile := 'hrady-si-v2-v2.xml';
    htmlFile := 'GeoPuzzle_SICastles.html';
    pathInfo := 'hrady-si-v2';
    country := 'SI';
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


// vrati nazov polozky so spravnym kodovanim
// inverzne ku predoslej funkcii, pre pouzitie len pre 
// retazcove literaly v PAS zdrojaku, ktory je v ANSI
function GetEncodedSourceString(input:String):String;
begin
  if useUtfOutput then begin
    Result := AnsiToUtf(input);
  end
  else
    Result := input;
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
procedure ParsePuzzleXML(var puzzle:TPuzzleInfo);
var 
  Xml : TJclSimpleXML;
  element, subElement :  TJclSimpleXMLElem;
  n,j,i : Integer;
  fieldIndex : Integer;
  codeIndex : Integer;
  gc : TGeo;
  foundGcCode : String;
begin
  // vytvorime XML parser pre dany subor
  Xml := TJclSimpleXML.Create();
  try
    Xml.loadfromfile(GEOGET_SCRIPTDIR + PLUGIN_DIR + puzzle.xmlFile, seAuto, 0);
  finally
    //DeleteFile(sFile);
  end;

  // field index je 1-based index pre polozku puzzle, ktorych je vzdy 35
  fieldIndex := 1;
  gc := TGeo.Create();
  
  // pocet najdenych inicializujeme pre istotu na nulu
  puzzle.foundCount := 0;
  
  // prechadzame vsetky XML polozky, zaujimaju nas len <cache> elementy
  for n := 0 to XML.Root.Items.count - 1 do 
  begin
    element := XML.Root.Items[n];
	
	if element.name='name' then
	begin
	  puzzle.title := element.Value;
	end
	else if element.name='url' then
	begin
	  puzzle.puzzleUrl := element.Value;
	end
	else if element.name='cache' then
    begin
      // pre pole cacheCodes nastavime dlzku podla mnozstva subelementov
      // ratame ze subelementy budu vzdy jeden <puzzle> a "n" <code"
      SetLength(puzzle.data[fieldIndex].cacheCodes, element.Items.count-1);

      puzzleGcCodes := TStringList.Create();
      foundGcCode := '';
      
      // nastav found na false
      puzzle.data[fieldIndex].found := false;
      
      codeIndex := 0;
      for j := 0 to element.Items.count - 1 do
      begin
        subElement := element.Items[j];
        
        // pre puzzle element vytiahneme len jeho nazov
        if subElement.name='puzzle' then
          puzzle.data[fieldIndex].fieldName := subElement.properties.Value('title', '');
          
        // pre code element, pridame GC kod do pola a inkrementujeme index
        if subElement.name='code' then begin
          puzzle.data[fieldIndex].cacheCodes[codeIndex] := Trim(subElement.Value);
          gc.LoadByGC(Trim(subElement.Value));
          if (gc.IsFound) or (gc.IsOwner) then begin puzzle.data[fieldIndex].found := true;
            Inc(codeIndex);

            foundGcCode := Trim(subElement.Value);
            puzzleGcCodes.Add(GetEncodedString(Trim(subElement.Value)));
            puzzle.data[fieldIndex].found := true;
          end
          else begin
              if ((gc.key = 0) and (tagPuzzle = true)) then missingGcCodes.Add(GetEncodedString(Trim(subElement.Value)));

              if (gc.IsArchived = false) then begin
                puzzleGcCodes.Add(GetEncodedString(Trim(subElement.Value)));
              end;
          end;
        end;
      end;

    if((puzzleGcCodes.Count > 0) and (tagPuzzle = true)) then begin
      if(foundGcCode = '') then begin
        foundGcCode := puzzleGcCodes[puzzleGcCodes.Count - 1];
      end;

      for i := 0 to puzzleGcCodes.Count-1 do begin
        gc.LoadByGC(puzzleGcCodes[i]);

        if(foundGcCode = puzzleGcCodes[i])  then begin
          gc.TagAdd(TAG_CATEGORY, puzzle.title);
        end;
      end;
    end;

    if (puzzleGcCodes <> nil) then puzzleGcCodes.Free();
	  if(puzzle.data[fieldIndex].found) then
	    Inc(puzzle.foundCount);
      
      // na zaver inkrementujeme index pre jednotlive policka
      Inc(fieldIndex);
    end;
  end;
end;


// generovanie HTML kodu pre konkretny puzzle
procedure GeneratePuzzle(puzzle:TPuzzleInfo; backgroundString:String);
var
  htmlout : String;
  i : integer;
begin
  htmlout := '';
  
  // titulok
  if(showTitle) then
    htmlout := htmlout + '<h3 style="margin-bottom:0; padding-bottom: 0; text-align:center;">GeoPuzzle ' + GetEncodedString(puzzle.title) + '</h3>';

  // pocet nalezov
  if(showCount = 2) then
    htmlout := htmlout + '<div style="font-size:x-small;text-align:center;" >' + GetEncodedSourceString('Poèet nalezených: ') + '<b>' + IntToStr(puzzle.foundCount) + '</b></div>'; 
  
  htmlout := htmlout + '<div style="width: 688px; height: 324px; background: transparent url(http://www.geotrophy.net/content/' + puzzle.pathInfo + '/background' + backgroundString + '.png) no-repeat 0 0; margin: 10px auto;" >';
  
  for i := 1 to 35 do
    if puzzle.data[i].found = true then begin
      htmlout := htmlout + '<div style="background: transparent url(http://www.geotrophy.net/content/' + puzzle.pathInfo + '/' + IntToStr(i) + '.png) no-repeat ' + CalculateXOffset(i) + ' ' + CalculateYOffset(i) + ' ">';
    end;

  htmlout := htmlout + '<div style="width: 669px; height: 305px; padding: 19px 0 0 19px;">';

  //
  for i := 1 to 35 do
    htmlout := htmlout + '<div style="float:left; overflow: hidden; width:72px; height: 72px; cursor: help;" title="' + GetEncodedString(puzzle.data[i].fieldName) + '">&nbsp;</div>';
	
  // odkaz na domovsku stranku daneho puzzle
  htmlout := htmlout + '<a href="' + puzzle.puzzleUrl + '" style="float:left; overflow: hidden; width:72px; height: 72px; cursor: pointer;" title="GeoPuzzle ' + GetEncodedString(puzzle.title) + '">&nbsp;</a>';

  // uzavriet div
  htmlout := htmlout + '</div>';
  
  // closing divs pre nalezy
  for i := 1 to puzzle.foundCount do
    htmlout := htmlout + '</div>';
	
  // pocet nalezov
  if(showCount = 1) then
    htmlout := htmlout + '<div style="font-size:x-small;text-align:center;" >' + GetEncodedSourceString('Poèet nalezených: ') + '<b>' + IntToStr(puzzle.foundCount) + '</b></div>'; 
  
  // zaverecny uzatvaraci div
  htmlout := htmlout + '</div>';
  
  if FileExists(GEOGET_SCRIPTDIR + PLUGIN_DIR + puzzle.htmlFile) then begin
    if DeleteFile(GEOGET_SCRIPTDIR + PLUGIN_DIR + puzzle.htmlFile) then
      StringToFile(htmlout, GEOGET_SCRIPTDIR + PLUGIN_DIR + puzzle.htmlFile);
  end
  else
    StringToFile(htmlout, GEOGET_SCRIPTDIR + PLUGIN_DIR + puzzle.htmlFile);
end;


// hlavna funkcia ktora vykonava samotnu pracu pluginu
procedure PluginStart;
var
  backgroundIndex : integer;
  i : integer;
begin
  // inicializacia textoveho potvrdenia
  complete := 'Vaše GeoPuzzle byly úspìšnì vytvoøeny.<br>';

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
	
  // nastavenie nadpisu
  if SHOW_TITLE = '1' then begin
    showTitle := true;
  end
  else
    showTitle := false;
	
  // nastavenie zobrazovania poctu nalezov
  try
	showCount := StrToInt(SHOW_COUNT);
  except
    showCount := 0;
  end;
  if (showCount < 0) OR (showCount > 2) then 
	showCount := 0;
  
  // nastavenie cachovania XML suborov    
  try
    cacheDays := StrToFloat(CACHE_DAYS);
  except
    cacheDays := 7;
  end;
  
  if(cacheDays < 0) then
    cacheDays := 0;
	
  // zoznam povolenych krajin
  countryList := UpperCase(COUNTRIES);
  if Length(countryList) = 0 then
  begin
    allCountries := true;
	complete := complete + '<br>';
  end
  else begin
    allCountries := false;
	complete := complete + 'Seznam státù: ' + countryList + '<br><br>';
  end;

  // tagovat puzzle?
  if TAG_PUZZLE = '1' then begin
    tagPuzzle := true;
  end
  else
    tagPuzzle := false;
    
  InitPuzzleSet();

  // Busy Dialog
  GeoBusyStart;
  GeoBusyCaption(PluginHint());
  GeoBusyProgress(0, Length(puzzleSet));
  GeoBusyKind('Zpracování GeoPuzzle...');

  missingGcCodes := TStringList.Create();
  GeoTagDelCategory(TAG_CATEGORY);
  
  for i := 1 to Length(puzzleSet) do
  begin
    GeoBusyProgress(i, Length(puzzleSet));
    GeoBusyKind('Zpracování GeoPuzzle');

    if DownloadPuzzleXML(puzzleSet[i].xmlFile) then
    begin
	  if allCountries or RegexFind(puzzleSet[i].country, countryList) then 
	  begin
        ParsePuzzleXML(puzzleSet[i]);
	    GeoBusyKind('Zpracování GeoPuzzle - ' + UtfToAnsi(puzzleSet[i].title));
        GeneratePuzzle(puzzleSet[i], backgroundGlobal);
        complete := complete + '<a href="file://'+ GEOGET_SCRIPTDIR + PLUGIN_DIR + puzzleSet[i].htmlFile + '">' + UtfToAnsi(puzzleSet[i].title) + '</a><br>';
	  end
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
  if SILENT = '0' then begin
    ShowHTMLMessage(PluginCaption(), complete);
    if (missingGcCodes.Count > 0) then begin
      ShowHTMLMessage(PluginCaption(), 'Chybejici kese ('+IntToStr(missingGcCodes.Count)+'):<br>' + replacestring(missingGcCodes.CommaText, ',','; '));
      missingGcCodes.Free();
    end;
  end;
end;
