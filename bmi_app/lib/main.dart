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
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI'),
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BMI',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                ),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                      label: Text('Enter Your Weight (in Kgs)'),
                      prefixIcon: Icon(Icons.line_weight)),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text('Enter your Height (in feet)'),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    label: Text('Enter Your Height (in inch)'),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Calculate')),
                SizedBox(
                  height: 16,
                ),
                Text('data'),
              ],
            ),
          ),
        ));
  }
}
