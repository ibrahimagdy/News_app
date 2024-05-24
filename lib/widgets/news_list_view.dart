import 'package:flutter/material.dart';
import '../models/news_item_model.dart';
import 'news_item.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key});

  List<NewsItemModel> news = [
    NewsItemModel(
      image: "assets/images/default_news.png",
      title: "This is the title of news",
      desc: "This is the description of the news",
    ),
    NewsItemModel(
      image: "assets/images/default_news.png",
      title: "This is the title of news",
      desc: "This is the description of the news",
    ),
    NewsItemModel(
      image: "assets/images/default_news.png",
      title: "This is the title of news",
      desc: "This is the description of the news",
    ),
    NewsItemModel(
      image: "assets/images/default_news.png",
      title: "This is the title of news",
      desc: "This is the description of the news",
    ),
    NewsItemModel(
      image: "assets/images/default_news.png",
      title: "This is the title of news",
      desc: "This is the description of the news",
    ),
  ];

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
