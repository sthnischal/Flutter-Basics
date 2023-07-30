import 'package:flutter/material.dart';
import 'package:news_app/screens/article_screen.dart';
import 'package:news_app/widgets/image_container.dart';

import '../models/article_model.dart';
import '../widgets/bottom_nav_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  static const routeName = '/discover';
  @override
  Widget build(BuildContext context) {
    // list for tabbar
    List<String> tabs = ['Health', 'Politics', 'Art', 'Food', 'Science'];

    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        bottomNavigationBar: const BottomNavBar(index: 1),
        //extendBodyBehindAppBar: true,  // it is used for putting any value from top of the screen
        body: ListView(
            padding: EdgeInsets.all(20.0),
            children: [_DiscoverNews(), _CategoryNews(tabs: tabs)]),
      ),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  const _CategoryNews({
    super.key,
    required this.tabs,
  });

  final List<String> tabs;
  @override
  Widget build(BuildContext context) {
    final articles = Article.articles;
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          //indicatorColor: Colors.black,
          indicatorColor: Colors.blue,
          tabs: tabs
              .map(
                (tab) => Tab(
                  icon: Text(
                    tab,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              )
              .toList(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            children: tabs
                .map(
                  (tab) => ListView.builder(
                    shrinkWrap: true,
                    itemCount: articles.length,
                    itemBuilder: (((context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            ArticleScreen.routeName,
                            arguments: articles[index],
                          );
                        },
                        child: Row(
                          children: [
                            ImageContainer(
                              width: 80,
                              height: 80,
                              imageUrl: articles[index].imageUrl,
                              margin: EdgeInsets.all(10.0),
                              borderRadius: 5,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    articles[index].title,
                                    maxLines: 2,
                                    overflow: TextOverflow.clip,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.schedule,
                                        size: 18,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                          '${DateTime.now().difference(articles[index].createdAt).inHours} Hours ago'),
                                      SizedBox(width: 20),
                                      Icon(Icons.visibility, size: 18),
                                      Text(
                                        '${articles[index].views} Views',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    })),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}

class _DiscoverNews extends StatelessWidget {
  const _DiscoverNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *
          0.25, //for top section took 25% of the whole screen
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Discover',
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'News from all over the world',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Search',
                fillColor: Colors.grey.shade100,
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                suffixIcon: RotatedBox(
                  //this widget is used to rotate 90 tune icon
                  quarterTurns: 1,
                  child: Icon(
                    Icons.tune,
                    color: Colors.grey,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                )),
          )
        ],
      ),
    );
  }
}
