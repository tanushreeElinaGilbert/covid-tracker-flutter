import 'package:flutter/material.dart';



Card makeDashboardItem(String title, IconData icon, String routes, BuildContext context) {
  return Card(
      elevation: 1.0,
      margin: new EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.green),
//        decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
        child: new InkWell(
          splashColor: Colors.lightGreen,
          onTap: () {
            Navigator.pushReplacementNamed(context,routes);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              SizedBox(height: 50.0),
              Center(
                  child: Icon(
                    icon,
                    size: 40.0,
                    color: Colors.white,
                  )),
              SizedBox(height: 20.0),
              new Center(
                child: new Text(title,
                    style:
                    new TextStyle(fontSize: 18.0, color: Colors.white)),
              )
            ],
          ),
        ),
      ));
}