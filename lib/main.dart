import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/services/news_api.dart';

void main() {
  NewsApi(Dio()).getNews();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}