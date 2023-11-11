import 'package:flutter/material.dart';

import '../model/artical_model.dart';
import '../servies/news_srives.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.categroy,
  });
  final String categroy;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticalModel> articales = [];
var future;
  @override
  void initState() {
    super.initState();
    GetNews();
  }

  Future<void> GetNews() async {
    future = await NewsSrvieice().getNews(categroy: 'general');
    /*setState(() {});*/
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: future ,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('oops  was an error, try later'),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
