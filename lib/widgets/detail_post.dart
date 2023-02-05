import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/data/data_commets.dart';
import 'package:social_app/models/post/post.dart';
import 'package:social_app/widgets/comments_widget.dart';

class DetailPost extends StatefulWidget {
  const DetailPost({super.key});

  @override
  State<DetailPost> createState() => _DetailPostState();
}

class _DetailPostState extends State<DetailPost> {
  bool _isLove = false;
  @override
  Widget build(BuildContext context) {
    final post = ModalRoute.of(context)!.settings.arguments as Post;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 8,
                  child: Row(
                    children: [
                      Image.asset(
                        post.avatar,
                        width: 30,
                        height: 30,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        post.name,
                        style: ComonStyle.styleHintText,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    post.time,
                    style: ComonStyle.blueDiscover
                        .copyWith(color: ComonColor.secondary),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              post.title,
              style: ComonStyle.titlePost,
            ),
          ),
          Image.asset(
            post.image,
            width: double.infinity,
            height: 224,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                _isLove = !_isLove;
                              });
                            },
                            child: Icon(
                              _isLove ? Icons.favorite : Icons.favorite_outline,
                              color: _isLove ? Colors.red : ComonColor.purple2,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(_isLove ? "${post.loves + 1}" : "${post.loves}")
                      ],
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.commentDots,
                      color: ComonColor.purple2,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("${post.comments}")
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.remove_red_eye_outlined,
                      color: ComonColor.purple2,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("${post.views}")
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  post.subtitle,
                  textAlign: TextAlign.start,
                  style: ComonStyle.blueDiscover
                      .copyWith(color: ComonColor.secondary),
                ),
                const SizedBox(
                  height: 30,
                ),
                ListView(
                    shrinkWrap: true,
                    children: dataComments1
                        .map((e) => CommentsWidget(comments: e))
                        .toList()),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
