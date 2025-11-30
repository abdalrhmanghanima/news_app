import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/presentation/common/widgets/custom_scaffold.dart';
import 'package:news/presentation/news_screen/news_sources.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    ApiManager.getInstance().getNewsSources("sports");
    return CustomScaffold(
      title: 'sport',
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search))
      ],
      body: FutureBuilder(future: ApiManager.getInstance().getNewsSources("sports"), builder: (context, snapshot) {
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
