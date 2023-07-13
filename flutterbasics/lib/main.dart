import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterbasics/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('3D List'),
        ),
        body: Center(
          child: ListWheelScrollView(
            itemExtent: 200,
            children: arrIndex
                .map((value) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                          child: Text(
                            '$value',
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(21)),
                        //color: Colors.blue,

                        width: double.infinity,
                      ),
                    ))
                .toList(),
            //[
            // Container(
            //   width: 200,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 200,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 200,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 200,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 200,
            //   color: Colors.blue,
            // ),

            //],
            //itemExtent: 100,
          ),
        ));
  }
}
