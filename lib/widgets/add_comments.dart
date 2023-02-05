import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/constants/const_image.dart';

class AddComments extends StatelessWidget {
  AddComments({super.key, required this.comment, required this.addComment});
  TextEditingController comment = TextEditingController();
  VoidCallback addComment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: CircleAvatar(
              radius: 15,
              child: Image.asset(
                ConstImage.bruno,
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: TextFormField(
              controller: comment,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: "Add a comment"),
            ),
          ),
          GestureDetector(
            onTap: addComment,
            child: Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  gradient: GradientColor.gradient,
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: Text(
                  "POST",
                  textAlign: TextAlign.center,
                  style: ComonStyle.blueDiscover.copyWith(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
