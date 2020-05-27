import 'dart:core';


class CovidDataModel {

  String country;
  CountryInfo countryInfo;
  String cases;
  String todayCases;
  String deaths;
  String todayDeaths;
  String recovered;
  String critical;

  CovidDataModel( {
    this.country,
    this.countryInfo,
    this.cases,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.critical
  });

  factory CovidDataModel.fromJson(Map<String,dynamic> json) {
    return CovidDataModel(
      country: json['country'],
      countryInfo: CountryInfo.fromJson(json['countryInfo']),
      cases:json['cases'].toString(),
      todayCases: json['todayCases'].toString(),
      deaths: json['deaths'].toString(),
      todayDeaths: json['todayDeaths'].toString(),
      recovered: json['recovered'].toString(),
      critical: json['critical'].toString(),
    );
  }
}



class CountryInfo {
  String iso3;
  String id;
  String flag;

  CountryInfo({
    this.id,
    this.iso3,
    this.flag
  }) ;

  factory CountryInfo.fromJson(Map<String, dynamic> json){
    return new CountryInfo(
      id: json['id'].toString(),
      iso3: json['iso3'],
      flag: json['flag'],
    );
  }
}


