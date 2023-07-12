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
  var _width = 200.0;

  var _height = 100.0;

  bool flag = true;

  //Color bgColor = Colors.blueGrey;

  Decoration myDecor = BoxDecoration(
      borderRadius: BorderRadius.circular(2), color: Colors.blueGrey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animation Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: _width,
                height: _height,
                // color: bgColor,
                //curve: Curves.fastOutSlowIn,
                //curve: Curves.slowMiddle,
                //curve: Curves.bounceIn,
                //curve: Curves.bounceInOut,
                curve: Curves.bounceOut,
                decoration: myDecor,
                duration: Duration(seconds: 2),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    //for changes toggling
                    if (flag) {
                      _width = 100.0;
                      _height = 200.0;
                      //  bgColor = Colors.orange;

                      myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: Colors.orange,
                      );
                      //for flag value change to original
                      flag = false;
                    } else {
                      _width = 200.0;
                      _height = 100.0;
                      //bgColor = Colors.blueGrey;
                      myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.blueGrey,
                      );
                      flag = true;
                    }
                  });
                },
                child: Text('Animate'),
              )
            ],
          ),
        ));
  }
}
