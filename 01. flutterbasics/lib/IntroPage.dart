import 'package:flutter/Material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterbasics/my_profile_screen.dart';

import 'main.dart';

class IntroPage extends StatelessWidget {
  @override
  var nameController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Intro'),
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 12),
                TextField(
                  controller: nameController,
                ),
                SizedBox(height: 12),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            //         builder: (context) => MyHomePage(),
                            builder: (context) =>
                                MyProfileScreen(nameController.text.toString()),
                          ));
                    },
                    child: Text('Next')),
              ],
            ),
          ),
        ));
  }
}
