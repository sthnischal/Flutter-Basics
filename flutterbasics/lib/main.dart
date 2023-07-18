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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController
      _animationController; //_ is used for making private variable

  var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 4), lowerBound: 0.5);
    //_animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.addListener(() {
      setState(() {});
    });

    _animationController
        .forward(); //if animation after button click then add this line on onpressed action
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ripple'),
        ),
        body: Center(
            child: Stack(alignment: Alignment.center, children: [
          buildMyContainer(listRadius[0]),
          buildMyContainer(listRadius[1]),
          buildMyContainer(listRadius[2]),
          buildMyContainer(listRadius[3]),
          buildMyContainer(listRadius[4]),
          Icon(
            Icons.add_call,
            color: Colors.blue,
            size: 34,
          )
        ]
                // listRadius.map((radius) => Container(
                //           //width: radius * _animation.value,
                //           //height: radius * _animation.value,
                //           width: radius * _animationController.value,
                //           height: radius * _animationController.value,
                //           decoration: BoxDecoration(
                //               shape: BoxShape.circle,
                //               //color: Colors.blue.withOpacity(1.0 - _animation.value)),
                //               color: Colors.blue
                //                   .withOpacity(1.0 - _animationController.value)),
                //         ))
                //     .toList(),
                )));
  }

  Widget buildMyContainer(radius) {
    return Container(
      //width: radius * _animation.value,
      //height: radius * _animation.value,
      width: radius * _animationController.value,
      height: radius * _animationController.value,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          //color: Colors.blue.withOpacity(1.0 - _animation.value)),
          color: Colors.blue.withOpacity(1.0 - _animationController.value)),
    );
  }
}
