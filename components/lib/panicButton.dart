import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PanicButton extends StatefulWidget {
  @override
  _PanicButtonState createState() => _PanicButtonState();
}

class _PanicButtonState extends State<PanicButton> {
  int _counter = 0;

  _incrementCounter() {
    setState(() {
      _counter++;
    });
    if (_counter == 3) {
      Firestore.instance.collection('/panicButton').add({'data': "Panic"}).catchError((e) {
        print(e);
      });
      setState(() {
        _counter = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
          color: Colors.blueAccent,
          onPressed: _incrementCounter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Panic Button",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0
              ),
            ),
          ),
        ),
      );
  }
}