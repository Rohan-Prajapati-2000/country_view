/// name : {"common":"Moldova","official":"Republic of Moldova","nativeName":{"ron":{"official":"Republica Moldova","common":"Moldova"}}}
/// tld : [".md"]
/// cca2 : "MD"
/// ccn3 : "498"
/// cca3 : "MDA"
/// cioc : "MDA"
/// independent : true
/// status : "officially-assigned"
/// unMember : true
/// currencies : {"MDL":{"name":"Moldovan leu","symbol":"L"}}
/// idd : {"root":"+3","suffixes":["73"]}
/// capital : ["Chișinău"]
/// altSpellings : ["MD","Moldova, Republic of","Republic of Moldova","Republica Moldova"]
/// region : "Europe"
/// subregion : "Eastern Europe"
/// languages : {"ron":"Romanian"}
/// translations : {"ara":{"official":"جمهورية مولدوڤا","common":"مولدوڤا"},"bre":{"official":"Republik Moldova","common":"Moldova"},"ces":{"official":"Moldavská republika","common":"Moldavsko"},"cym":{"official":"Republic of Moldova","common":"Moldova"},"deu":{"official":"Republik Moldau","common":"Moldawien"},"est":{"official":"Moldova Vabariik","common":"Moldova"},"fin":{"official":"Moldovan tasavalta","common":"Moldova"},"fra":{"official":"République de Moldavie","common":"Moldavie"},"hrv":{"official":"Moldavija","common":"Moldova"},"hun":{"official":"Moldovai Köztársaság","common":"Moldova"},"ita":{"official":"Repubblica di Moldova","common":"Moldavia"},"jpn":{"official":"モルドバ共和国","common":"モルドバ共和国"},"kor":{"official":"몰도바 공화국","common":"몰도바"},"nld":{"official":"Republiek Moldavië","common":"Moldavië"},"per":{"official":"جمهوری مولداوی","common":"مولداوی"},"pol":{"official":"Republika Mołdawii","common":"Mołdawia"},"por":{"official":"República da Moldávia","common":"Moldávia"},"rus":{"official":"Молдова","common":"Молдавия"},"slk":{"official":"Moldavská republika","common":"Moldavsko"},"spa":{"official":"República de Moldova","common":"Moldavia"},"srp":{"official":"Република Молдавија","common":"Молдавија"},"swe":{"official":"Republiken Moldavien","common":"Moldavien"},"tur":{"official":"Moldova Cumhuriyeti","common":"Moldova"},"urd":{"official":"جمہوریہ مالدووا","common":"مالدووا"},"zho":{"official":"摩尔多瓦共和国","common":"摩尔多瓦"}}
/// latlng : [47.0,29.0]
/// landlocked : true
/// borders : ["ROU","UKR"]
/// area : 33846.0
/// demonyms : {"eng":{"f":"Moldovan","m":"Moldovan"},"fra":{"f":"Moldave","m":"Moldave"}}
/// flag : "🇲🇩"
/// maps : {"googleMaps":"https://goo.gl/maps/JjmyUuULujnDeFPf7","openStreetMaps":"https://www.openstreetmap.org/relation/58974"}
/// population : 2617820
/// gini : {"2018":25.7}
/// fifa : "MDA"
/// car : {"signs":["MD"],"side":"right"}
/// timezones : ["UTC+02:00"]
/// continents : ["Europe"]
/// flags : {"png":"https://flagcdn.com/w320/md.png","svg":"https://flagcdn.com/md.svg","alt":"The flag of Moldova is composed of three equal vertical bands of blue, yellow and red, with the national coat of arms centered in the yellow band."}
/// coatOfArms : {"png":"https://mainfacts.com/media/images/coats_of_arms/md.png","svg":"https://mainfacts.com/media/images/coats_of_arms/md.svg"}
/// startOfWeek : "monday"
/// capitalInfo : {"latlng":[47.01,28.9]}
/// postalCode : {"format":"MD-####","regex":"^(?:MD)*(\\d{4})$"}

class CountryModel {
  CountryModel({
      Name? name, 
      List<String>? tld, 
      String? cca2, 
      String? ccn3, 
      String? cca3, 
      String? cioc, 
      bool? independent, 
      String? status, 
      bool? unMember, 
      Currencies? currencies, 
      Idd? idd, 
      List<String>? capital, 
      List<String>? altSpellings, 
      String? region, 
      String? subregion, 
      Languages? languages, 
      Translations? translations, 
      List<num>? latlng, 
      bool? landlocked, 
      List<String>? borders, 
      num? area, 
      Demonyms? demonyms, 
      String? flag, 
      Maps? maps, 
      num? population, 
      String? fifa,
      Car? car, 
      List<String>? timezones, 
      List<String>? continents, 
      Flags? flags, 
      CoatOfArms? coatOfArms, 
      String? startOfWeek, 
      CapitalInfo? capitalInfo, 
      PostalCode? postalCode,}){
    _name = name;
    _tld = tld;
    _cca2 = cca2;
    _ccn3 = ccn3;
    _cca3 = cca3;
    _cioc = cioc;
    _independent = independent;
    _status = status;
    _unMember = unMember;
    _currencies = currencies;
    _idd = idd;
    _capital = capital;
    _altSpellings = altSpellings;
    _region = region;
    _subregion = subregion;
    _languages = languages;
    _translations = translations;
    _latlng = latlng;
    _landlocked = landlocked;
    _borders = borders;
    _area = area;
    _demonyms = demonyms;
    _flag = flag;
    _maps = maps;
    _population = population;
    _fifa = fifa;
    _car = car;
    _timezones = timezones;
    _continents = continents;
    _flags = flags;
    _coatOfArms = coatOfArms;
    _startOfWeek = startOfWeek;
    _capitalInfo = capitalInfo;
    _postalCode = postalCode;
}

