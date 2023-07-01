import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlutterApp",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrNames = ['Ram', 'Shyam', 'Hari', 'Gopal', 'Sita', 'Sita'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
        child: CircleAvatar(
          child:
              //Text(
              //  'Hello',
              //  style: TextStyle(color: Colors.black, fontSize: 25),
              Container(
            width: 60,
            height: 60,
            child: Column(
              children: [
                Container(
                    width: 60,
                    height: 40,
                    child: Image.asset('assets/images/boy.png')),
                Text("Name")
              ],
            ),
          ),

          //backgroundImage: AssetImage('assets/images/boy.png'),
          backgroundColor: Colors.lightGreen,
          //radius: 100,
          //minRadius: 50,
          maxRadius: 50,
        ),
      ),
    );
  }
}
