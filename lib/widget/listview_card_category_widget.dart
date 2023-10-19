import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/widget/card_category_widget.dart';

class ListviewCardCategory extends StatelessWidget {
  const ListviewCardCategory({
    super.key,
  });
  final List<CategoryModel> categorys = const [
    CategoryModel(title: 'Business', imagePath: 'assets/images/business.jpeg'),
    CategoryModel(title: 'Sports', imagePath: 'assets/images/sports.jpeg'),
    CategoryModel(title: 'title', imagePath: 'assets/images/business.jpeg'),
    CategoryModel(title: 'title', imagePath: 'assets/images/sports.jpeg'),
    CategoryModel(title: 'title', imagePath: 'assets/images/business.jpeg'),
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