  CountryModel.fromJson(dynamic json) {
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _tld = json['tld'] != null ? json['tld'].cast<String>() : [];
    _cca2 = json['cca2'];
    _ccn3 = json['ccn3'];
    _cca3 = json['cca3'];
    _cioc = json['cioc'];
    _independent = json['independent'];
    _status = json['status'];
    _unMember = json['unMember'];
    _currencies = json['currencies'] != null ? Currencies.fromJson(json['currencies']) : null;
    _idd = json['idd'] != null ? Idd.fromJson(json['idd']) : null;
    _capital = json['capital'] != null ? json['capital'].cast<String>() : [];
    _altSpellings = json['altSpellings'] != null ? json['altSpellings'].cast<String>() : [];
    _region = json['region'];
    _subregion = json['subregion'];
    _languages = json['languages'] != null ? Languages.fromJson(json['languages']) : null;
    _translations = json['translations'] != null ? Translations.fromJson(json['translations']) : null;
    _latlng = json['latlng'] != null ? json['latlng'].cast<num>() : [];
    _landlocked = json['landlocked'];
    _borders = json['borders'] != null ? json['borders'].cast<String>() : [];
    _area = json['area'];
    _demonyms = json['demonyms'] != null ? Demonyms.fromJson(json['demonyms']) : null;
    _flag = json['flag'];
    _maps = json['maps'] != null ? Maps.fromJson(json['maps']) : null;
    _population = json['population'];
    _fifa = json['fifa'];
    _car = json['car'] != null ? Car.fromJson(json['car']) : null;
    _timezones = json['timezones'] != null ? json['timezones'].cast<String>() : [];
    _continents = json['continents'] != null ? json['continents'].cast<String>() : [];
    _flags = json['flags'] != null ? Flags.fromJson(json['flags']) : null;
    _coatOfArms = json['coatOfArms'] != null ? CoatOfArms.fromJson(json['coatOfArms']) : null;
    _startOfWeek = json['startOfWeek'];
    _capitalInfo = json['capitalInfo'] != null ? CapitalInfo.fromJson(json['capitalInfo']) : null;
    _postalCode = json['postalCode'] != null ? PostalCode.fromJson(json['postalCode']) : null;
  }
  Name? _name;
  List<String>? _tld;
  String? _cca2;
  String? _ccn3;
  String? _cca3;
  String? _cioc;
  bool? _independent;
  String? _status;
  bool? _unMember;
  Currencies? _currencies;
  Idd? _idd;
  List<String>? _capital;
  List<String>? _altSpellings;
  String? _region;
  String? _subregion;
  Languages? _languages;
  Translations? _translations;
  List<num>? _latlng;
  bool? _landlocked;
  List<String>? _borders;
  num? _area;
  Demonyms? _demonyms;
  String? _flag;
  Maps? _maps;
  num? _population;
  String? _fifa;
  Car? _car;
  List<String>? _timezones;
  List<String>? _continents;
  Flags? _flags;
  CoatOfArms? _coatOfArms;
  String? _startOfWeek;
  CapitalInfo? _capitalInfo;
  PostalCode? _postalCode;
CountryModel copyWith({  Name? name,
  List<String>? tld,
  String? cca2,
  String? ccn3,
  String? cca3,
  String? cioc,
  bool? independent,
  String? status,
  bool? unMember,
  Currencies? currencies,
  Idd? idd,
  List<String>? capital,
  List<String>? altSpellings,
  String? region,
  String? subregion,
  Languages? languages,
  Translations? translations,
  List<num>? latlng,
  bool? landlocked,
  List<String>? borders,
  num? area,
  Demonyms? demonyms,
  String? flag,
  Maps? maps,
  num? population,
  String? fifa,
  Car? car,
  List<String>? timezones,
  List<String>? continents,
  Flags? flags,
  CoatOfArms? coatOfArms,
  String? startOfWeek,
  CapitalInfo? capitalInfo,
  PostalCode? postalCode,
}) => CountryModel(  name: name ?? _name,
  tld: tld ?? _tld,
  cca2: cca2 ?? _cca2,
  ccn3: ccn3 ?? _ccn3,
  cca3: cca3 ?? _cca3,
  cioc: cioc ?? _cioc,
  independent: independent ?? _independent,
  status: status ?? _status,
  unMember: unMember ?? _unMember,
  currencies: currencies ?? _currencies,
  idd: idd ?? _idd,
  capital: capital ?? _capital,
  altSpellings: altSpellings ?? _altSpellings,
  region: region ?? _region,
  subregion: subregion ?? _subregion,
  languages: languages ?? _languages,
  translations: translations ?? _translations,
  latlng: latlng ?? _latlng,
  landlocked: landlocked ?? _landlocked,
  borders: borders ?? _borders,
  area: area ?? _area,
  demonyms: demonyms ?? _demonyms,
  flag: flag ?? _flag,
  maps: maps ?? _maps,
  population: population ?? _population,
  fifa: fifa ?? _fifa,
  car: car ?? _car,
  timezones: timezones ?? _timezones,
  continents: continents ?? _continents,
  flags: flags ?? _flags,
  coatOfArms: coatOfArms ?? _coatOfArms,
  startOfWeek: startOfWeek ?? _startOfWeek,
  capitalInfo: capitalInfo ?? _capitalInfo,
  postalCode: postalCode ?? _postalCode,
);
  Name? get name => _name;
  List<String>? get tld => _tld;
  String? get cca2 => _cca2;
  String? get ccn3 => _ccn3;
  String? get cca3 => _cca3;
  String? get cioc => _cioc;
  bool? get independent => _independent;
  String? get status => _status;
  bool? get unMember => _unMember;
  Currencies? get currencies => _currencies;
  Idd? get idd => _idd;
  List<String>? get capital => _capital;
  List<String>? get altSpellings => _altSpellings;
  String? get region => _region;
  String? get subregion => _subregion;
  Languages? get languages => _languages;
  Translations? get translations => _translations;
  List<num>? get latlng => _latlng;
  bool? get landlocked => _landlocked;
  List<String>? get borders => _borders;
  num? get area => _area;
  Demonyms? get demonyms => _demonyms;
  String? get flag => _flag;
  Maps? get maps => _maps;
  num? get population => _population;
  String? get fifa => _fifa;
  Car? get car => _car;
  List<String>? get timezones => _timezones;
  List<String>? get continents => _continents;
  Flags? get flags => _flags;
  CoatOfArms? get coatOfArms => _coatOfArms;
  String? get startOfWeek => _startOfWeek;
  CapitalInfo? get capitalInfo => _capitalInfo;
  PostalCode? get postalCode => _postalCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['tld'] = _tld;
    map['cca2'] = _cca2;
    map['ccn3'] = _ccn3;
    map['cca3'] = _cca3;
    map['cioc'] = _cioc;
    map['independent'] = _independent;
    map['status'] = _status;
    map['unMember'] = _unMember;
    if (_currencies != null) {
      map['currencies'] = _currencies?.toJson();
    }
    if (_idd != null) {
      map['idd'] = _idd?.toJson();
    }
    map['capital'] = _capital;
    map['altSpellings'] = _altSpellings;
    map['region'] = _region;
    map['subregion'] = _subregion;
    if (_languages != null) {
      map['languages'] = _languages?.toJson();
    }
    if (_translations != null) {
      map['translations'] = _translations?.toJson();
    }
    map['latlng'] = _latlng;
    map['landlocked'] = _landlocked;
    map['borders'] = _borders;
    map['area'] = _area;
    if (_demonyms != null) {
      map['demonyms'] = _demonyms?.toJson();
    }
    map['flag'] = _flag;
    if (_maps != null) {
      map['maps'] = _maps?.toJson();
    }
    map['population'] = _population;
    map['fifa'] = _fifa;
    if (_car != null) {
      map['car'] = _car?.toJson();
    }
    map['timezones'] = _timezones;
    map['continents'] = _continents;
    if (_flags != null) {
      map['flags'] = _flags?.toJson();
    }
    if (_coatOfArms != null) {
      map['coatOfArms'] = _coatOfArms?.toJson();
    }
    map['startOfWeek'] = _startOfWeek;
    if (_capitalInfo != null) {
      map['capitalInfo'] = _capitalInfo?.toJson();
    }
    if (_postalCode != null) {
      map['postalCode'] = _postalCode?.toJson();
    }
    return map;
  }

}

