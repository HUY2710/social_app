import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/constants/const_image.dart';
import 'package:social_app/data/data_category.dart';
import 'package:social_app/router/router.dart';
import 'package:social_app/widgets/big_appbar.dart';
import 'package:social_app/widgets/button_widget.dart';
import 'package:social_app/widgets/category_widget.dart';
import 'package:social_app/widgets/gradient_text_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BigAppbar(
      title: Image.asset(ConstImage.welcome),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: dataCategory
                      .map((e) => CategoryWidget(category: e))
                      .toList()),
              const SizedBox(
                height: 40,
              ),
              GradientText(
                "SHARE - INSPIRE - CONNECT",
                gradient: GradientColor.gradient,
                style: ComonStyle.titleLogin.copyWith(letterSpacing: 2),
              ),
              const SizedBox(
                height: 37,
              ),
              ButtonWidget(
                textButton: "EXPLORE NOW",
                onTap: () {
                  Navigator.pushNamed(context, Routes.mainApp);
                },
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
