import 'package:flutter/material.dart';
import 'package:social_app/widgets/button_widget.dart';

class AddPost extends StatelessWidget {
  AddPost(
      {super.key,
      required this.controller,
      required this.onPost,
      required this.subcontroller});

  TextEditingController controller = TextEditingController();
  TextEditingController subcontroller = TextEditingController();

  VoidCallback onPost;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("ADD NEW POST"),
      content: SizedBox(
        height: 230,
        child: Column(
          children: [
            TextFormField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: "Type title",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLines: 5,
              controller: subcontroller,
              decoration: InputDecoration(
                  hintText: "Type subtitle",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
          ],
        ),
      ),
      actions: [ButtonWidget(textButton: "Add", onTap: onPost)],
    );
  }
}
