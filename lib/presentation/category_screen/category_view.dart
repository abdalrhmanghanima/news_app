import 'package:flutter/material.dart';
import 'package:news/presentation/category_screen/widget/category_card.dart';
import '../../data/model/category_model.dart';
typedef OnCategoryClick = void Function(CategoryModel category);
class CategoryView extends StatelessWidget {
  OnCategoryClick onCategoryClick;
   CategoryView(this.onCategoryClick,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Morning'),
            Text('Here is Some News For You'),
            Expanded(
              child: ListView.separated(itemBuilder: (context, index) {
                var category = CategoryModel.categories[index];
                return InkWell(
                    onTap: (){
                      onCategoryClick(category);
                    },
                    child: CategoryCard(model: category,index: index,));
              }, separatorBuilder: (context, index) => SizedBox(height: 10,), itemCount: CategoryModel.categories.length),
            )
          ],
        ),
      ),
    );
  }
}
