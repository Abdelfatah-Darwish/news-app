import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
        image: 'assets/images/entertaiment.avif', categoryName: 'entertaiment'),
    CategoryModel(image: 'assets/images/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/images/science.avif', categoryName: 'science'),
    CategoryModel(
        image: 'assets/images/technology.jpeg', categoryName: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, indexed) {
          return CategoryCard(
            category: categories[indexed],
          );
        },
      ),
    );
  }
}
