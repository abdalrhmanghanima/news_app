import 'package:flutter/material.dart';
import 'package:news/data/model/article_model.dart';
import 'package:news/presentation/common/widgets/custom_scaffold.dart';
import 'package:news/presentation/news_screen/widgets/article_item_widget.dart';

class NewsScreen extends StatelessWidget {
  static const String routeName = '/newsScreen';
  NewsScreen({super.key});
  List<String> tabList = [
    'Alahly',
    'Zamalek',
    'Nile',
    'on',
    'Dmc',
    'Alahly',
    'Zamalek',
    'Nile',
    'on',
    'Dmc',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabList.length,
      child: CustomScaffold(
        title: 'sport',
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TabBar(
                labelStyle: TextStyle(fontSize: 22),
                unselectedLabelStyle: TextStyle(fontSize: 18),
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                tabs: tabList.map((tab) => Tab(text: tab)).toList(),
              ),
              Expanded(
                child: TabBarView(
                  children: tabList.map((tab) {
                    var filterList = ArticleModel.articles.where(
                      (article) => article.source == tab.toLowerCase()).toList();
                    return ListView.separated(
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 15),
                      itemCount: filterList.length,
                      itemBuilder: (context, index) {
                        var article = filterList[index];
                        return ArticleItemWidget(article: article);
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
