import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/custom_tag.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/image_container.dart';

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
        ImageContainer(
          height: MediaQuery.of(context).size.height * 0.45,
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          imageUrl: Article.articles[0].imageUrl,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTag(
                    backgroundColor: Colors.grey.withAlpha(150),
                    children: [
                      Text('News of the day',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white))
                    ])
              ]),
        )
      ]),
    );
  }
}
