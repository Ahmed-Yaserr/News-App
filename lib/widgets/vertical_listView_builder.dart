import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/NewsServices.dart';
import 'package:news_app/widgets/vertical_listView.dart';

class vertical_listView_builder extends StatefulWidget {
  const vertical_listView_builder({super.key,required this.linkk});

  final String linkk;

  @override
  State<vertical_listView_builder> createState() => _State();
}

class _State extends State<vertical_listView_builder> {
  var dataa ;
//  bool isloading = true;

  @override
  void initState() {
    dataa = NewsServices(Dio()).getGeneralNews(link: widget.linkk);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: dataa,
        builder: (context , snapshot) {
          if(snapshot.hasData) {
           return vertical_listView(articles: snapshot.data!);
          }
          else if(snapshot.hasError){
            return SliverFillRemaining(child: Text('there was an error...try again'),);
          }
          else {
           return SliverFillRemaining(child: Center(child: CircularProgressIndicator()),);
          }
        }
    );
  }
}


//isloading? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()),)
//   : dataa.isNotEmpty
//? vertical_listView(articles: dataa,)
//    : SliverToBoxAdapter(child: Text('there was an error...try again'),);