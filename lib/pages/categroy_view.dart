import 'package:flutter/material.dart';
import 'package:news_hassan/widget/news_list_view_builder.dart';

class CategroyView extends StatelessWidget {
   CategroyView({super.key, required this.categroy});
final String categroy;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(categroy: categroy)
        ],
      ),
    );
  }
}
