import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/constants/auto_lock_keyboard.dart';
import 'package:social_app/constants/const_image.dart';
import 'package:social_app/models/user/account_user.dart';
import 'package:social_app/router/router.dart';
import 'package:social_app/widgets/button_widget.dart';

import 'package:social_app/widgets/input_user.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  bool _obscureText = false;
  final GlobalKey<FormState> _formKey = GlobalKey();

  String? _validateName(value) {
    if (value.toString().isEmpty) {
      return "Please enter your name";
    }
    return null;
  }

  String? _validateEmail(value) {
    if (value == Null) {
      return "Enter Something";
    }
    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return "Please enter a valid email address";
    }

    return null;
  }

  String? _validatePassword(value) {
    if (value != null && value.length < 6) {
      return "Password must be at least 6 characters.";
    }

    return null;
  }

  void _checkValidate() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, Routes.loginScreen,
          arguments: AccountUser(
              nameController.text, emailController.text, passController.text));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: KeyboardDismiss(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset(
                  ConstImage.welcomeBackground,
                  width: double.infinity,
                  height: 312,
                  fit: BoxFit.fill,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 272,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(28),
                              topRight: Radius.circular(28))),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          Form(
                              key: _formKey,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              child: Column(
                                children: [
                                  InputUser(
                                    hintText: "Full name",
                                    controller: nameController,
                                    validator: _validateName,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  InputUser(
                                    hintText: "Email",
                                    controller: emailController,
                                    validator: _validateEmail,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  InputUser(
                                    obscureText: _obscureText,
                                    hintText: "Password",
                                    suffixIcon: _showPassword(),
                                    controller: passController,
                                    validator: _validatePassword,
                                  ),
                                ],
                              )),
                          const SizedBox(
                            height: 40,
                          ),
                          ButtonWidget(
                            textButton: "SIGN IN",
                            onTap: _checkValidate,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have account? ",
                                style: ComonStyle.styleHintText,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "SIGN IN",
                                  style: ComonStyle.styleHintText
                                      .copyWith(color: ComonColor.purple2),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconButton _showPassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
      icon: _obscureText
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
    );
  }
}