/// format : "MD-####"
/// regex : "^(?:MD)*(\\d{4})$"

class PostalCode {
  PostalCode({
      String? format, 
      String? regex,}){
    _format = format;
    _regex = regex;
}

  PostalCode.fromJson(dynamic json) {
    _format = json['format'];
    _regex = json['regex'];
  }
  String? _format;
  String? _regex;
PostalCode copyWith({  String? format,
  String? regex,
}) => PostalCode(  format: format ?? _format,
  regex: regex ?? _regex,
);
  String? get format => _format;
  String? get regex => _regex;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['format'] = _format;
    map['regex'] = _regex;
    return map;
  }

}

/// latlng : [47.01,28.9]

class CapitalInfo {
  CapitalInfo({
      List<num>? latlng,}){
    _latlng = latlng;
}

  CapitalInfo.fromJson(dynamic json) {
    _latlng = json['latlng'] != null ? json['latlng'].cast<num>() : [];
  }
  List<num>? _latlng;
CapitalInfo copyWith({  List<num>? latlng,
}) => CapitalInfo(  latlng: latlng ?? _latlng,
);
  List<num>? get latlng => _latlng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latlng'] = _latlng;
    return map;
  }

}

/// png : "https://mainfacts.com/media/images/coats_of_arms/md.png"
/// svg : "https://mainfacts.com/media/images/coats_of_arms/md.svg"

