import 'dart:async';

import 'package:flutter/material.dart';

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

class _MyHomePageState extends State<MyHomePage> {
  bool isFirst = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //it is not used for button click
    // Timer(Duration(seconds: 4), () {
    //   reload();
    // });
  }

  void reload() {
    setState(() {
      //isFirst = false;

      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animation Cross Fade Widget Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                duration: Duration(seconds: 2),
                firstChild: Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey.shade400,
                ),
                secondChild: Image.asset(
                  'assets/images/boy.png',
                  width: 200,
                  height: 200,
                  //width: 100,
                  //height: 100,
                ),

                // if size of two child is different
                //sizeCurve: Curves.fastOutSlowIn,

                //if size are same
                firstCurve: Curves.easeInOut,
                secondCurve: Curves.bounceInOut,
                //crossFadeState: CrossFadeState.showSecond,
                crossFadeState: isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              ElevatedButton(
                  onPressed: () {
                    reload();
                  },
                  child: Text('Show'))
            ],
          ),
        ));
  }
}
