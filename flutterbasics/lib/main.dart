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
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            headline2: TextStyle(
                fontSize: 21, fontWeight: FontWeight.bold, color: Colors.green),
            subtitle1: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
            subtitle2: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Colors.orange),
          )),
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
        body: Column(
          children: [
            // Text(
            //   'Text 1',
            //   style: Theme.of(context).textTheme.headline1,
            // ),
            Text(
              'Text 1',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: Colors.orange),
            ),
            Text(
              'Text 2',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text('Text 3', style: Theme.of(context).textTheme.headline2),
            Text(
              'Text 4',
              //style: Theme.of(context).textTheme.subtitle2
              //style: mTextStyle21(), //loading from util.dart file
              style: mTextStyle11(textColor: Colors.blue),
            ),
          ],
        ));
  }
}
