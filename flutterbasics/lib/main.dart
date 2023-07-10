import 'dart:math';

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

class DashBoardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      DashBoardState(); // for single line return
  // for multiple type return keyword also
}

class DashBoardState extends State<DashBoardScreen> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 300,
            minWidth: 200,
            maxHeight: 300,
            minHeight: 100,
            //   maxWidth: 200,
            //   maxHeight: 100,
            // ),
            // child: Text(
            //   'Hello World Hello World Hello World Hello World Hello World Hello World Hello World',
            //   style: TextStyle(fontSize: 21, overflow: TextOverflow.fade),
            // ),
          ),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
                'Click Me Click Me Click Me Click Me Click Me Click Me Click Me'),
          ),
        ));
  }
}
