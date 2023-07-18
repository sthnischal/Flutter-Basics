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
  late Animation animation; //animation variable
  late AnimationController animationController; //animation controller

  late Animation colorAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(
        vsync: this,
        duration: Duration(
          seconds: 10,
        ));
    animation = Tween(begin: 200.0, end: 0.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.orange)
        .animate(animationController);

    animationController.addListener(() {
      print(animation.value);
      setState(() {});
    });

    //start animation controller
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tween'),
        ),
        body: Center(
          child: Container(
            //width: 200,
            //height: 200,
            width: animation.value,
            height: animation.value,

            //color: Colors.blue,
            color: colorAnimation.value,
          ),
        ));
  }
}
