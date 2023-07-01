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
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(arrNames[index]),
            subtitle: Text('Number'),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return Divider(height: 20, thickness: 2);
        },
      ),
    );
  }
}
