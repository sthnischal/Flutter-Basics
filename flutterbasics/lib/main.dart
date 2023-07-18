import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterbasics/detail_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  var nameController = TextEditingController();
  static const String KEYNAME = 'name';
  var nameValue = 'No Value Saved';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shared Pref'),
        ),
        body: Container(
          child: Center(
            child: SizedBox(
              width: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                          label: Text('Name'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                          )),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          var name = nameController.text.toString();
                          var prefs = await SharedPreferences.getInstance();

                          //prefs.setString('name', name);
                          prefs.setString(KEYNAME, name);
                          // if direct calling of controller
                          //prefs.setString('name', nameController.toString());
                        },
                        child: Text('Save')),
                    SizedBox(
                      height: 11,
                    ),
                    Text(nameValue),
                  ]),
            ),
          ),
        ));
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString('KEYNAME');
    //nameValue = getName!;
    //nameValue = getName !=null ? getName:'No Value Saved' ;
    nameValue = getName ?? 'No Value Saved';
    setState(() {});
  }
}
