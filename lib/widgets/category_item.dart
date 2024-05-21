import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 150,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage(categoryModel.image), fit: BoxFit.cover),
      ),
      child: Center(
        child: Text(
          categoryModel.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
