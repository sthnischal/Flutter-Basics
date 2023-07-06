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
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                //Icons.add_business_rounded,
                //Icons.play_arrow_rounded,
                Icons.play_circle_outline,
                size: 50,
                color: Colors.deepOrange,
              ),
              SizedBox(
                width: 11,
              ),
              FaIcon(
                FontAwesomeIcons.amazon,
                color: Colors.deepOrange,
              ),
              SizedBox(
                width: 11,
              ),
              FaIcon(
                FontAwesomeIcons.calendar,
                color: Colors.deepOrange,
              ),
              SizedBox(
                width: 11,
              ),
              FaIcon(
                FontAwesomeIcons.googlePay,
                size: 50,
                color: Colors.deepOrange,
              )
            ],
          ),
        ));
  }
}
