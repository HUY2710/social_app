import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/data/data_post.dart';
import 'package:social_app/widgets/demo_post.dart';
import 'package:social_app/widgets/small_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSelect1 = true;
  bool _isSelect2 = false;
  bool _isSelect3 = false;

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SmallAppbar(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isSelect1 = true;
                      _isSelect2 = false;
                      _isSelect3 = false;
                      _index = 0;
                    });
                  },
                  child: Container(
                      color: _isSelect1 ? ComonColor.primary : Colors.white,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "Popular",
                          textAlign: TextAlign.center,
                          style: ComonStyle.styleHintText.copyWith(
                              color: _isSelect1
                                  ? ComonColor.purple2
                                  : ComonColor.grey,
                              letterSpacing: -0.1,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isSelect1 = false;
                      _isSelect2 = true;
                      _isSelect3 = false;
                      _index = 1;
                    });
                  },
                  child: Container(
                      color: _isSelect2 ? ComonColor.primary : Colors.white,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "Trending",
                          textAlign: TextAlign.center,
                          style: ComonStyle.styleHintText.copyWith(
                              color: _isSelect2
                                  ? ComonColor.purple2
                                  : ComonColor.grey,
                              letterSpacing: -0.1,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isSelect1 = false;
                      _isSelect2 = false;
                      _isSelect3 = true;
                      _index = 2;
                    });
                  },
                  child: Container(
                      color: _isSelect3 ? ComonColor.primary : Colors.white,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "Following",
                          textAlign: TextAlign.center,
                          style: ComonStyle.styleHintText.copyWith(
                              color: _isSelect3
                                  ? ComonColor.purple2
                                  : ComonColor.grey,
                              letterSpacing: -0.1,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            IndexedStack(index: _index, children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                    shrinkWrap: true,
                    children: dataPost.map((e) => DemoPost(post: e)).toList()),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                    shrinkWrap: true,
                    children:
                        dataTrending.map((e) => DemoPost(post: e)).toList()),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                    shrinkWrap: true,
                    children:
                        dataFollowing.map((e) => DemoPost(post: e)).toList()),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