class CoatOfArms {
  CoatOfArms({
    String? png,
    String? svg,}) {
    _png = png;
    _svg = svg;
  }

  CoatOfArms.fromJson(dynamic json) {
    _png = json['png'];
    _svg = json['svg'];
  }

  String? _png;
  String? _svg;

  CoatOfArms copyWith({ String? png,
    String? svg,
  }) =>
      CoatOfArms(png: png ?? _png,
        svg: svg ?? _svg,
      );

  String? get png => _png;

  String? get svg => _svg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['png'] = _png;
    map['svg'] = _svg;
    return map;
  }

}

/// png : "https://flagcdn.com/w320/md.png"
/// svg : "https://flagcdn.com/md.svg"
/// alt : "The flag of Moldova is composed of three equal vertical bands of blue, yellow and red, with the national coat of arms centered in the yellow band."

class Flags {
  Flags({
      String? png, 
      String? svg, 
      String? alt,}){
    _png = png;
    _svg = svg;
    _alt = alt;
}

  Flags.fromJson(dynamic json) {
    _png = json['png'];
    _svg = json['svg'];
    _alt = json['alt'];
  }
  String? _png;
  String? _svg;
  String? _alt;
Flags copyWith({  String? png,
  String? svg,
  String? alt,
}) => Flags(  png: png ?? _png,
  svg: svg ?? _svg,
  alt: alt ?? _alt,
);
  String? get png => _png;
  String? get svg => _svg;
  String? get alt => _alt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['png'] = _png;
    map['svg'] = _svg;
    map['alt'] = _alt;
    return map;
  }

}

/// signs : ["MD"]
/// side : "right"

class Car {
  Car({
      List<String>? signs, 
      String? side,}){
    _signs = signs;
    _side = side;
}

  Car.fromJson(dynamic json) {
    _signs = json['signs'] != null ? json['signs'].cast<String>() : [];
    _side = json['side'];
  }
  List<String>? _signs;
  String? _side;
Car copyWith({  List<String>? signs,
  String? side,
}) => Car(  signs: signs ?? _signs,
  side: side ?? _side,
);
  List<String>? get signs => _signs;
  String? get side => _side;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['signs'] = _signs;
    map['side'] = _side;
    return map;
  }

}

/// 2018 : 25.7
/// googleMaps : "https://goo.gl/maps/JjmyUuULujnDeFPf7"
/// openStreetMaps : "https://www.openstreetmap.org/relation/58974"

class Maps {
  Maps({
      String? googleMaps, 
      String? openStreetMaps,}){
    _googleMaps = googleMaps;
    _openStreetMaps = openStreetMaps;
}

  Maps.fromJson(dynamic json) {
    _googleMaps = json['googleMaps'];
    _openStreetMaps = json['openStreetMaps'];
  }
  String? _googleMaps;
  String? _openStreetMaps;
Maps copyWith({  String? googleMaps,
  String? openStreetMaps,
}) => Maps(  googleMaps: googleMaps ?? _googleMaps,
  openStreetMaps: openStreetMaps ?? _openStreetMaps,
);
  String? get googleMaps => _googleMaps;
  String? get openStreetMaps => _openStreetMaps;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['googleMaps'] = _googleMaps;
    map['openStreetMaps'] = _openStreetMaps;
    return map;
  }

}

/// eng : {"f":"Moldovan","m":"Moldovan"}
/// fra : {"f":"Moldave","m":"Moldave"}

class Demonyms {
  Demonyms({
      Eng? eng, 
      Fra? fra,}){
    _eng = eng;
    _fra = fra;
}

  Demonyms.fromJson(dynamic json) {
    _eng = json['eng'] != null ? Eng.fromJson(json['eng']) : null;
    _fra = json['fra'] != null ? Fra.fromJson(json['fra']) : null;
  }
  Eng? _eng;
  Fra? _fra;
Demonyms copyWith({  Eng? eng,
  Fra? fra,
}) => Demonyms(  eng: eng ?? _eng,
  fra: fra ?? _fra,
);
  Eng? get eng => _eng;
  Fra? get fra => _fra;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_eng != null) {
      map['eng'] = _eng?.toJson();
    }
    if (_fra != null) {
      map['fra'] = _fra?.toJson();
    }
    return map;
  }

}

