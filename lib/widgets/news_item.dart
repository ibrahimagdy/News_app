import 'package:flutter/material.dart';
import 'package:news_app/models/news_item_model.dart';

class NewsItem extends StatelessWidget {
  final NewsItemModel newsItemModel;

  const NewsItem({super.key, required this.newsItemModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(newsItemModel.image),
        ),
        Text(
          newsItemModel.title,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
        Text(
          newsItemModel.desc,
          style: const TextStyle(color: Colors.grey, fontSize: 15),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
