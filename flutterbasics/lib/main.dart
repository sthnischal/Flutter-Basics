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
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  //'Current Time: ${time.year}',
                  //'Current Time: ${time.hour}:${time.minute}:${time.second}',
                  //'Current Time: ${DateFormat('Hms').format(time)}',
                  //'Current Time: ${DateFormat('jms').format(time)}',
                  //'Current Time: ${DateFormat('QQQQ').format(time)}',
                  //'Current Time: ${DateFormat('yMMMMEEEEd').format(time)}',
                  //'Current Time: ${DateFormat('EEEE').format(time)}',
                  //'Current Time: ${DateFormat('MMMM').format(time)}',

                  'Current Time: ${DateFormat('yMMMMd').format(time)}', //use jms or Hms also
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text('Current Time'))
              ],
            ),
          ),
        ));
  }
}

void setState(Null Function() param0) {}
