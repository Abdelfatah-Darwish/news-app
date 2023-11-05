import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/new_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewServices(Dio()).getNews(),
        builder: (context, snapShot) {
          return NewsListView(
            articles: snapShot.data ?? [],
          );
        });
    // isLoading
    //     ? const SliverToBoxAdapter(
    //         child: Center(child: CircularProgressIndicator()))
    //     : NewsListView(
    //         articles: articles,
    //       );
  }
}
