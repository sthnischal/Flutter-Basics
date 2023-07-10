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
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Count : $count',
            style: TextStyle(fontSize: 34),
          ),
          ElevatedButton(
              onPressed: () {
                //count++;
                //count = count +1;
                //count +=1;

                setState(() {
                  count++;
                  print(count);
                });
              },
              child: Text('Incremt Count'))
        ],
      )),
    );
  }
}
