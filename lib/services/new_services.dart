// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewServices {
  final Dio dio;
  NewServices(this.dio);

  Future<List<ArticleModel>> getNews() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=bitcoin&apiKey=f336db60ee7e4af29ac6da52055f1fa7');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
