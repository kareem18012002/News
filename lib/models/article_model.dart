
class ArticleModel {
  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final String? content;

  ArticleModel({
    this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    this.content,
  });

  factory ArticleModel.fromJson(article)
  {
   return ArticleModel(
     title: article["title"],
     description: article["description"],
     url: article["url"],
     urlToImage: article["urlToImage"],
   );
  }
}
