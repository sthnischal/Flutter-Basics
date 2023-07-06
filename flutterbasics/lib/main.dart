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
        body:
            // Row(
            //   children: [
            //     Text(
            //       'Hello ',
            //       style: TextStyle(fontSize: 16, color: Colors.grey),
            //     ),
            //     Text(
            //       'Flutter',
            //       style: TextStyle(
            //           fontSize: 34,
            //           color: Colors.blue,
            //           fontWeight: FontWeight.bold),
            //     ),
            //   ],
            // )
            RichText(
          text: TextSpan(
              style: TextStyle(
                color: Colors.grey,
                fontSize: 21,
              ),
              children: <TextSpan>[
                TextSpan(text: 'Hello '),
                TextSpan(
                    text: 'World!',
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(text: ' Welcome to '),
                TextSpan(
                    text: 'Flutter',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.deepOrange,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'SquarePeg'))
              ]),
        ));
  }
}
