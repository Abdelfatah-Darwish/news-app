import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
        image: 'assets/images/cards/entertainment.jpg',
        categoryName: 'Entertainment'),
    CategoryModel(
        image: 'assets/images/cards/health.jpg', categoryName: 'Health'),
    CategoryModel(
        image: 'assets/images/cards/science.jpg', categoryName: 'Science'),
    CategoryModel(
        image: 'assets/images/cards/technology.jpg',
        categoryName: 'Technology'),
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
