import 'package:flutter/material.dart';
import 'package:social_app/constants/const_image.dart';
import 'package:social_app/router/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, Routes.boardingScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ConstImage.splashBackground,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Center(
            child: Image.asset(
              ConstImage.centerSplash,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
