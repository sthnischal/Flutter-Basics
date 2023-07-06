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
        body: Container(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.blueGrey,
              ),
              // Container(
              //   width: 160,
              //   height: 160,
              //   color: Colors.grey,
              // ),
              Positioned(
                left: 21,
                top: 21,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ));
  }
}
