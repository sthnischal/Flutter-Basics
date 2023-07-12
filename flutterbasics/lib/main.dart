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
  var myOpacity = 1.0;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animation Opacity Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: myOpacity,
                duration: Duration(seconds: 2),
                //curve: Curves.slowMiddle,
                //curve: Curves.elasticIn,
                curve: Curves.bounceIn,
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      //toggling with button
                      if (isVisible) {
                        myOpacity = 0.0; //invisible
                        isVisible = false;
                      } else {
                        myOpacity = 1.0; //visible
                        isVisible = true;
                      }
                    });
                  },
                  child: Text('Animate'))
            ],
          ),
        ));
  }
}
