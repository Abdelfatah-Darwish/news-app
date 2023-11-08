// ignore_for_file: dangling_library_doc_comments
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/new_services.dart';
// import 'package:news_app/widgets/news_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {

  /////////////////////////////////////////////////////////////////
  // final List<ArticleModel> articles = const [
  //   ArticleModel(
  //     image: 'assets/images/news/01.jpg',
  //     title:
  //         'The Floyd-Warshall algorithm can be applied to both directed and undirected graphs. The only difference lies in how you constructthe initial graph representation to account for the undirected nature.',
  //     subTitle:
  //         'نفس الطريقة التى بالاعلى؛ سواء فى الحل الرياضى او كود بايثون مع مراعة الخطوة الاولى عند ادخال قيم الجراف.',
  //   ),
  //   ArticleModel(
  //     image: 'assets/images/news/02.jpeg',
  //     title:
  //         'The Floyd-Warshall algorithm can be applied to both directed and undirected graphs. The only difference lies in how you constructthe initial graph representation to account for the undirected nature.',
  //     subTitle:
  //         'نفس الطريقة التى بالاعلى؛ سواء فى الحل الرياضى او كود بايثون مع مراعة الخطوة الاولى عند ادخال قيم الجراف.',
  //   ),
  //   ArticleModel(
  //     image: 'assets/images/news/03.jpeg',
  //     title:
  //         'The Floyd-Warshall algorithm can be applied to both directed and undirected graphs. The only difference lies in how you constructthe initial graph representation to account for the undirected nature.',
  //     subTitle:
  //         'نفس الطريقة التى بالاعلى؛ سواء فى الحل الرياضى او كود بايثون مع مراعة الخطوة الاولى عند ادخال قيم الجراف.',
  //   ),
  //   ArticleModel(
  //     image: 'assets/images/news/04.jpeg',
  //     title:
  //         'The Floyd-Warshall algorithm can be applied to both directed and undirected graphs. The only difference lies in how you constructthe initial graph representation to account for the undirected nature.',
  //     subTitle:
  //         'نفس الطريقة التى بالاعلى؛ سواء فى الحل الرياضى او كود بايثون مع مراعة الخطوة الاولى عند ادخال قيم الجراف.',
  //   ),
  //   ArticleModel(
  //     image: 'assets/images/news/05.jpeg',
  //     title:
  //         'The Floyd-Warshall algorithm can be applied to both directed and undirected graphs. The only difference lies in how you constructthe initial graph representation to account for the undirected nature.',
  //     subTitle:
  //         'نفس الطريقة التى بالاعلى؛ سواء فى الحل الرياضى او كود بايثون مع مراعة الخطوة الاولى عند ادخال قيم الجراف.',
  //   ),
  // ];
 
 ////////////////////////////////////////////////////////////////////////////
 
 
 
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewServices(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: CircularProgressIndicator(
//             strokeAlign: BorderSide.strokeAlignCenter,
//           ))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: articles.length,
//                 (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 24),
//                 child: NewsTile(
//                   articleModel: articles[index],
//                 ),
//               );
//             }),
//           );
//   }
// }
