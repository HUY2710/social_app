import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/models/post/post.dart';
import 'package:social_app/router/router.dart';

class DemoPost extends StatefulWidget {
  const DemoPost({super.key, required this.post});

  final Post post;

  @override
  State<DemoPost> createState() => _DemoPostState();
}

class _DemoPostState extends State<DemoPost> {
  bool _isLove = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width - 40;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(4, 4)),
        ],
      ),
      margin: const EdgeInsets.only(bottom: 20),
      width: width,
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
                        widget.post.avatar,
                        width: 30,
                        height: 30,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.post.name,
                        style: ComonStyle.styleHintText,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    widget.post.time,
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
              widget.post.title,
              style: ComonStyle.titlePost,
            ),
          ),
          Image.asset(
            widget.post.image,
            width: width,
            height: 224,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Text(_isLove
                            ? "${widget.post.loves + 1}"
                            : "${widget.post.loves}")
                      ],
                    ),
                    const SizedBox(
                      width: 18,
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
                        Text("${widget.post.comments}")
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.viewScreen,
                        arguments: Post(
                          id: widget.post.id,
                          avatar: widget.post.avatar,
                          name: widget.post.name,
                          time: widget.post.time,
                          image: widget.post.image,
                          title: widget.post.title,
                          subtitle: widget.post.subtitle,
                          views: widget.post.views,
                          comments: widget.post.comments,
                          loves: widget.post.loves,
                        ));
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: ComonColor.purple2,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("View all")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
