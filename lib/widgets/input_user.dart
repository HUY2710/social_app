import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_style.dart';

class InputUser extends StatelessWidget {
  const InputUser({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.suffixIcon,
    this.validator,
  });

  final String hintText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        labelText: hintText,
        hintStyle: ComonStyle.styleHintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(16)),
        contentPadding: const EdgeInsets.only(left: 20, top: 13, bottom: 13),
        suffixIcon: suffixIcon,
      ),
      validator: validator,
    );
  }
}