/// f : "Moldave"
/// m : "Moldave"

class Fra {
  Fra({
      String? f, 
      String? m,}){
    _f = f;
    _m = m;
}

  Fra.fromJson(dynamic json) {
    _f = json['f'];
    _m = json['m'];
  }
  String? _f;
  String? _m;
Fra copyWith({  String? f,
  String? m,
}) => Fra(  f: f ?? _f,
  m: m ?? _m,
);
  String? get f => _f;
  String? get m => _m;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['f'] = _f;
    map['m'] = _m;
    return map;
  }

}

/// f : "Moldovan"
/// m : "Moldovan"

class Eng {
  Eng({
      String? f, 
      String? m,}){
    _f = f;
    _m = m;
}

  Eng.fromJson(dynamic json) {
    _f = json['f'];
    _m = json['m'];
  }
  String? _f;
  String? _m;
Eng copyWith({  String? f,
  String? m,
}) => Eng(  f: f ?? _f,
  m: m ?? _m,
);
  String? get f => _f;
  String? get m => _m;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['f'] = _f;
    map['m'] = _m;
    return map;
  }

}

/// ara : {"official":"جمهورية مولدوڤا","common":"مولدوڤا"}
/// bre : {"official":"Republik Moldova","common":"Moldova"}
/// ces : {"official":"Moldavská republika","common":"Moldavsko"}
/// cym : {"official":"Republic of Moldova","common":"Moldova"}
/// deu : {"official":"Republik Moldau","common":"Moldawien"}
/// est : {"official":"Moldova Vabariik","common":"Moldova"}
/// fin : {"official":"Moldovan tasavalta","common":"Moldova"}
/// fra : {"official":"République de Moldavie","common":"Moldavie"}
/// hrv : {"official":"Moldavija","common":"Moldova"}
/// hun : {"official":"Moldovai Köztársaság","common":"Moldova"}
/// ita : {"official":"Repubblica di Moldova","common":"Moldavia"}
/// jpn : {"official":"モルドバ共和国","common":"モルドバ共和国"}
/// kor : {"official":"몰도바 공화국","common":"몰도바"}
/// nld : {"official":"Republiek Moldavië","common":"Moldavië"}
/// per : {"official":"جمهوری مولداوی","common":"مولداوی"}
/// pol : {"official":"Republika Mołdawii","common":"Mołdawia"}
/// por : {"official":"República da Moldávia","common":"Moldávia"}
/// rus : {"official":"Молдова","common":"Молдавия"}
/// slk : {"official":"Moldavská republika","common":"Moldavsko"}
/// spa : {"official":"República de Moldova","common":"Moldavia"}
/// srp : {"official":"Република Молдавија","common":"Молдавија"}
/// swe : {"official":"Republiken Moldavien","common":"Moldavien"}
/// tur : {"official":"Moldova Cumhuriyeti","common":"Moldova"}
/// urd : {"official":"جمہوریہ مالدووا","common":"مالدووا"}
/// zho : {"official":"摩尔多瓦共和国","common":"摩尔多瓦"}

class Translations {
  Translations({
      Ara? ara, 
      Bre? bre, 
      Ces? ces, 
      Cym? cym, 
      Deu? deu, 
      Est? est, 
      Fin? fin, 
      Fra? fra, 
      Hrv? hrv, 
      Hun? hun, 
      Ita? ita, 
      Jpn? jpn, 
      Kor? kor, 
      Nld? nld, 
      Per? per, 
      Pol? pol, 
      Por? por, 
      Rus? rus, 
      Slk? slk, 
      Spa? spa, 
      Srp? srp, 
      Swe? swe, 
      Tur? tur, 
      Urd? urd, 
      Zho? zho,}){
    _ara = ara;
    _bre = bre;
    _ces = ces;
    _cym = cym;
    _deu = deu;
    _est = est;
    _fin = fin;
    _fra = fra;
    _hrv = hrv;
    _hun = hun;
    _ita = ita;
    _jpn = jpn;
    _kor = kor;
    _nld = nld;
    _per = per;
    _pol = pol;
    _por = por;
    _rus = rus;
    _slk = slk;
    _spa = spa;
    _srp = srp;
    _swe = swe;
    _tur = tur;
    _urd = urd;
    _zho = zho;
}

