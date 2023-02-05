import 'package:flutter/material.dart';

import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/constants/auto_lock_keyboard.dart';

class SmallAppbar extends StatelessWidget {
  const SmallAppbar({
    super.key,
    this.body,
  });

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: KeyboardDismiss(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Row(
                children: [
                  Expanded(
                      flex: 8,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: ComonColor.backgroundField,
                            borderRadius: BorderRadius.circular(30)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              hintStyle: ComonStyle.styleHintText,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              icon: const Padding(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 20),
                                child: Icon(
                                  Icons.search,
                                  color: Color(0xff200E32),
                                ),
                              )),
                        ),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ComonColor.backgroundField),
                        child: const Padding(
                            padding: EdgeInsets.all(9),
                            child: Icon(
                              Icons.send,
                              color: Colors.black,
                            )),
                      ))
                ],
              ),
            ),
          ),
          body: body,
        ),
      ),
    );
  }
}
