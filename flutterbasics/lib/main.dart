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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 20, 37, 229)),
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
          title: Text('Row and Column Example'),
        ),
        body:
            // Container(
            //   child: ElevatedButton(
            //     child: Text('Click Me'),
            //     onPressed: () {
            //       print('Click on Button');
            //     },
            //   ),
            // )

            //Inkwell used for clickable into any widget
            Center(
                child: InkWell(
                    onTap: () {
                      print('Tapped on Container');
                    },
                    onLongPress: () {
                      print('Long Pressed on Container');
                    },
                    onDoubleTap: () {
                      print('Double Tapped on Container');
                    },
                    child: Container(
                        width: 200,
                        height: 200,
                        color: Colors.amber,
                        child: Center(
                            child: InkWell(
                                onTap: () {
                                  print('Text Widget Tapped');
                                },
                                child: Text(
                                  'Click Me',
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )))))));
  }
}
