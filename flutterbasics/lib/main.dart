import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterbasics/SplashScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'IntroPage.dart';

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
      //home: SplashScreen(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
        appBar: AppBar(
          title: Text('Range Example'),
        ),
        body: Center(
          child: RangeSlider(
              values: values,
              labels: labels,
              divisions: 10,
              activeColor: Colors.blue,
              inactiveColor: Colors.green.shade100,
              //if max value need to change into 100 otherwise bydefault it is 1.0
              min: 0,
              max: 100,
              onChanged: (newValue) {
                values = newValue;
                print('${newValue.start}, ${newValue.end}');
                setState(() {});
              }),
        ));
  }
}
