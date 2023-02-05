import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/constants/auto_lock_keyboard.dart';
import 'package:social_app/constants/const_image.dart';
import 'package:social_app/router/router.dart';
import 'package:social_app/widgets/button_widget.dart';
import 'package:social_app/widgets/gradient_text_widget.dart';
import 'package:social_app/widgets/input_user.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
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
                          GradientText("VERIFICATION",
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
                                "A message with verification code was sent to your email.",
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
                            child: InputUser(
                              hintText: "Type verification code",
                              validator: (value) {
                                if (value != null && value.length < 6) {
                                  return "Invalid code";
                                }

                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Don't receive the code",
                            style: ComonStyle.styleBoarding.copyWith(
                                color: Colors.black,
                                fontSize: 18,
                                height: 24 / 18),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ButtonWidget(
                            textButton: "VERIFY",
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamed(
                                    context, Routes.newPasswordScreen);
                              }
                            },
                          ),
                          const SizedBox(
                            height: 66,
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
}
