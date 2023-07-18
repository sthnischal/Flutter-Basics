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
  var arrData = [
    //'Ram', 'Shyam', 'Hari', 'Gopal', 'Sita',
    {'name': 'Ram', 'mobno': '123456789', 'unread': '2'},
    {'name': 'shyam', 'mobno': '987654321', 'unread': '1'},
    {'name': 'Hari', 'mobno': '543216798', 'unread': '2'},
    {'name': 'Gopal', 'mobno': '765894321', 'unread': '4'},
    {'name': 'Sita', 'mobno': '098712344', 'unread': '6'},
    {'name': 'Gita', 'mobno': '1239876345', 'unread': '0'},
    {'name': 'Ram', 'mobno': '123456789', 'unread': '2'},
    {'name': 'shyam', 'mobno': '987654321', 'unread': '1'},
    {'name': 'Hari', 'mobno': '543216798', 'unread': '2'},
    {'name': 'Gopal', 'mobno': '765894321', 'unread': '4'},
    {'name': 'Sita', 'mobno': '098712344', 'unread': '6'},
    {'name': 'Gita', 'mobno': '1239876345', 'unread': '0'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mapping List Data'),
        ),
        body: Container(
          child: ListView(
              children: arrData.map((value) {
            return ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(value['name'].toString()),
              subtitle: Text(value['mobno'].toString()),
              trailing: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.green,
                  child: Text(value['unread'].toString())),
            );

            // return Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(21),
            //         color: Colors.blue.shade100,
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Center(child: Text(value)),
            //       ),
            //     ),
            //   ),
            // );
          }).toList()),
        ));
  }
}
