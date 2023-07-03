import 'package:flutter/material.dart';
import 'package:flutterbasics/ui_helper/util.dart';

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
    var arrNames = ['Ram', 'Shyam', 'Hari', 'Gopal', 'Sita', 'Sita'];

    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Center(
          child: Card(
            shadowColor: Colors.green,
            elevation: 12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hello World',
                style: TextStyle(fontSize: 45),
              ),
            ),
          ),
        ));
  }
}
