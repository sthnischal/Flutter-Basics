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
    var arrNames = ['Ram', 'Shyam', 'Hari', 'Gopal', 'Sita', 'Sita'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
              fontFamily: 'SquarePeg', //using custom font SquarePeg
              fontSize: 55,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
