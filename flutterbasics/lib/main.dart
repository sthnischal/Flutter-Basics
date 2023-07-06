import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Container(
          width: 300,
          height: 200,
          //width: double.infinity,
          // height: double.infinity,
          color: Colors.blueGrey,
          child: Stack(
            children: [
              Positioned(
                bottom: 41,
                //right: 41,
                left: 41,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}
