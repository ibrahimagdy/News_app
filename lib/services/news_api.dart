import 'package:dio/dio.dart';
import 'package:news_app/models/news_item_model.dart';

class NewsApi {
  final Dio dio;

  NewsApi(this.dio);

  Future<List<NewsItemModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=032b6dbff905412a99b6694feb9b063a&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<NewsItemModel> articleList = [];

      for (var article in articles) {
        NewsItemModel newsItemModel = NewsItemModel.fromJson(article);
        articleList.add(newsItemModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
