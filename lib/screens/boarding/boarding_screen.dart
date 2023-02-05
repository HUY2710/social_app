import 'package:flutter/material.dart';
import 'package:social_app/constants/const_image.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/router/router.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              ConstImage.boardingBackground,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Positioned(
              right: 0,
              left: 0,
              child: Column(
                children: [
                  const SizedBox(
                    height: 124,
                  ),
                  Image.asset(ConstImage.centerSplash),
                  const SizedBox(
                    height: 35,
                  ),
                  Text("SHARE - INSPIRE - CONNECT",
                      style: ComonStyle.styleBoarding),
                  const SizedBox(
                    height: 45,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.loginScreen);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xffD0D0D0).withOpacity(0.3)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 14),
                        child: Text(
                          "GET STARTED",
                          style: ComonStyle.styleBoarding.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.6,
                              height: 24 / 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
