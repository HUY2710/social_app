import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.textButton, this.onTap});

  final String textButton;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: GradientColor.gradient),
        child: Center(
            child: Text(
          textButton,
          style: ComonStyle.styleBoarding.copyWith(
              fontSize: 16,
              height: 24 / 16,
              fontWeight: FontWeight.w700,
              wordSpacing: 0.6),
        )),
      ),
    );
  }
}
