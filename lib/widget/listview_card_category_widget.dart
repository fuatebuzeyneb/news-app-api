import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/widget/card_category_widget.dart';

class ListviewCardCategory extends StatelessWidget {
  const ListviewCardCategory({
    super.key,
  });
  final List<CategoryModel> categorys = const [
    CategoryModel(
        categoryName: 'Business', imagePath: 'assets/images/business.jpeg'),
    CategoryModel(
        categoryName: 'Sports', imagePath: 'assets/images/sports.jpg'),
    CategoryModel(
        categoryName: 'entertainment',
        imagePath: 'assets/images/entertainment.jpg'),
    CategoryModel(
        categoryName: 'science', imagePath: 'assets/images/science.jpg'),
    CategoryModel(
        categoryName: 'technology', imagePath: 'assets/images/technology.jpg'),
    CategoryModel(
        categoryName: 'health', imagePath: 'assets/images/health.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        itemCount: categorys.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CardcategoryWidget(
            category: categorys[index],
          );
        },
      ),
    );
  }
}
