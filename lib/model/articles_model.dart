class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String? articalUrl;

  ArticleModel(
      {required this.articalUrl,
      required this.image,
      required this.title,
      required this.subTitle});

  factory ArticleModel.fromjson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
      articalUrl: json['url'],
    );
  }
}
