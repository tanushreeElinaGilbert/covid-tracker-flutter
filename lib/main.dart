import 'package:covidtracker/screens/covidDataDetails.dart';
import 'package:covidtracker/screens/home_screen.dart';
import 'package:covidtracker/screens/india_covid_screen.dart';
import 'package:covidtracker/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:covidtracker/routes.dart';

import 'screens/covid_screen.dart';

void main() => runApp(new LoginApp());

class LoginApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Covid Tracker',
      theme: new ThemeData(
        primarySwatch: Colors.lightGreen,
      ),

//      routes: routes,
      routes:  {
        routes.home: (context) => HomeScreen(),
        routes.splash: (context) => SplashScreen(),
         routes.covidData: (context) => CovidCountryScreen(),
        routes.home1: (context) => HomeScreen(),
        routes.covidDataDetail: (context) => CovidDataDetails(covidDataModel: null),
        routes.covidIndia: (context) => IndiaCovidScreen(),
      },
    );
  }


}