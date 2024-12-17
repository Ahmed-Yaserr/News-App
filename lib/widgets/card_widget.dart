import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class card_widget extends StatelessWidget {
  const card_widget({super.key,required this.c_m});

 final CategoryModel c_m;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          width: 150,
          height: 95,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(7),
            image: DecorationImage(image: AssetImage(c_m.image),
              fit: BoxFit.fill,
            ),


          ),
          child: Text(c_m.categoryName,
            style: TextStyle(
                color: Colors.orange
            ),),
        ),
      );
  }
}
