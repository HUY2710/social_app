import 'package:flutter/material.dart';
import 'package:social_app/router/router.dart';
import 'package:social_app/screens/boarding/boarding_screen.dart';
import 'package:social_app/screens/main/activity/activity_screen.dart';
import 'package:social_app/screens/main/discover/discover_scree.dart';
import 'package:social_app/screens/main/home/home_screen.dart';
import 'package:social_app/screens/main/home/view_screen.dart';
import 'package:social_app/screens/main/main_app.dart';
import 'package:social_app/screens/welcome/category_screen.dart';
import 'package:social_app/screens/login/forgot_password.dart';
import 'package:social_app/screens/login/login_screen.dart';
import 'package:social_app/screens/login/new_password_screen.dart';
import 'package:social_app/screens/login/signup_screen.dart';
import 'package:social_app/screens/login/verify_screen.dart';
import 'package:social_app/screens/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => const SplashScreen(),
        Routes.boardingScreen: (context) => const BoardingScreen(),
        Routes.loginScreen: (context) => const LoginScreen(),
        Routes.signupScreen: (context) => const SignupScreen(),
        Routes.forgotScreen: (context) => const ForgotScreen(),
        Routes.verifyScreen: (context) => const VerifyScreen(),
        Routes.newPasswordScreen: (context) => const NewPasswordScreen(),
        Routes.categoryScreen: (context) => const CategoryScreen(),
        Routes.mainApp: (context) => const MainApp(),
        Routes.homeScreen: (context) => const HomeScreen(),
        Routes.discoverScreen: (context) => const DiscoverScreen(),
        Routes.viewScreen: (context) => const ViewScreen(),
        Routes.activityScreen: (context) => const ActivityScreen(),
      },
    );
  }
}
