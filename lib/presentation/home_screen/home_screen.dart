import 'package:flutter/material.dart';
import 'package:news/presentation/common/widgets/custom_scaffold.dart';
import 'package:news/presentation/home_screen/widget/category_widget.dart';

import '../../data/model/category_model.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName='/homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Home',
      actions: [Icon(Icons.search)],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Good Morning'),
          Text('Here is Some News For You'),
          Expanded(
            child: ListView.separated(itemBuilder: (context, index) {
              var category = Category.categories[index];
              return CategoryWidget(category: category,index: index,);
            }, separatorBuilder: (context, index) => SizedBox(height: 10,), itemCount: Category.categories.length),
          )
        ],
      ),
    );
  }
}
