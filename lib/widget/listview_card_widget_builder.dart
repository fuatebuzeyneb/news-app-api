import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/articles_model.dart';
import '../services/news_services.dart';
import 'listview_card_widget.dart';

class ListviewCardWidgetBuilder extends StatefulWidget {
  const ListviewCardWidgetBuilder({
    super.key,
    required this.category,
  });
  final String category;

  @override
  State<ListviewCardWidgetBuilder> createState() =>
      _ListviewCardWidgetBuilderState();
}

class _ListviewCardWidgetBuilderState extends State<ListviewCardWidgetBuilder> {
  @override
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListviewCardWidget(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const Text('Error');
        } else {
          return SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.3,
                ),
                const CircularProgressIndicator()
              ],
            ),
          );
        }
      },
    );
  }
}
