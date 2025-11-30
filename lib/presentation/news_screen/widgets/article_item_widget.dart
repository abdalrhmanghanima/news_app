import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news/data/model/article_model.dart';

class ArticleItemWidget extends StatelessWidget {
  const ArticleItemWidget({super.key, required this.article});
final ArticleModel article ;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey)),
      child: Column(
        spacing: 10,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              height: 300,
              imageUrl: article.image??'',
              placeholder: (context, url) => Center(child: CircularProgressIndicator(strokeAlign: 1,)),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
         Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(article.title??''),
             Text(article.description??''),
           ],
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(article.author??''),
             Text(DateFormat('h:mm a').format(article.publishAT??DateTime.now())),
           ],
         )
        ],
      ),
    );
  }
}
