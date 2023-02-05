import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/models/collection/collection.dart';

class CollectionWidget extends StatelessWidget {
  const CollectionWidget({super.key, required this.collection});

  final Collection collection;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  collection.image,
                  width: 158,
                  height: 158,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                top: 60,
                child: Text(
                  collection.title,
                  style: ComonStyle.titleCategory.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      height: 17 / 14),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            collection.count,
            style: ComonStyle.styleHintText
                .copyWith(color: const Color(0xff828282), fontSize: 14),
          )
        ],
      ),
    );
  }
}
