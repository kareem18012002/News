
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

   final List<CategoryModel> categorys = const [
    CategoryModel(name: 'Business', image: "assets/technology.jpeg"),
    CategoryModel(name: 'Entertainment', image: "assets/entertaiment.avif"),
    CategoryModel(name: 'General', image: "assets/general.avif"),
    CategoryModel(name: 'Health', image: "assets/health.avif"),
    CategoryModel(name: 'Science', image: "assets/science.avif"),
    CategoryModel(name: 'Sports', image: "assets/sports.avif"),
    CategoryModel(name: 'Technology', image: "assets/technology.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) =>
              CategoryItem(category: categorys[index]),
          itemCount: categorys.length),
    );
  }
}

