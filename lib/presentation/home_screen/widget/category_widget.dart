import 'package:flutter/material.dart';
import 'package:news/data/model/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category, required this.index});
final Category category;
final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
       alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(category.lightImage??'',fit: BoxFit.cover,)),
        Positioned(
          right:index.isEven?10:null,
          left: index.isEven?null:10,
          child: Container(
            width: 100,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(24)),
            child:Row(
              children: [
                Spacer(),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
            ),
          ),
        )
      ],
    );
  }
}
