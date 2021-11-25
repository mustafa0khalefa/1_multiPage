import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplepro/UI/home.dart';
import 'package:samplepro/UI/second.dart';
import 'package:samplepro/UI/third.dart';

void main() {
  runApp(new MaterialApp(
    home: myApp(),
  ));
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'navigation',
      routes: <String, WidgetBuilder>{
        '/first': (BuildContext context) => new first(),
        '/second': (BuildContext context) => new second(),
        '/third': (BuildContext context) => new third(),
      },
      home: first(),
    );
  }
}
