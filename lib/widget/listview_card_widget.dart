import 'package:flutter/material.dart';
import 'package:news_app/model/articles_model.dart';
import 'package:news_app/widget/card_widget.dart';

class ListviewCardWidget extends StatelessWidget {
  const ListviewCardWidget({
    super.key,
    required this.articles,
  });

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return CardWidget(
          articleModel: articles[index],
        );
      }),
    );
  }
}
