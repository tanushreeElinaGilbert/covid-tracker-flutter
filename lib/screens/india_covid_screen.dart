import 'package:covidtracker/model/indData.dart';
import 'package:covidtracker/screens/stateDisplayList.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'package:covidtracker/navigationDrawer/navigationDrawer.dart';
import 'package:http/http.dart' as http;
import 'package:covidtracker/rest_ds.dart';
import 'package:flutter/material.dart';

class IndiaCovidScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePage();
  }

}

class HomePage extends State<IndiaCovidScreen> {

  Future<IndData> _fetchData() async {

    var response = await http.get(RestDatasource.Covid_State_URL);

    if (response.statusCode == 200) {

      return IndData.fromJson(json.decode(response.body));

    } else {
      throw Exception('Failed to load internet');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid 19 India Data (States)',style: TextStyle(fontSize:18.0, fontWeight: FontWeight.bold, color: Colors.white)),
      ),
      drawer: navigationDrawer(),
      body: FutureBuilder<IndData>(
        future: _fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return new StateDisplayList(state: snapshot.data.data.statewise,indData :snapshot.data.data);

          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(child: CircularProgressIndicator());

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