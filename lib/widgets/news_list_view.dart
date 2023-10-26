import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });
  final List<ArticleModel> articles = const [
    ArticleModel(
      image: 'assets/images/01.cards/entertaiment.avif',
      title:
          'The Floyd-Warshall algorithm can be applied to both directed and undirected graphs. The only difference lies in how you constructthe initial graph representation to account for the undirected nature.',
      subTitle:
          'نفس الطريقة التى بالاعلى؛ سواء فى الحل الرياضى او كود بايثون مع مراعة الخطوة الاولى عند ادخال قيم الجراف.',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: articles.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, indexed) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 12,
            ),
            child: NewsTile(
              articleModel: articles[indexed],
            ),
          );
        });
  }
}
