import 'package:flutter/material.dart';
import 'package:news_app/model/articles_model.dart';

import '../views/web_view.dart';

class CardWidget extends StatelessWidget {
  final ArticleModel articleModel;
  const CardWidget({
    super.key,
    required this.articleModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebView(
                        webView: articleModel.articalUrl ??
                            'https://www.linkedin.com/in/fuat-ebuzeyneb-b7b29b282/',
                      )));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                articleModel.image ??
                    'https://lpm.ulm.ac.id/image/desain/empty.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            articleModel.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
