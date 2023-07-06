import 'package:flutter/material.dart';

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
          width: double.infinity,
          height: double.infinity,
          child: Wrap(
            //direction: Axis.vertical,
            direction: Axis.horizontal,
            //alignment: WrapAlignment.center,
            //alignment: WrapAlignment.spaceEvenly,
            //alignment: WrapAlignment.spaceBetween,
            alignment: WrapAlignment.spaceAround,
            spacing: 11,
            runSpacing: 11,
            children: [
              Container(
                width: 70,
                height: 70,
                color: Colors.deepOrange,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.brown,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.blue,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.yellow,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.green,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.grey,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.red,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.pink,
              )
            ],
          ),
        ));
  }
}
