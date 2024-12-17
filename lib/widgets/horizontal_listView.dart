import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import '../views/dynamic_category_view.dart';
import 'card_widget.dart';

class horizontal_listView extends StatelessWidget {
   horizontal_listView({super.key});


  final List<CategoryModel> categories = [

    CategoryModel(image: 'assets/sports.avif', categoryName: 'sports'),
    CategoryModel(image: 'assets/entertaiment.avif', categoryName: 'entertainment'),
    CategoryModel(image: 'assets/business.avif', categoryName: 'business'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'science'),

  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context){
              return dynamic_category_view(m: categories[index],);}));

            },
            child: card_widget(c_m: categories[index]),
          );
        },),

    );
  }
}

