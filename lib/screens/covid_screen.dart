import 'dart:convert';
import 'package:covidtracker/navigationDrawer/navigationDrawer.dart';
import 'package:covidtracker/screens/covidDataDetails.dart';
import 'package:http/http.dart' as http;
import 'package:covidtracker/model/covidDataModel.dart';
import 'package:covidtracker/rest_ds.dart';
import 'package:flutter/material.dart';



class CovidCountryScreen extends StatefulWidget {

@override
State<StatefulWidget> createState() {
  // TODO: implement createState
  return new HomePage();
}

}

class HomePage extends State<CovidCountryScreen> {
String subtext;
  Future<List<CovidDataModel>> _fetchData() async {
//    var response = await http.get(uri);
    var response = await http.get(RestDatasource.Covid_URL);

    if (response.statusCode == 200) {
      final items = json.decode(response.body).cast<Map<String, dynamic>>();
      List<CovidDataModel> listOfCovidData = items.map<CovidDataModel>((json) {
        return CovidDataModel.fromJson(json);
      }).toList();
      for (int j = 0; j < listOfCovidData.length; j++){
        CovidDataModel covidDataModel = listOfCovidData[j];
        print(covidDataModel.country);
        print(covidDataModel.countryInfo.iso3);

      }
      return listOfCovidData;
    } else {
      throw Exception('Failed to load internet');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid 19 Data (Countries)',style: TextStyle(fontSize:18.0, fontWeight: FontWeight.bold, color: Colors.white)),
      ),
      drawer: navigationDrawer(),
      body: FutureBuilder<List<CovidDataModel>>(
        future: _fetchData(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());

          return ListView(
            children: snapshot.data
                .map((covidData) => ListTile(

              title: Text(covidData.country != null ? covidData.country : "No data",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black)),

              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => CovidDataDetails(covidDataModel: covidData),

                  ),
                );
//                Navigator.pushNamed(context,routes.customerDetails,arguments: user);
              },

//              subtitle: Column(children: <Widget>[
//              Text(user.cases !=null  ? "Total Cases  "+ user.cases : "" ,style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black87)),
//              Text(user.todayCases !=null  ? "Today's Cases  "+ user.todayCases : "" ,style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black87)),
//              Align(
//                    alignment: Alignment.centerLeft,
//
//                )
//              ],
//              ),
              subtitle: Text(covidData.cases !=null  ? "Total Cases  "+ covidData.cases : "" ,style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black87) ),

//              subtitle: Text((user.countryInfo !=null && user.countryInfo.iso3 != null ) ? "Total Cases  "+ user.countryInfo.iso3 : "No data",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.black87)),
              leading: Padding(
                padding: const EdgeInsets.all(0.0),
                child: SizedBox(
                  height: 500.0,
                  width: 100.0,
                  child: covidData.countryInfo.flag == null
                      ? Image(
                    image: AssetImage('images/no_image_available.png'),
                      fit: BoxFit.cover
                  )
                      : Image.network(covidData.countryInfo.flag, fit: BoxFit.cover),
                ),

              ),

            ))
                .toList(),

          );
        },
      ),
    );
  }

  @override
  void initState() {
    _fetchData();
    // TODO: implement initState
    super.initState();

  }




}