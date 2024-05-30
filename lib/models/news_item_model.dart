class NewsItemModel {
  String? image;
  String title;
  String? desc;

  NewsItemModel({required this.image, required this.title, required this.desc});

  factory NewsItemModel.fromJson(json) {
    return NewsItemModel(
      image: json['urlToImage'],
      title: json['title'],
      desc: json['description'],
    );
  }
}
