import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_api.dart';

import '../models/news_item_model.dart';
import 'news_item.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  bool isLoading = true;
  List<NewsItemModel> news = [];

  getArticles() async {
    news = await NewsApi(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    getArticles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: news.length,
              (context, index) {
                return NewsItem(newsItemModel: news[index]);
              },
            ),
          );
  }
}
