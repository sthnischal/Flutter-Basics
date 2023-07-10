import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class DashBoardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      DashBoardState(); // for single line return
  // for multiple type return keyword also
}

class DashBoardState extends State<DashBoardScreen> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Calculation'),
        ),
        body: Container(
          color: Colors.blue.shade100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());

                              var sum = no1 + no2;

                              result = 'The Sum of $no1 and $no2 is $sum';
                              setState(() {});
                            },
                            child: Text('Add')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());

                              var diff = no1 - no2;

                              result =
                                  'The difference between $no1  and $no2 is $diff';
                              setState(() {});
                            },
                            child: Text('Sub')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());

                              var product = no1 * no2;

                              result =
                                  'The product of $no1  and $no2 is $product';
                              setState(() {});
                            },
                            child: Text('Mul')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());

                              var times = no1 / no2;

                              result =
                                  'The $no1 can be divided by $no2, ${times.toStringAsFixed(2)} times.';
                              setState(() {});
                            },
                            child: Text('Div')),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(21),
                    child: Text(
                      '$result',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
