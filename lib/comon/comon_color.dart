import 'package:flutter/cupertino.dart';

class ComonColor {
  static const backgroundField = Color(0xffF3F5F7);
  static const purple2 = Color(0xff5252C7);
  static const black2 = Color(0xff606060);
  static const primary = Color(0xffF1F1FE);
  static const secondary = Color(0xff828282);
  static const grey = Color(0xffBDBDBD);
  static const greyBackground = Color(0xffF6F7F9);
  static const textPrimary = Color(0xff242424);
}

class GradientColor {
  static final gradient = LinearGradient(colors: [
    const Color(0xff5151C6).withOpacity(1),
    const Color(0xff888BF4).withOpacity(1),
  ]);
  static const gradient1 =
      LinearGradient(colors: [Color(0xff888BF4), Color(0xff5151C6)]);
}
