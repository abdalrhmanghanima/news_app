import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/data/model/category_model.dart';
import 'package:news/presentation/news_screen/news_sources.dart';

class NewsScreen extends StatelessWidget {
  CategoryModel category;
  NewsScreen(this.category,{super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FutureBuilder(future: ApiManager.getInstance().getNewsSources(category.id??''), builder: (context, snapshot) {
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
        }
        if(snapshot.hasError){
          return Center(child: Text("Error"),);
        }
        var response=snapshot.data;
        return NewsSourcesWidget(response?.sources??[]);
      },),
    );
  }
}
