import 'package:flutter/material.dart';

import '../models/news_item_model.dart';
import 'news_item.dart';

class NewsListView extends StatelessWidget {
  final List<NewsItemModel> news;

  const NewsListView({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: news.length,
        (context, index) {
          return NewsItem(newsItemModel: news[index]);
        },
      ),
    );
  }
}
