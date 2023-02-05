import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/constants/auto_lock_keyboard.dart';
import 'package:social_app/constants/const_image.dart';
import 'package:social_app/router/router.dart';
import 'package:social_app/widgets/button_widget.dart';
import 'package:social_app/widgets/gradient_text_widget.dart';
import 'package:social_app/widgets/input_user.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  bool _obscureText = false;
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
                  height: 292,
                  fit: BoxFit.fill,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 222,
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
                            height: 24,
                          ),
                          GradientText("SET NEW PASSWORD",
                              gradient: GradientColor.gradient),
                          const SizedBox(
                            height: 14,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ComonColor.primary,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 24),
                              child: Text(
                                "Type your new password and comfirm it",
                                style: ComonStyle.subtitleLogin,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
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
                                    obscureText: !_obscureText,
                                    hintText: "Password",
                                    suffixIcon: _showPassword(),
                                    controller: passwordController,
                                    validator: (value) {
                                      if (value != null && value.length < 6) {
                                        return "Password must be at least 6 characters.";
                                      }

                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  InputUser(
                                    obscureText: !_obscureText,
                                    hintText: "Confirm Password",
                                    suffixIcon: _showPassword(),
                                    controller: confirmController,
                                    validator: (value) {
                                      if (value != null && value.length < 6) {
                                        return "Password must be at least 6 characters.";
                                      }

                                      return null;
                                    },
                                  ),
                                ],
                              )),
                          const SizedBox(
                            height: 40,
                          ),
                          ButtonWidget(
                            textButton: "Reset Password",
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushReplacementNamed(
                                    context, Routes.loginScreen);
                              }
                            },
                          ),
                          const SizedBox(
                            height: 53,
                          ),
                          Image.asset(ConstImage.footIteam),
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
