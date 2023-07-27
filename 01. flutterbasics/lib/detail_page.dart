import 'package:flutter/Material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail'),
        ),
        body: Container(
          child: Hero(
              tag: 'background',
              child: Image.asset('assets/images/mountain.jpg')),
        ));
  }
}
