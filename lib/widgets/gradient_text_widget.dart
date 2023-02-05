import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_style.dart';

class GradientText extends StatelessWidget {
  GradientText(this.text, {super.key, required this.gradient, this.style});

  final String text;

  final Gradient gradient;
  TextStyle? style = ComonStyle.titleLogin;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
