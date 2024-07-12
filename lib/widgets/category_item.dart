import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/catergory_view.dart';
import 'package:news_app/views/news_view.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryView(category: category.name),)),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin:
            const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              category.image,
              fit: BoxFit.contain,
            ),
            Text(
              category.name,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
