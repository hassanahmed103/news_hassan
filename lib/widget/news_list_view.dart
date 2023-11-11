import 'package:flutter/material.dart';

import '../model/artical_model.dart';
import 'news_title.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.articles,
  });

  final List<ArticalModel> articles;

  @override
  Widget build(BuildContext context) {
    //بتبني الشاشه item item
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (contex, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: NewsTitle(
          articalModel: articles[index],
        ),
      );
    }));
  }
}
