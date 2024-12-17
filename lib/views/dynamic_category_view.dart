import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/card_widget.dart';
import 'package:news_app/widgets/horizontal_listView.dart';
import 'package:news_app/widgets/vertical_listView.dart';
import 'package:news_app/widgets/vertical_listView_builder.dart';

import '../models/article_model.dart';

class dynamic_category_view extends StatelessWidget {
  const dynamic_category_view({super.key, required this.m});


final CategoryModel m;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('News',
                style: TextStyle(
                    color: Colors.black
                ),),

              const Text('Cloud',
                style: TextStyle(
                    color: Colors.orangeAccent
                ),)
            ],
          ),

        ),




        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              vertical_listView_builder(linkk: 'https://newsapi.org/v2/top-headlines?apiKey=f957987790d24869ae3148ed9124bfa2&category=${m.categoryName}',)

            ],
          ),
        )
    );
  }
}
