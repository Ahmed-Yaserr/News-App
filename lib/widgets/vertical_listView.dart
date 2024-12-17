import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/NewsServices.dart';
import 'package:news_app/widgets/news_tile.dart';

class vertical_listView extends StatelessWidget {
  const vertical_listView({super.key, required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context , index){
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: NewsTile(articleModel: articles[index]),
          );
        },),);
  }
}

