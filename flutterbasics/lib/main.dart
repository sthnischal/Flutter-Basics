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
        body: Wrap(
          direction: Axis.vertical,
          children: [
            //SizedBox.expand(
            SizedBox.square(
              dimension: 100,
              //child: SizedBox.shrink(
              //width: 200,
              //height: 35,
              child: ElevatedButton(
                onPressed: () {
                  print('Button Click');
                },
                child: Text('Click'),
              ),
            ),
            SizedBox(
              //width: 20,
              height: 20,
            ),
            SizedBox.square(
              dimension: 75,
              //child: SizedBox.shrink(
              //width: 200,
              //height: 35,
              child: ElevatedButton(
                onPressed: () {
                  print('Button Click');
                },
                child: Text('Click'),
              ),
            ),
            SizedBox(
              //width: 50,
              height: 50,
            ),
            SizedBox.square(
              dimension: 100,
              //child: SizedBox.shrink(
              //width: 200,
              //height: 35,
              child: ElevatedButton(
                onPressed: () {
                  print('Button Click');
                },
                child: Text('Click'),
              ),
            ),
          ],
        ));
  }
}
