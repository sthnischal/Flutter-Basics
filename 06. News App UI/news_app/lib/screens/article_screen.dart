import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../widgets/custom_tag.dart';
import '../widgets/image_container.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  static const routeName = '/article';
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(children: [
          _NewsHeadline(
            article: article,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            //color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    CustomTag(backgroundColor: Colors.black, children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(article.authorImageUrl),
                      ),
                      SizedBox(width: 10),
                      Text(article.author,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white)),
                    ]),
                    SizedBox(width: 10),
                    CustomTag(backgroundColor: Colors.grey.shade200, children: [
                      Icon(Icons.timer, color: Colors.grey),
                      SizedBox(width: 10),
                      Text(
                          '${DateTime.now().difference(article.createdAt).inHours} h',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ]),
                    SizedBox(width: 10),
                    CustomTag(backgroundColor: Colors.grey.shade200, children: [
                      Icon(Icons.remove_red_eye, color: Colors.grey),
                      SizedBox(width: 10),
                      Text('${article.views}',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ]),
                  ],
                ),
                SizedBox(height: 20),
                Text(article.title,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Text(article.body,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(height: 1.5)),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class _NewsHeadline extends StatelessWidget {
  const _NewsHeadline({
    super.key,
    required this.article,
  });

  final Article article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          CustomTag(backgroundColor: Colors.grey.withAlpha(150), children: [
            Text(article.category,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white)),
          ]),
          SizedBox(height: 10),
          Text(
            article.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.25,
                ),
          ),
          SizedBox(height: 10),
          Text(
            article.subtitle,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
