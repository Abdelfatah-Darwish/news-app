import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/new_services.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  NewServices(Dio()).getNews();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
