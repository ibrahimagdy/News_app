import 'package:dio/dio.dart';
import 'package:news_app/models/news_item_model.dart';

class NewsApi {
  final Dio dio;

  NewsApi(this.dio);

  Future<List<NewsItemModel>> getNews() async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=032b6dbff905412a99b6694feb9b063a');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<NewsItemModel> articleList = [];

      for (var article in articles) {
        NewsItemModel newsItemModel = NewsItemModel(
          image: article['urlToImage'],
          title: article['title'],
          desc: article['description'],
        );
        articleList.add(newsItemModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
