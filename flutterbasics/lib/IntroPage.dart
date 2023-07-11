import 'package:flutter/Material.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Intro'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 12),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(),
                        ));
                  },
                  child: Text('Next')),
            ],
          ),
        ));
  }
}
