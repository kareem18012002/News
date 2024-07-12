import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/views/web_view.dart';
import 'package:news_app/widgets/nav_to.dart';

class ArticleItem extends StatelessWidget {
  final ArticleModel articleModel;
  const ArticleItem({
    super.key,
    required this.articleModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: GestureDetector(
        onTap: () => navigateTo(context, WebView(url: articleModel.url)),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: CachedNetworkImage(
                  imageUrl: articleModel.urlToImage ?? "",
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                          child: CircularProgressIndicator(
                              value: downloadProgress.progress)),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
            Text(
              articleModel.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
            ),
            Text(
              articleModel.description ?? "",
              style: const TextStyle(
                  fontSize: 15,
                  overflow: TextOverflow.ellipsis,
                  color: Colors.grey),
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
