import 'package:flutter/material.dart';
import 'package:news/api/model/response/articles/Articles.dart';
import 'package:news/presentation/news_screen/widgets/news_card.dart';


class ArticlesListWidget extends StatelessWidget {
  List<Article>articles;
   ArticlesListWidget(this.articles,{super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        var article = articles[index];
        return ArticleItemWidget(articleModel: article);
      },
      separatorBuilder: (context, index) => SizedBox(height: 15),
      itemCount:articles.length,
    );
  }
}