  Translations.fromJson(dynamic json) {
    _ara = json['ara'] != null ? Ara.fromJson(json['ara']) : null;
    _bre = json['bre'] != null ? Bre.fromJson(json['bre']) : null;
    _ces = json['ces'] != null ? Ces.fromJson(json['ces']) : null;
    _cym = json['cym'] != null ? Cym.fromJson(json['cym']) : null;
    _deu = json['deu'] != null ? Deu.fromJson(json['deu']) : null;
    _est = json['est'] != null ? Est.fromJson(json['est']) : null;
    _fin = json['fin'] != null ? Fin.fromJson(json['fin']) : null;
    _fra = json['fra'] != null ? Fra.fromJson(json['fra']) : null;
    _hrv = json['hrv'] != null ? Hrv.fromJson(json['hrv']) : null;
    _hun = json['hun'] != null ? Hun.fromJson(json['hun']) : null;
    _ita = json['ita'] != null ? Ita.fromJson(json['ita']) : null;
    _jpn = json['jpn'] != null ? Jpn.fromJson(json['jpn']) : null;
    _kor = json['kor'] != null ? Kor.fromJson(json['kor']) : null;
    _nld = json['nld'] != null ? Nld.fromJson(json['nld']) : null;
    _per = json['per'] != null ? Per.fromJson(json['per']) : null;
    _pol = json['pol'] != null ? Pol.fromJson(json['pol']) : null;
    _por = json['por'] != null ? Por.fromJson(json['por']) : null;
    _rus = json['rus'] != null ? Rus.fromJson(json['rus']) : null;
    _slk = json['slk'] != null ? Slk.fromJson(json['slk']) : null;
    _spa = json['spa'] != null ? Spa.fromJson(json['spa']) : null;
    _srp = json['srp'] != null ? Srp.fromJson(json['srp']) : null;
    _swe = json['swe'] != null ? Swe.fromJson(json['swe']) : null;
    _tur = json['tur'] != null ? Tur.fromJson(json['tur']) : null;
    _urd = json['urd'] != null ? Urd.fromJson(json['urd']) : null;
    _zho = json['zho'] != null ? Zho.fromJson(json['zho']) : null;
  }
  Ara? _ara;
  Bre? _bre;
  Ces? _ces;
  Cym? _cym;
  Deu? _deu;
  Est? _est;
  Fin? _fin;
  Fra? _fra;
  Hrv? _hrv;
  Hun? _hun;
  Ita? _ita;
  Jpn? _jpn;
  Kor? _kor;
  Nld? _nld;
  Per? _per;
  Pol? _pol;
  Por? _por;
  Rus? _rus;
  Slk? _slk;
  Spa? _spa;
  Srp? _srp;
  Swe? _swe;
  Tur? _tur;
  Urd? _urd;
  Zho? _zho;
Translations copyWith({  Ara? ara,
  Bre? bre,
  Ces? ces,
  Cym? cym,
  Deu? deu,
  Est? est,
  Fin? fin,
  Fra? fra,
  Hrv? hrv,
  Hun? hun,
  Ita? ita,
  Jpn? jpn,
  Kor? kor,
  Nld? nld,
  Per? per,
  Pol? pol,
  Por? por,
  Rus? rus,
  Slk? slk,
  Spa? spa,
  Srp? srp,
  Swe? swe,
  Tur? tur,
  Urd? urd,
  Zho? zho,
}) => Translations(  ara: ara ?? _ara,
  bre: bre ?? _bre,
  ces: ces ?? _ces,
  cym: cym ?? _cym,
  deu: deu ?? _deu,
  est: est ?? _est,
  fin: fin ?? _fin,
  fra: fra ?? _fra,
  hrv: hrv ?? _hrv,
  hun: hun ?? _hun,
  ita: ita ?? _ita,
  jpn: jpn ?? _jpn,
  kor: kor ?? _kor,
  nld: nld ?? _nld,
  per: per ?? _per,
  pol: pol ?? _pol,
  por: por ?? _por,
  rus: rus ?? _rus,
  slk: slk ?? _slk,
  spa: spa ?? _spa,
  srp: srp ?? _srp,
  swe: swe ?? _swe,
  tur: tur ?? _tur,
  urd: urd ?? _urd,
  zho: zho ?? _zho,
);
  Ara? get ara => _ara;
  Bre? get bre => _bre;
  Ces? get ces => _ces;
  Cym? get cym => _cym;
  Deu? get deu => _deu;
  Est? get est => _est;
  Fin? get fin => _fin;
  Fra? get fra => _fra;
  Hrv? get hrv => _hrv;
  Hun? get hun => _hun;
  Ita? get ita => _ita;
  Jpn? get jpn => _jpn;
  Kor? get kor => _kor;
  Nld? get nld => _nld;
  Per? get per => _per;
  Pol? get pol => _pol;
  Por? get por => _por;
  Rus? get rus => _rus;
  Slk? get slk => _slk;
  Spa? get spa => _spa;
  Srp? get srp => _srp;
  Swe? get swe => _swe;
  Tur? get tur => _tur;
  Urd? get urd => _urd;
  Zho? get zho => _zho;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_ara != null) {
      map['ara'] = _ara?.toJson();
    }
    if (_bre != null) {
      map['bre'] = _bre?.toJson();
    }
    if (_ces != null) {
      map['ces'] = _ces?.toJson();
    }
    if (_cym != null) {
      map['cym'] = _cym?.toJson();
    }
    if (_deu != null) {
      map['deu'] = _deu?.toJson();
    }
    if (_est != null) {
      map['est'] = _est?.toJson();
    }
    if (_fin != null) {
      map['fin'] = _fin?.toJson();
    }
    if (_fra != null) {
      map['fra'] = _fra?.toJson();
    }
    if (_hrv != null) {
      map['hrv'] = _hrv?.toJson();
    }
    if (_hun != null) {
      map['hun'] = _hun?.toJson();
    }
    if (_ita != null) {
      map['ita'] = _ita?.toJson();
    }
    if (_jpn != null) {
      map['jpn'] = _jpn?.toJson();
    }
    if (_kor != null) {
      map['kor'] = _kor?.toJson();
    }
    if (_nld != null) {
      map['nld'] = _nld?.toJson();
    }
    if (_per != null) {
      map['per'] = _per?.toJson();
    }
    if (_pol != null) {
      map['pol'] = _pol?.toJson();
    }
    if (_por != null) {
      map['por'] = _por?.toJson();
    }
    if (_rus != null) {
      map['rus'] = _rus?.toJson();
    }
    if (_slk != null) {
      map['slk'] = _slk?.toJson();
    }
    if (_spa != null) {
      map['spa'] = _spa?.toJson();
    }
    if (_srp != null) {
      map['srp'] = _srp?.toJson();
    }
    if (_swe != null) {
      map['swe'] = _swe?.toJson();
    }
    if (_tur != null) {
      map['tur'] = _tur?.toJson();
    }
    if (_urd != null) {
      map['urd'] = _urd?.toJson();
    }
    if (_zho != null) {
      map['zho'] = _zho?.toJson();
    }
    return map;
  }

}

