import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import '../views/webView.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewPage(url: articleModel.url),
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                articleModel.image ?? 'assets/toza.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/toza.jpg',
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                },
              )),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subTitle ?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          )
        ],
      ),
    );
  }
}
