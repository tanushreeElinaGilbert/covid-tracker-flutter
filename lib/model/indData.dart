import 'package:covidtracker/model/indiaData.dart';

class IndData {

  Data1 data;


  IndData(
    this.data,

  );
  factory IndData.fromJson(dynamic json) {
         return IndData(
          Data1.fromJson(json['data']),

      );
  }
}

class Data1 {
  String lastRefreshed;
  Total total;
  List<IndiaData> statewise;

  Data1(
    this.lastRefreshed,
    this.total,
    [this.statewise]

  ) ;
  factory Data1.fromJson(dynamic json) {
//    if (json['statewise'] != null) {
      var tagObjsJson = json['statewise'] as List;
      List<IndiaData> _tags = tagObjsJson.map((tagJson) => IndiaData.fromJson(tagJson)).toList();


      return Data1(
          json['lastRefreshed'],
          Total.fromJson(json['total']),
          _tags
      );
//    }
    }

  }
//  factory Data1[lastRefreshed].fromJson(Map<String, dynamic> json){
//    return new Data1(
//      lastRefreshed: json['lastRefreshed'],
//        total: Total.fromJson(json['total'])
//    );
//  }


class Total {
  String confirmed;
  String deaths;
  String recovered;
  String active;

  Total({
    this.confirmed,
    this.deaths,
    this.recovered,
    this.active,

  }) ;

  factory Total.fromJson(Map<String, dynamic> json){
    return new Total(
      confirmed:json['confirmed'].toString(),
      deaths: json['deaths'].toString(),
      recovered: json['recovered'].toString(),
      active: json['active'].toString(),
    );
  }
}






