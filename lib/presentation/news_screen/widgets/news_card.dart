import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../api/model/response/articles/Articles.dart';

class ArticleItemWidget extends StatelessWidget {
  const ArticleItemWidget({super.key, required this.articleModel});
final Article articleModel ;
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
              imageUrl: articleModel.urlToImage??'',
              placeholder: (context, url) => Center(child: CircularProgressIndicator(strokeAlign: 1,)),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
         Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(articleModel.title??''),
             Text(articleModel.description??''),
           ],
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(articleModel.author??''),
             Text(
                 // DateFormat('h:mm a').format(article.publishAT??DateTime.now())
               articleModel.publishedAt??""
             ),
           ],
         )
        ],
      ),
    );
  }
}
