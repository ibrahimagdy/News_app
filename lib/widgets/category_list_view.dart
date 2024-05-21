import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_item.dart';

import '../models/category_model.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(image: "assets/images/business.jpg", title: "Business"),
    CategoryModel(
        image: "assets/images/entertaiment.jpg", title: "Entertainment"),
    CategoryModel(image: "assets/images/general.jpg", title: "General"),
    CategoryModel(image: "assets/images/health.jpg", title: "Health"),
    CategoryModel(image: "assets/images/science.jpg", title: "Science"),
    CategoryModel(image: "assets/images/sports.jpg", title: "Sports"),
    CategoryModel(image: "assets/images/technology.jpg", title: "Technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(categoryModel: categories[index]);
        },
      ),
    );
  }
}
