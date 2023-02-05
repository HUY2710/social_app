import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/models/category/category.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width - 70;
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          category.image,
          width: width / 2,
          fit: BoxFit.fitWidth,
        ),
      ),
      Positioned(
        bottom: 22,
        left: 0,
        right: 0,
        child: Text(
          category.title,
          style: ComonStyle.titleCategory,
          textAlign: TextAlign.center,
        ),
      )
    ]);
  }
}
