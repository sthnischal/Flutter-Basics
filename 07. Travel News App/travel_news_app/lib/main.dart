import 'package:flutter/material.dart';

import 'app_styles.dart';
import 'size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLightWhite,
        body: HomeScreen(),
      ),
    );
  }
}

//use shortcut commad for creeating stateful and stateless widget is stl
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        //this safeare is used for top section of phone to not cut in different model
        child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 30),
      children: [],
    ));
  }
}
