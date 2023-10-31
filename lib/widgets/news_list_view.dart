import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });
  final List<ArticleModel> articles = const [
    ArticleModel(
      image: 'assets/images/news/01.jpg',
      title:
          'The Floyd-Warshall algorithm can be applied to both directed and undirected graphs. The only difference lies in how you constructthe initial graph representation to account for the undirected nature.',
      subTitle:
          'نفس الطريقة التى بالاعلى؛ سواء فى الحل الرياضى او كود بايثون مع مراعة الخطوة الاولى عند ادخال قيم الجراف.',
    ),
    ArticleModel(
      image: 'assets/images/news/02.jpeg',
      title:
          'The Floyd-Warshall algorithm can be applied to both directed and undirected graphs. The only difference lies in how you constructthe initial graph representation to account for the undirected nature.',
      subTitle:
          'نفس الطريقة التى بالاعلى؛ سواء فى الحل الرياضى او كود بايثون مع مراعة الخطوة الاولى عند ادخال قيم الجراف.',
    ),
    ArticleModel(
      image: 'assets/images/news/03.jpeg',
      title:
          'The Floyd-Warshall algorithm can be applied to both directed and undirected graphs. The only difference lies in how you constructthe initial graph representation to account for the undirected nature.',
      subTitle:
          'نفس الطريقة التى بالاعلى؛ سواء فى الحل الرياضى او كود بايثون مع مراعة الخطوة الاولى عند ادخال قيم الجراف.',
    ),
    ArticleModel(
      image: 'assets/images/news/04.jpeg',
      title:
          'The Floyd-Warshall algorithm can be applied to both directed and undirected graphs. The only difference lies in how you constructthe initial graph representation to account for the undirected nature.',
      subTitle:
          'نفس الطريقة التى بالاعلى؛ سواء فى الحل الرياضى او كود بايثون مع مراعة الخطوة الاولى عند ادخال قيم الجراف.',
    ),
    ArticleModel(
      image: 'assets/images/news/05.jpeg',
      title:
          'The Floyd-Warshall algorithm can be applied to both directed and undirected graphs. The only difference lies in how you constructthe initial graph representation to account for the undirected nature.',
      subTitle:
          'نفس الطريقة التى بالاعلى؛ سواء فى الحل الرياضى او كود بايثون مع مراعة الخطوة الاولى عند ادخال قيم الجراف.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: NewsTile(
            articleModel: articles[index],
          ),
        );
      }),
    );
  }
}
