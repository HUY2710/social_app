import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/data/data_collection.dart';
import 'package:social_app/data/data_topic.dart';
import 'package:social_app/widgets/collection_widget.dart';
import 'package:social_app/widgets/small_appbar.dart';
import 'package:social_app/widgets/topic_widget.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SmallAppbar(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Topic",
                    style: ComonStyle.titleDiscover,
                  ),
                  Text(
                    "View more",
                    style: ComonStyle.blueDiscover,
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 100,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: dataTopic
                        .map((e) => Expanded(child: TopicWidget(topic: e)))
                        .toList()),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Collection",
                    style: ComonStyle.titleDiscover,
                  ),
                  Text(
                    "View more",
                    style: ComonStyle.blueDiscover,
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: dataCollection
                        .map((e) =>
                            Expanded(child: CollectionWidget(collection: e)))
                        .toList()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Collection",
                    style: ComonStyle.titleDiscover,
                  ),
                  Text(
                    "View more",
                    style: ComonStyle.blueDiscover,
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: dataCollection
                        .map((e) =>
                            Expanded(child: CollectionWidget(collection: e)))
                        .toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
