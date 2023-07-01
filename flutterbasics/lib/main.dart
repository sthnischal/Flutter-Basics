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
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue.shade50,
          child: Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  //borderRadius: BorderRadius.circular(11),
                  //borderRadius: BorderRadius.only(topLeft: Radius.circular(21),bottomRight: Radius.circular(21))),
                  //borderRadius: BorderRadius.all(Radius.circular(21)),

                  border: Border.all(
                    width: 2,
                    color: Colors.red,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 11, color: Colors.grey, spreadRadius: 6),
                  ],
                  shape: BoxShape.circle),
            ),
          ),
        ));
  }
}
