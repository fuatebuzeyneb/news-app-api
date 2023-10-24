import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/articles_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widget/card_widget.dart';

class ListviewCardWidget extends StatefulWidget {
  const ListviewCardWidget({
    super.key,
  });

  @override
  State<ListviewCardWidget> createState() => _ListviewCardWidgetState();
}

class _ListviewCardWidgetState extends State<ListviewCardWidget> {
  List<ArticleModel> articles = [];
  bool isLooding = true;

  @override
  void initState() {
    super.initState();

    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices(Dio()).getNews();
    isLooding = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return isLooding
        ? SliverToBoxAdapter(
            child: Column(children: [
            SizedBox(
              height: size.height * 0.3,
            ),
            CircularProgressIndicator()
          ]))
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
              return CardWidget(
                articleModel: articles[index],
              );
            }),
          );
  }
}
