import 'package:dio/dio.dart';
import 'package:news_app/model/articles_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=74ecce5ddb1a45aabcc4f8207c2a6105&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromjson(article);
        articlesList.add(articleModel);
      }
      //print(articlesList);
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
