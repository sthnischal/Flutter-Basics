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
        body: Container(
          height: 300,
          width: 300,
          child:
              // Row(
              //   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   //mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   //mainAxisAlignment: MainAxisAlignment.center,
              //   //mainAxisAlignment: MainAxisAlignment.end,
              //   mainAxisAlignment: MainAxisAlignment.start, //default
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       'A',
              //       style: TextStyle(fontSize: 25),
              //     ),
              //     Text(
              //       'B',
              //       style: TextStyle(fontSize: 25),
              //     ),
              //     Text(
              //       'C',
              //       style: TextStyle(fontSize: 25),
              //     ),
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: Text('Click'),
              //     )
              //   ],
              // ),

              //   Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   //mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   //mainAxisAlignment: MainAxisAlignment.center,
              //   //mainAxisAlignment: MainAxisAlignment.end,
              //   //mainAxisAlignment: MainAxisAlignment.start, //default
              //   //crossAxisAlignment: CrossAxisAlignment.start,
              //   crossAxisAlignment: CrossAxisAlignment.stretch,
              //   children: [
              //     Text(
              //       'A',
              //       style: TextStyle(fontSize: 25),
              //     ),
              //     Text(
              //       'B',
              //       style: TextStyle(fontSize: 25),
              //     ),
              //     Text(
              //       'C',
              //       style: TextStyle(fontSize: 25),
              //     ),
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: Text('Click'),
              //     )
              //   ],
              // ),

              Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'R1',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'R2',
                    style: TextStyle(fontSize: 25),
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Click'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Click'),
                      ),
                    ],
                  ),
                  Text(
                    'R3',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              Text(
                'A',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'B',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'C',
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Click'),
              )
            ],
          ),
        ));
  }
}
