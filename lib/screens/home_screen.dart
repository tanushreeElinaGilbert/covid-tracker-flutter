import 'package:covidtracker/navigationDrawer/navigationDrawer.dart';
import 'package:covidtracker/screens/makeDashboardItem.dart';
import 'package:flutter/material.dart';
import 'package:covidtracker/routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Dashboard")),
      body: new Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount:2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
          makeDashboardItem("Covid 19 Data", Icons.equalizer,routes.covidData,context),
            makeDashboardItem("India Data", Icons.equalizer,routes.covidIndia,context),

          ]),
      ),
        drawer: navigationDrawer(),

    );
  }

}



