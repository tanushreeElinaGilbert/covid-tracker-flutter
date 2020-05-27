import 'package:covidtracker/model/districtData.dart';
import 'package:covidtracker/model/indiaData.dart';
import 'package:covidtracker/screens/cityDataDisplayList.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'package:covidtracker/navigationDrawer/navigationDrawer.dart';
import 'package:http/http.dart' as http;
import 'package:covidtracker/rest_ds.dart';
import 'package:flutter/material.dart';


class DistrictScreen extends StatelessWidget {
// Declare a field that holds the Todo.
  final IndiaData state;
  List<CityData> listOfCityData;

// In the constructor, require a Todo.
  DistrictScreen({Key key, @required this.state}) : super(key: key);

  Future<List<DistrictData>> _fetchData() async {
    var response = await http.get(RestDatasource.Covid_District_URL);

    if (response.statusCode == 200) {
      final items = json.decode(response.body).cast<Map<String, dynamic>>();
      List<DistrictData> listOfCovidData = items.map<DistrictData>((json) {
        return DistrictData.fromJson(json);
      }).toList();

      return listOfCovidData;
    } else {
      throw Exception('Failed to load internet');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid 19 Data (Districts)',style: TextStyle(fontSize:18.0, fontWeight: FontWeight.bold, color: Colors.white)),
      ),
      drawer: navigationDrawer(),
      body: FutureBuilder<List<DistrictData>>(
        future: _fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            for (int j = 0; j < snapshot.data.length; j++) {
              DistrictData covidDataModel = snapshot.data[j];
              if (covidDataModel.state == state.state) {
                listOfCityData = covidDataModel.districtData;
                return new CityDataDisplayList(
                    state: listOfCityData, indData: covidDataModel,stateData: state);
              }
            }
//            if(listOfCityData.length>0)
//            return new CityDataDisplayList(state: listOfCityData,indData :snapshot.data);

          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

