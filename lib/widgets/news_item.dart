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
          child: Image.network(newsItemModel.image ??
                "https://play-lh.googleusercontent.com/ajZF_-7yzY1t9l0zqSkw6qqvg7wUNmn8y3GvRMkQPwnve4MjVdtjg-tpvCHmaU1Kcfur")),
        Text(
          newsItemModel.title,
          style: const TextStyle(color: Colors.black, fontSize: 18),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          newsItemModel.desc ?? "",
          style: const TextStyle(color: Colors.grey, fontSize: 15),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
