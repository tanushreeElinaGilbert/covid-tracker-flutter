import 'package:covidtracker/model/districtData.dart';
import 'package:covidtracker/model/indiaData.dart';
import 'package:flutter/material.dart';

class CityDataDisplayList extends StatelessWidget {
  final List<CityData> state;
  final DistrictData indData;
  final IndiaData stateData;

  CityDataDisplayList({Key key, this.state, this.indData, this.stateData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
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
                  padding: EdgeInsets.all(4.0),
                  child: Text( stateData.state,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black87)),
                ),

                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('Confirmed : '+ stateData.confirmed,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('Active : '+ stateData.active,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('Deaths : '+ stateData.deaths,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                ),

                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('Recovered : '+ stateData.recovered,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: state == null ? 0 : state.length,
              itemBuilder: (BuildContext context, int index) {
                return new InkWell(
//                  onTap: () {
//                    print(state[index].state);
//                    Navigator.push(
//                      context,
//                      new MaterialPageRoute(
//                        builder: (context) {
//                          return DistrictScreen(state: state[index]);
//                        },
//                      ),
//                    );
//                  },
//          return
                  child: new Card(

                      child: new Container(
                        child: new Center(
                            child: new Column(
                              // Stretch the cards in horizontal axis
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(state[index].district,style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black87)),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text("Confirmed : " + state[index].confirmed,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text("Deaths : " + state[index].deceased,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text("Recovered : " + state[index].recovered,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text("Active : " + state[index].active,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                                ),

                              ],
                            )),
                        padding: const EdgeInsets.all(8.0),
                      ),
                      margin: const EdgeInsets.all(8.0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.greenAccent, width:1),
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                );
              }),
        ),
      ],
    );

  }

}