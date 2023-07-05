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
  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.green,
      Colors.brown,
      Colors.orange,
      Colors.purpleAccent
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text('Custom Widget'),
        ),
        body: Container(
          child: Column(children: [
            catItems(),
            Contact(),
            SubCatItems(),
            BottomMenu(),
          ]),
        ));
  }
}

class catItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          color: Colors.green,
          child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: SizedBox(
                      width: 100,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
              itemCount: 10,
              scrollDirection: Axis.horizontal),
        ));
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.yellow,
        child: ListView.builder(
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                    title: Text('Name'),
                    subtitle: Text('Mob No.'),
                    trailing: Icon(Icons.delete),
                  ),
                )),
      ),
    );
  }
}

class SubCatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.brown,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11), color: Colors.green),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.green),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.green),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.green),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
