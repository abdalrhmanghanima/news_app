import 'package:flutter/material.dart';
import 'package:news/api/model/response/articles/Articles.dart';
import 'package:news/core/resources/app_const/app_color.dart';
import 'package:news/presentation/news_screen/news_web_view/web_view_screen.dart';

void showArticlePreview(BuildContext context, Article article) {
  final isDark = Theme.of(context).brightness == Brightness.dark;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (_) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: isDark ? AppColor.white : AppColor.black,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.50,
            minChildSize: 0.50,
            maxChildSize: 0.75,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(article.urlToImage ?? ""),
                    ),

                    SizedBox(height: 16),

                    Text(
                      article.title ?? "",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.black : Colors.white,
                      ),
                    ),

                    SizedBox(height: 12),
                    Text(
                      article.description ?? "",
                      style: TextStyle(
                        fontSize: 16,
                        color: isDark ? Colors.black87 : Colors.white70,
                      ),
                    ),

                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ArticleWebView(url: article.url!),
                            ),
                          );
                        },
                        child: Text("View Full Article"),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      );
    },
  );
}
