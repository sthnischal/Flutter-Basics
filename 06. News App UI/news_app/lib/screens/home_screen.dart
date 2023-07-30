import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  //for route
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: const BottomNavBar(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(padding: EdgeInsets.zero, children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular((20)),
              image: DecorationImage(
                image: NetworkImage(Article.articles[0].imageUrl),
                fit: BoxFit.cover,
              )),
        )
      ]),
    );
  }
}
