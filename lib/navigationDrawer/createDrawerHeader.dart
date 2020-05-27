import 'package:flutter/material.dart';

Widget createDrawerHeader() {
//  User user = Cache.getCurrentUser("USER", (v) => null);

  var name;
//if(user != null && user.firstName!=null) name = user.firstName;
//else
  name = "Welcome User";
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image:  AssetImage('images/background.jpg'))),
      child: Container(color: Colors.lightGreen,
          child: Stack(children: <Widget>[
            Positioned(
                bottom: 12.0,
                left: 16.0,
                child: Text(name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500))),
          ])));


}
