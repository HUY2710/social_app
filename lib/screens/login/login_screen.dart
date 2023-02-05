import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/constants/auto_lock_keyboard.dart';
import 'package:social_app/constants/const_icon.dart';
import 'package:social_app/constants/const_image.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/models/user/account_user.dart';
import 'package:social_app/router/router.dart';
import 'package:social_app/widgets/button_widget.dart';
import 'package:social_app/widgets/input_user.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  bool _obscureText = true;

  final GlobalKey<FormState> _formKey = GlobalKey();
  bool _isEmail = false;
  bool _isPassword = false;

  void _checkValidate() {
    if (_formKey.currentState!.validate()) {
      if (_isEmail && _isPassword) {
        Navigator.pushNamed(context, Routes.categoryScreen);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(_showErrorAccount());
      }
    }
  }

  SnackBar _showErrorAccount() {
    return SnackBar(
      content: Container(
        height: 60,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 241, 47, 33).withOpacity(0.8),
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: Text(
              "Email hoặc mật khẩu không đúng",
              style: ComonStyle.styleHintText,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    final accountUser =
        ModalRoute.of(context)!.settings.arguments as AccountUser?;
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
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              key: _formKey,
                              child: Column(
                                children: [
                                  InputUser(
                                    hintText: "Email",
                                    controller: emailController,
                                    validator: (value) {
                                      if (value.toString().isEmpty) {
                                        return "Enter Something";
                                      }
                                      if (!RegExp(r'\S+@\S+\.\S+')
                                          .hasMatch(value!)) {
                                        return "Please enter a valid email address";
                                      }
                                      if (value == "manhhuy2710@gmail.com" ||
                                          value == accountUser?.email) {
                                        _isEmail = true;
                                      }

                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  InputUser(
                                    obscureText: _obscureText,
                                    hintText: "Password",
                                    controller: passController,
                                    suffixIcon: _showPassword(),
                                    validator: (value) {
                                      if (value != null && value.length < 6) {
                                        return " Password must be at least 6 characters.";
                                      }
                                      if (value == "123456" ||
                                          value == accountUser?.password) {
                                        _isPassword = true;
                                      }

                                      return null;
                                    },
                                  ),
                                ],
                              )),
                          const SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Routes.forgotScreen);
                            },
                            child: Text(
                              "FORGOT PASSWORD",
                              style: ComonStyle.styleBoarding
                                  .copyWith(color: ComonColor.purple2),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ButtonWidget(
                            textButton: "Login",
                            onTap: _checkValidate,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text("or LOG IN by",
                              style: ComonStyle.styleBoarding.copyWith(
                                color: ComonColor.black2,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(ConstIcon.google),
                              const SizedBox(
                                width: 20,
                              ),
                              Image.asset(ConstIcon.facebook)
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have account? ",
                                style: ComonStyle.styleHintText,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.signupScreen);
                                },
                                child: Text(
                                  "SIGN UP",
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
          ? const Icon(Icons.visibility_off)
          : const Icon(Icons.visibility),
    );
  }
}
