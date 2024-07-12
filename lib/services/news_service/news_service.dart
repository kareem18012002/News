import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
        "https://newsapi.org/v2/everything?q=$category&apiKey=3c3deb5143a0432189e676543d420691&language=ar",
      );
      var news = response.data;
      List<dynamic> articles = news['articles'];
      List<ArticleModel> articlesListModel = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesListModel.add(articleModel);
      }
      return articlesListModel;
    } catch (e) {
      print("the error is    $e");
      return [];
    }
  }
}
