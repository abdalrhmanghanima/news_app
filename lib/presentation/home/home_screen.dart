import 'package:flutter/material.dart';
import 'package:news/presentation/category_screen/category_view.dart';
import 'package:news/presentation/news_screen/news_view.dart';
import '../../data/model/category_model.dart';
import '../common/widgets/custom_scaffold.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CategoryModel? categoryModel;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      onHomeClick,
      title: categoryModel==null? 'Home': categoryModel?.title??'',
      actions:categoryModel==null?null : [
        IconButton(onPressed: (){}, icon: Icon(Icons.search))
      ],
      body: categoryModel==null? CategoryView(onCategoryClick):NewsScreen(categoryModel!),
    );
  }

  void onCategoryClick(CategoryModel category){
    setState(() {
      categoryModel=category;
    });
  }
  void onHomeClick(){
    setState(() {
      categoryModel=null;
    });
  }
}
