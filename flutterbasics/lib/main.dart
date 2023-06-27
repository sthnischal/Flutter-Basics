import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Types of Button in Flutter'),
      ),
      body:
          //TextButton(
          // child: Text('Click Here'),
          //  onPressed: () {
          //    print('Text Button Presssed');
          //  },
          //  onLongPress: () {
          //    print('Long Pressed button');
          //  },
          //),

          //ElevatedButton(
          //  child: Text('Elevated Button'),
          //  onPressed: () {
          //    print('Elevated Button Pressed');
          //  },
          //),

          OutlinedButton(
        child: Text('Click Here'),
        onPressed: () {
          print('Outlined Button Pressed');
        },
      ),
    );
  }
}
