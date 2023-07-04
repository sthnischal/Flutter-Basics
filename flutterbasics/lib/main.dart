import 'package:flutter/material.dart';
import 'package:flutterbasics/ui_helper/util.dart';
import 'package:intl/intl.dart';

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
    var arrColors = [
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.green,
      Colors.brown,
      Colors.orange,
      Colors.purpleAccent
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body:
            //gridviewbuilder directly fetch container with single line of code
            GridView.builder(
          itemBuilder: (context, index) {
            return Container(
              color: arrColors[index],
            );
          },
          itemCount: arrColors.length,
          gridDelegate:
              //SliverGridDelegateWithFixedCrossAxisCount(
              SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            //crossAxisCount: 3,
            mainAxisSpacing: 11,
            crossAxisSpacing: 11,
          ),
        )

        // Column(
        //   children: [
        //     Container(
        //       height: 200,
        //       child: GridView.count(
        //         crossAxisCount: 5,
        //         crossAxisSpacing: 11,
        //         mainAxisSpacing: 11,
        //         children: [
        //           Container(color: arrColors[0]),
        //           Container(color: arrColors[1]),
        //           Container(color: arrColors[2]),
        //           Container(color: arrColors[3]),
        //           Container(color: arrColors[4]),
        //           Container(color: arrColors[5]),
        //           Container(color: arrColors[6]),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       height: 100,
        //     ),
        //     Container(
        //       height: 200,
        //       child: GridView.extent(
        //         maxCrossAxisExtent: 50,
        //         crossAxisSpacing: 11,
        //         mainAxisSpacing: 11,
        //         children: [
        //           Container(color: arrColors[0]),
        //           Container(color: arrColors[1]),
        //           Container(color: arrColors[2]),
        //           Container(color: arrColors[3]),
        //           Container(color: arrColors[4]),
        //           Container(color: arrColors[5]),
        //           Container(color: arrColors[6]),
        //         ],
        //       ),
        //     )
        //   ],
        // )
        );
  }
}
