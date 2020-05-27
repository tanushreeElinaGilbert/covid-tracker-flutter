class IndiaData {

  String state;
  String confirmed;
  String deaths;
  String recovered;
  String active;

  IndiaData( {
    this.state,
    this.confirmed,
    this.deaths,
    this.recovered,
    this.active,

  });

  factory IndiaData.fromJson(Map<String,dynamic> json) {
    return IndiaData(
      state: json['state'],
      confirmed:json['confirmed'].toString(),
      deaths: json['deaths'].toString(),
      recovered: json['recovered'].toString(),
      active: json['active'].toString(),
    );
  }
}





