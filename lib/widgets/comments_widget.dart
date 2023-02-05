import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/models/post/comments.dart';

class CommentsWidget extends StatefulWidget {
  const CommentsWidget({super.key, required this.comments});
  final Comments comments;

  @override
  State<CommentsWidget> createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget> {
  bool _isLike = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width - 28;
    return Container(
      width: width,
      color: ComonColor.greyBackground,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 15,
                    child: Image.asset(
                      widget.comments.avatar,
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.comments.name,
                    style:
                        ComonStyle.titleCategory.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(widget.comments.titleComments,
                      style: ComonStyle.styleBoarding
                          .copyWith(color: Colors.black, letterSpacing: 0)),
                  const SizedBox(
                    height: 11,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.comments.timeComments,
                            style: ComonStyle.timeCmt,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isLike = !_isLike;
                                });
                              },
                              child: Text(
                                "Like",
                                style: ComonStyle.timeCmt.copyWith(
                                    color: _isLike
                                        ? ComonColor.purple2
                                        : Colors.black,
                                    fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            _isLike
                                ? "${widget.comments.loveComments + 1}"
                                : "${widget.comments.loveComments}",
                            style: ComonStyle.timeCmt,
                          ),
                          Icon(
                            Icons.favorite,
                            color: _isLike ? Colors.red : ComonColor.purple2,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
