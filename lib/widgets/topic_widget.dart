import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/models/topic/topic.dart';

class TopicWidget extends StatelessWidget {
  const TopicWidget({
    super.key,
    required this.topic,
  });

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              topic.image,
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 42,
            child: Text(
              topic.title,
              style: ComonStyle.titleCategory.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w700, height: 17 / 14),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
