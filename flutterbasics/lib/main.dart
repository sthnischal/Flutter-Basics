import 'package:flutter/material.dart';
import 'package:flutterbasics/ui_helper/util.dart';
import 'package:flutterbasics/widgets/rounded_btn.dart';
import 'package:intl/intl.dart';
import 'package:flutter/widgets.dart';

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 50,
                child: RoundedButton(
                  btnName: 'Play',
                  icon: Icon(Icons.play_arrow),
                  callback: () {
                    print('Logged in!!');
                  },
                  textStyle: mTextStyle16(),
                ),
              ),
              Container(
                height: 11,
              ),
              Container(
                width: 150,
                height: 50,
                child: RoundedButton(
                  btnName: 'Press',
                  // icon: Icon(Icons.play_arrow),
                  callback: () {
                    print('Playing');
                  },
                  bgColor: Colors.orange,
                  textStyle: mTextStyle21(),
                ),
              )
            ],
          ),
        ));
  }
}
