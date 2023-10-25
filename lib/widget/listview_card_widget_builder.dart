import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../model/articles_model.dart';
import '../services/news_services.dart';
import 'listview_card_widget.dart';

class ListviewCardWidgetBuilder extends StatefulWidget {
  const ListviewCardWidgetBuilder({
    super.key,
  });

  @override
  State<ListviewCardWidgetBuilder> createState() =>
      _ListviewCardWidgetBuilderState();
}

class _ListviewCardWidgetBuilderState extends State<ListviewCardWidgetBuilder> {
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
            const CircularProgressIndicator()
          ]))
        : ListviewCardWidget(
            articles: articles,
          );
  }
}
