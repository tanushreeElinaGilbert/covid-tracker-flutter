import 'package:covidtracker/model/indData.dart';
import 'package:covidtracker/model/indiaData.dart';
import 'package:flutter/material.dart';

import 'DistrictScreen.dart';

class StateDisplayList extends StatelessWidget {
  final List<IndiaData> state;
  final Data1 indData;

  StateDisplayList({Key key, this.state, this.indData}) : super(key: key);

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
                  child: Text('Country : '+ 'India',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black87)),
                ),

                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('Confirmed : '+ indData.total.confirmed,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('Active : '+ indData.total.active,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('Deaths : '+ indData.total.deaths,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                ),

                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('Recovered : '+ indData.total.recovered,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
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
                  onTap: () {
                    print(state[index].state);
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) {
                         return DistrictScreen(state: state[index]);
                        },
                      ),
                    );
                  },
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
                                  child: Text(state[index].state,style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black87)),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text("Confirmed : " + state[index].confirmed,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text("Deaths : " + state[index].deaths,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
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
    return new ListView.builder(
        itemCount: state == null ? 0 : state.length,
        itemBuilder: (BuildContext context, int index) {
          return new InkWell(
            onTap: () {
              print(state[index].state);
//              Navigator.push(
//                context,
//                new MaterialPageRoute(
//                  builder: (context) {
//                    return new OtherClass(id[index], video[index]);
//                  },
//                ),
//              );
            },
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
                            child: Text(state[index].state,style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black87)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text("Confirmed : " + state[index].confirmed,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text("Deaths : " + state[index].deaths,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black87)),
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
        });
  }

}