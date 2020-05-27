import 'package:covidtracker/model/covidDataModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CovidDataDetails extends StatelessWidget {
// Declare a field that holds the Todo.
final CovidDataModel covidDataModel;

// In the constructor, require a Todo.
  CovidDataDetails({Key key, @required this.covidDataModel}) : super(key: key);


@override
Widget build(BuildContext context) {
  return new Scaffold(
    appBar: new AppBar(
      title: new Text(covidDataModel.country,style: TextStyle(fontSize:18.0, fontWeight: FontWeight.bold, color: Colors.white)),
      backgroundColor: Colors.lightGreen,
    ),
    //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
    body: new Container(
      padding: new EdgeInsets.all(8.0),

        child: new Column(
          children: <Widget>[
            new Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.redAccent, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: new Container(
                padding: new EdgeInsets.all(16.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Country : '+ covidDataModel.country,style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                    ),

                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Cases : '+ covidDataModel.cases,style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Todays Cases : '+ covidDataModel.todayCases,style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Deaths : '+ covidDataModel.deaths,style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Todays Deaths : '+ covidDataModel.todayDeaths,style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Recovered : '+ covidDataModel.recovered,style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Critical : '+ covidDataModel.critical,style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                    ),


                  ],
                ),
              ),
            ),

          ],
        ),

    ),
  );
}
}
