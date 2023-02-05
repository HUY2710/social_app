import 'package:flutter/material.dart';
import 'package:social_app/constants/const_image.dart';
import 'package:social_app/data/data_commets.dart';
import 'package:social_app/models/post/comments.dart';
import 'package:social_app/widgets/add_comments.dart';
import 'package:social_app/widgets/detail_post.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  TextEditingController comment = TextEditingController();
  void addComment() {
    setState(() {
      dataComments1.add(Comments(
          idPost: 1,
          avatar: ConstImage.bruno,
          name: "Manh Huy",
          timeComments: "0",
          titleComments: comment.text,
          loveComments: 1));
      comment.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: const [
            Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: 24,
            ),
            Icon(
              Icons.add_circle_outline,
              color: Colors.black,
            ),
            SizedBox(
              width: 24,
            ),
            Icon(
              Icons.logout_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        bottomSheet: AddComments(comment: comment, addComment: addComment),
        body: const SingleChildScrollView(child: DetailPost()),
      ),
    );
  }
}
