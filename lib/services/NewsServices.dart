import 'package:dio/dio.dart';

import '../models/article_model.dart';

class NewsServices{

  final Dio dio;

  NewsServices(this.dio);


  Future<List<ArticleModel>> getGeneralNews({required String link}) async {

    try {
      Response response = await dio.get(link);

      Map<String,dynamic> jasonData = response.data;

      List<dynamic> articles = jasonData['articles'];

      List<ArticleModel> datas = convertor(articles);

      return datas;
    } catch (e) {
      return [];
    }


  }







}

List<ArticleModel> convertor(List<dynamic> articles){
  List<ArticleModel> data = [];

  for(var art in articles){
    ArticleModel a = new ArticleModel(image: art['urlToImage'], title: art['title'], subTitle: art['description'], url: art['url']);
    data.add(a);

  }

  return data;
}