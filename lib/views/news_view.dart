import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_listview.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(fontSize: 21, color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(fontSize: 21, color: Colors.amber),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CategoryListView(),
          ),
          NewsListViewBuilder(category: 'general',),
        ],
      ),
    );
  }
}


