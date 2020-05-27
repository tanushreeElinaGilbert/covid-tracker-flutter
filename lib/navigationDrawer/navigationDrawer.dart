import 'package:covidtracker/navigationDrawer/createDrawerHeader.dart';
import 'package:flutter/material.dart';
import 'package:covidtracker/navigationDrawer/createDrawerBodyItem.dart';
import 'package:covidtracker/routes.dart';

class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Icons.home,
            text: 'Dashboard',
            onTap: () =>
                Navigator.pushReplacementNamed(context, routes.home),
          ),
          createDrawerBodyItem(
            icon: Icons.equalizer,
            text: 'Covid 19 Data',
            onTap: () =>
                Navigator.pushReplacementNamed(context, routes.covidData),
          ),
          createDrawerBodyItem(
            icon: Icons.equalizer,
            text: 'Covid 19 India Data',
            onTap: () =>
                Navigator.pushReplacementNamed(context, routes.covidIndia),
          ),

        ],
      ),
    );
  }


}