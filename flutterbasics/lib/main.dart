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
          title: Text('Hello'),
        ),
        body:
            // Padding(
            //   padding: const EdgeInsets.only(top: 11, left: 15),
            //   //padding: const EdgeInsets.all(11),
            //   child: Text(
            //     'Hello World',
            //     style: TextStyle(fontSize: 25),
            //   ),
            // )

            Column(children: [
          Row(
            children: [
              Container(
                color: Colors.blueGrey,
                margin: EdgeInsets.all(11),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Text(
                    'Hello World 1,1',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                margin: EdgeInsets.all(11),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Text(
                    'Hello World 1,2',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.blueGrey,
                margin: EdgeInsets.all(11),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Text(
                    'Hello World 2,1',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                margin: EdgeInsets.all(11),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Text(
                    'Hello World 2,2',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ]));
  }
}
