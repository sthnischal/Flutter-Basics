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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Clip RRECT'),
        ),
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(21),
            //borderRadius: BorderRadius.all(Radius.elliptical(21, 71)),
            //borderRadius: BorderRadius.only(
            //    topLeft: Radius.circular(21), bottomRight: Radius.circular(21)),

            child:
                // Container(
                //   color: Colors.grey,
                //   width: 200,
                //   height: 200,
                // ),
                Image.asset(
              'assets/images/mountain.jpg',
              width: 300,
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
        ));
  }
}
