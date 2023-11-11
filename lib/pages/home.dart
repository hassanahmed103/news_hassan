import 'package:flutter/material.dart';
import '../widget/categroy_list_view.dart';
import '../widget/news_list_view_builder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'News',
                  style: TextStyle(color: Colors.black),
                ),
                Text(' Cluod', style: TextStyle(color: Colors.orange))
              ],
            )),
        body: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategroyListView()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            NewsListViewBuilder(categroy: 'general'),
            /*   SliverToBoxAdapter(child: newsListView()),*/
          ],
        ));
  }
}