/// official : "摩尔多瓦共和国"
/// common : "摩尔多瓦"

class Zho {
  Zho({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Zho.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Zho copyWith({  String? official,
  String? common,
}) => Zho(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "جمہوریہ مالدووا"
/// common : "مالدووا"

class Urd {
  Urd({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Urd.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Urd copyWith({  String? official,
  String? common,
}) => Urd(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Moldova Cumhuriyeti"
/// common : "Moldova"

class Tur {
  Tur({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Tur.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Tur copyWith({  String? official,
  String? common,
}) => Tur(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Republiken Moldavien"
/// common : "Moldavien"

class Swe {
  Swe({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Swe.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Swe copyWith({  String? official,
  String? common,
}) => Swe(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Република Молдавија"
/// common : "Молдавија"

class Srp {
  Srp({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Srp.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Srp copyWith({  String? official,
  String? common,
}) => Srp(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "República de Moldova"
/// common : "Moldavia"

class Spa {
  Spa({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Spa.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Spa copyWith({  String? official,
  String? common,
}) => Spa(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Moldavská republika"
/// common : "Moldavsko"

class Slk {
  Slk({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Slk.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Slk copyWith({  String? official,
  String? common,
}) => Slk(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Молдова"
/// common : "Молдавия"

class Rus {
  Rus({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Rus.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Rus copyWith({  String? official,
  String? common,
}) => Rus(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "República da Moldávia"
/// common : "Moldávia"

class Por {
  Por({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Por.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Por copyWith({  String? official,
  String? common,
}) => Por(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Republika Mołdawii"
/// common : "Mołdawia"

class Pol {
  Pol({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Pol.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Pol copyWith({  String? official,
  String? common,
}) => Pol(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "جمهوری مولداوی"
/// common : "مولداوی"

class Per {
  Per({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Per.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Per copyWith({  String? official,
  String? common,
}) => Per(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Republiek Moldavië"
/// common : "Moldavië"

class Nld {
  Nld({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Nld.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Nld copyWith({  String? official,
  String? common,
}) => Nld(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "몰도바 공화국"
/// common : "몰도바"

class Kor {
  Kor({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Kor.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Kor copyWith({  String? official,
  String? common,
}) => Kor(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "モルドバ共和国"
/// common : "モルドバ共和国"

class Jpn {
  Jpn({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Jpn.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Jpn copyWith({  String? official,
  String? common,
}) => Jpn(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Repubblica di Moldova"
/// common : "Moldavia"

class Ita {
  Ita({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Ita.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Ita copyWith({  String? official,
  String? common,
}) => Ita(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Moldovai Köztársaság"
/// common : "Moldova"

class Hun {
  Hun({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Hun.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Hun copyWith({  String? official,
  String? common,
}) => Hun(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Moldavija"
/// common : "Moldova"

class Hrv {
  Hrv({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Hrv.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Hrv copyWith({  String? official,
  String? common,
}) => Hrv(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "République de Moldavie"
/// common : "Moldavie"

/// official : "Moldovan tasavalta"
/// common : "Moldova"

class Fin {
  Fin({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Fin.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Fin copyWith({  String? official,
  String? common,
}) => Fin(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Moldova Vabariik"
/// common : "Moldova"

class Est {
  Est({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Est.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Est copyWith({  String? official,
  String? common,
}) => Est(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Republik Moldau"
/// common : "Moldawien"

class Deu {
  Deu({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Deu.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Deu copyWith({  String? official,
  String? common,
}) => Deu(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Republic of Moldova"
/// common : "Moldova"

class Cym {
  Cym({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Cym.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Cym copyWith({  String? official,
  String? common,
}) => Cym(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Moldavská republika"
/// common : "Moldavsko"

class Ces {
  Ces({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Ces.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Ces copyWith({  String? official,
  String? common,
}) => Ces(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "Republik Moldova"
/// common : "Moldova"

class Bre {
  Bre({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Bre.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Bre copyWith({  String? official,
  String? common,
}) => Bre(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// official : "جمهورية مولدوڤا"
/// common : "مولدوڤا"

class Ara {
  Ara({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Ara.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Ara copyWith({  String? official,
  String? common,
}) => Ara(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// ron : "Romanian"

class Languages {
  Languages({
      String? ron,}){
    _ron = ron;
}

  Languages.fromJson(dynamic json) {
    _ron = json['ron'];
  }
  String? _ron;
Languages copyWith({  String? ron,
}) => Languages(  ron: ron ?? _ron,
);
  String? get ron => _ron;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ron'] = _ron;
    return map;
  }

}

/// root : "+3"
/// suffixes : ["73"]

class Idd {
  Idd({
      String? root, 
      List<String>? suffixes,}){
    _root = root;
    _suffixes = suffixes;
}

  Idd.fromJson(dynamic json) {
    _root = json['root'];
    _suffixes = json['suffixes'] != null ? json['suffixes'].cast<String>() : [];
  }
  String? _root;
  List<String>? _suffixes;
Idd copyWith({  String? root,
  List<String>? suffixes,
}) => Idd(  root: root ?? _root,
  suffixes: suffixes ?? _suffixes,
);
  String? get root => _root;
  List<String>? get suffixes => _suffixes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['root'] = _root;
    map['suffixes'] = _suffixes;
    return map;
  }

}

/// MDL : {"name":"Moldovan leu","symbol":"L"}

class Currencies {
  Currencies({
      Mdl? mdl,}){
    _mdl = mdl;
}

  Currencies.fromJson(dynamic json) {
    _mdl = json['MDL'] != null ? Mdl.fromJson(json['MDL']) : null;
  }
  Mdl? _mdl;
Currencies copyWith({  Mdl? mdl,
}) => Currencies(  mdl: mdl ?? _mdl,
);
  Mdl? get mdl => _mdl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_mdl != null) {
      map['MDL'] = _mdl?.toJson();
    }
    return map;
  }

}

/// name : "Moldovan leu"
/// symbol : "L"

class Mdl {
  Mdl({
      String? name, 
      String? symbol,}){
    _name = name;
    _symbol = symbol;
}

  Mdl.fromJson(dynamic json) {
    _name = json['name'];
    _symbol = json['symbol'];
  }
  String? _name;
  String? _symbol;
Mdl copyWith({  String? name,
  String? symbol,
}) => Mdl(  name: name ?? _name,
  symbol: symbol ?? _symbol,
);
  String? get name => _name;
  String? get symbol => _symbol;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['symbol'] = _symbol;
    return map;
  }

}

/// common : "Moldova"
/// official : "Republic of Moldova"
/// nativeName : {"ron":{"official":"Republica Moldova","common":"Moldova"}}

class Name {
  Name({
      String? common, 
      String? official, 
      NativeName? nativeName,}){
    _common = common;
    _official = official;
    _nativeName = nativeName;
}

  Name.fromJson(dynamic json) {
    _common = json['common'];
    _official = json['official'];
    _nativeName = json['nativeName'] != null ? NativeName.fromJson(json['nativeName']) : null;
  }
  String? _common;
  String? _official;
  NativeName? _nativeName;
Name copyWith({  String? common,
  String? official,
  NativeName? nativeName,
}) => Name(  common: common ?? _common,
  official: official ?? _official,
  nativeName: nativeName ?? _nativeName,
);
  String? get common => _common;
  String? get official => _official;
  NativeName? get nativeName => _nativeName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['common'] = _common;
    map['official'] = _official;
    if (_nativeName != null) {
      map['nativeName'] = _nativeName?.toJson();
    }
    return map;
  }

}

/// ron : {"official":"Republica Moldova","common":"Moldova"}

class NativeName {
  NativeName({
      Ron? ron,}){
    _ron = ron;
}

  NativeName.fromJson(dynamic json) {
    _ron = json['ron'] != null ? Ron.fromJson(json['ron']) : null;
  }
  Ron? _ron;
NativeName copyWith({  Ron? ron,
}) => NativeName(  ron: ron ?? _ron,
);
  Ron? get ron => _ron;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_ron != null) {
      map['ron'] = _ron?.toJson();
    }
    return map;
  }

}

/// official : "Republica Moldova"
/// common : "Moldova"

class Ron {
  Ron({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Ron.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Ron copyWith({  String? official,
  String? common,
}) => Ron(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}