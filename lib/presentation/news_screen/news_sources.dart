import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/presentation/news_screen/articles_list_widget.dart';
import '../../api/model/response/sources/Sources.dart';


class NewsSourcesWidget extends StatefulWidget {
  List<Source> tabs;
  NewsSourcesWidget(this.tabs, {super.key});

  @override
  State<NewsSourcesWidget> createState() => _NewsSourcesWidgetState();
}

class _NewsSourcesWidgetState extends State<NewsSourcesWidget> {
int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.tabs.length,
      child: Column(
        children: [
          TabBar(
            onTap: (index) {
              setState(() {
                selectedIndex=index;              });
            },
            labelStyle: TextStyle(fontSize: 22),
            unselectedLabelStyle: TextStyle(fontSize: 18),
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            tabs: widget.tabs.map((source) => Tab(text: source.name)).toList(),
          ),
          Expanded(
            child: FutureBuilder(future: ApiManager.getInstance().getArticles(widget.tabs[selectedIndex].id??""), builder: (context, snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(child: CircularProgressIndicator(),);
              }
              if(snapshot.hasError){
                return Center(child: Text("Something Went Wrong"),);
              }
              var response = snapshot.data;
              return ArticlesListWidget(response?.articles??[]);
            },),
            ),
        ],
      ),
    );
  }
}
