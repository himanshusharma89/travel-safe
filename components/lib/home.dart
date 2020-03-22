import 'package:flutter/material.dart';
import 'package:travel_safe/screens/maps.dart';
import 'package:travel_safe/panicButton.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Travel Safe",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>AnimateCamera(13.0, 77.0)));
        },
        tooltip: 'Increment',
        child: Icon(Icons.map),
      ), 
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(child: PanicButton())
        ],
      )
    );
  }
}