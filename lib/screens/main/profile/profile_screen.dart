import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/constants/const_icon.dart';
import 'package:social_app/constants/const_image.dart';
import 'package:social_app/widgets/big_appbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _index = 0;
  Color color1 = ComonColor.primary;
  Color color2 = ComonColor.backgroundField;
  Color colorText1 = ComonColor.purple2;
  Color colorText2 = ComonColor.grey;

  Widget _collection(String title, String stack) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              ConstImage.collection1,
              height: 158,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 60,
            bottom: 0,
            left: 0,
            right: 0,
            child: Text(
              stack,
              style: ComonStyle.collection,
              textAlign: TextAlign.center,
            ),
          ),
        ]),
        Text(
          title,
          style: ComonStyle.blueDiscover.copyWith(color: ComonColor.secondary),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BigAppbar(
      isAvatar: true,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 185,
              ),
              Text(
                "Manh Huy",
                style: ComonStyle.titleLogin,
                textAlign: TextAlign.center,
              ),
              Text(
                "Ha Noi, Viet Nam",
                style: ComonStyle.styleHintText,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                color: ComonColor.greyBackground,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "220",
                                  style: ComonStyle.titleCategory
                                      .copyWith(color: ComonColor.textPrimary)),
                              TextSpan(
                                  text: " Followers",
                                  style: ComonStyle.titleCategory
                                      .copyWith(color: ComonColor.grey))
                            ])),
                      ),
                      Expanded(
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "150",
                                  style: ComonStyle.titleCategory
                                      .copyWith(color: ComonColor.textPrimary)),
                              TextSpan(
                                  text: " Following",
                                  style: ComonStyle.titleCategory
                                      .copyWith(color: ComonColor.grey))
                            ])),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(ConstIcon.listIcon),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 0;
                              color1 = ComonColor.primary;
                              color2 = ComonColor.backgroundField;
                              colorText1 = ComonColor.purple2;
                              colorText2 = ComonColor.grey;
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: color1,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 33, vertical: 10),
                                child: Text(
                                  "200 shots",
                                  style: ComonStyle.titleCategory
                                      .copyWith(color: colorText1),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    ),
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 1;
                              color2 = ComonColor.primary;
                              color1 = ComonColor.backgroundField;
                              colorText2 = ComonColor.purple2;
                              colorText1 = ComonColor.grey;
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: color2,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 33, vertical: 10),
                                child: Text(
                                  "10 Collections",
                                  style: ComonStyle.titleCategory
                                      .copyWith(color: colorText2),
                                  textAlign: TextAlign.center,
                                ),
                              ))),
                    )
                  ],
                ),
              ),
              IndexedStack(
                index: _index,
                children: [
                  _shots(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              _collection("25 shots", "YOUR LIKES"),
                              _collection("25 shots", "PORTRAIT PHOTOGRAPHY"),
                              _collection("25 shots", "DOWNLOAD"),
                              _collection("25 shots", "PORTRAIT PHOTOGRAPHY"),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              _collection("25 shots", "FAVORITE"),
                              _collection("25 shots", "PORTRAIT PHOTOGRAPHY"),
                              _collection("25 shots", "DOWNLOAD"),
                              _collection("25 shots", "PORTRAIT PHOTOGRAPHY"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _shots() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                _shotImage(ConstImage.shot1),
                const SizedBox(
                  height: 10,
                ),
                _shotImage(ConstImage.shot2),
                const SizedBox(
                  height: 10,
                ),
                _shotImage(ConstImage.shot3),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                _shotImage(ConstImage.shot4),
                const SizedBox(
                  height: 10,
                ),
                _shotImage(ConstImage.shot6),
                const SizedBox(
                  height: 10,
                ),
                _shotImage(ConstImage.shot5),
                const SizedBox(
                  height: 10,
                ),
                _shotImage(ConstImage.shot7),
              ],
            ),
          )
        ],
      ),
    );
  }

  ClipRRect _shotImage(String image) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10), child: Image.asset(image));
  }
}
