import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';

class MyProfileScreen extends StatelessWidget {
  var nameFromHome;
  MyProfileScreen(this.nameFromHome);
  //constructor name is same as class name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyProfile--Second Screen'),
      ),
      body: Container(
        color: Colors.blueGrey.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome, $nameFromHome',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(
                width: 11,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
