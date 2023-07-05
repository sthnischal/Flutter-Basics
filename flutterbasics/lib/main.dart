import 'package:flutter/material.dart';
import 'package:flutterbasics/ui_helper/util.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlutterApp",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  callBack() {
    print('Clicked from callback function');
  }

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.green,
      Colors.brown,
      Colors.orange,
      Colors.purpleAccent
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: ElevatedButton(
          child: Text('Click Me!'),
          onPressed: callBack,
          //() {
          //print('Clicked');
          //}
        ));
  }
}
