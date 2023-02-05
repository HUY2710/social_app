import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/constants/const_image.dart';
import 'package:social_app/data/data_post.dart';
import 'package:social_app/models/post/post.dart';
import 'package:social_app/screens/main/activity/activity_screen.dart';
import 'package:social_app/screens/main/discover/discover_scree.dart';
import 'package:social_app/screens/main/home/home_screen.dart';
import 'package:social_app/screens/main/profile/profile_screen.dart';
import 'package:social_app/widgets/add_post.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _screen = 0;
  bool _isSelect1 = true;
  bool _isSelect2 = false;
  bool _isSelect3 = false;
  bool _isSelect4 = false;
  TextEditingController controller = TextEditingController();
  TextEditingController subcontroller = TextEditingController();

  void onPost() {
    setState(() {
      dataPost.add(Post(
          id: 1,
          avatar: ConstImage.bruno,
          name: "Manh Huy",
          time: "just now",
          image: ConstImage.imagePost1,
          title: controller.text,
          subtitle: subcontroller.text,
          views: 0,
          comments: 0,
          loves: 0));
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: const BoxDecoration(
            shape: BoxShape.circle, gradient: GradientColor.gradient1),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AddPost(
                    controller: controller,
                    subcontroller: subcontroller,
                    onPost: onPost));
          },
          elevation: 0,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  shape: BoxShape.rectangle,
                  color: Colors.white),
              child: const Icon(
                Icons.add,
                color: ComonColor.purple2,
              )),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: IconTheme(
            data: const IconThemeData(color: Colors.black),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        _screen = 0;
                        _isSelect1 = true;
                        _isSelect2 = false;
                        _isSelect3 = false;
                        _isSelect4 = false;
                      });
                    },
                    icon: Icon(
                      _isSelect1 ? Icons.home : Icons.home_outlined,
                      color: _isSelect1 ? ComonColor.purple2 : ComonColor.grey,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _screen = 1;
                        _isSelect1 = false;
                        _isSelect2 = true;
                        _isSelect3 = false;
                        _isSelect4 = false;
                      });
                    },
                    icon: Icon(
                      _isSelect2 ? Icons.widgets : Icons.widgets_outlined,
                      color: _isSelect2 ? ComonColor.purple2 : ComonColor.grey,
                    )),
                const SizedBox(
                  width: 24,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _screen = 2;
                        _isSelect1 = false;
                        _isSelect2 = false;
                        _isSelect3 = true;
                        _isSelect4 = false;
                      });
                    },
                    icon: Icon(
                      _isSelect3
                          ? Icons.notifications
                          : Icons.notifications_outlined,
                      color: _isSelect3 ? ComonColor.purple2 : ComonColor.grey,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _screen = 3;
                        _isSelect1 = false;
                        _isSelect2 = false;
                        _isSelect3 = false;
                        _isSelect4 = true;
                      });
                    },
                    icon: Icon(_isSelect4 ? Icons.person : Icons.person_outline,
                        color:
                            _isSelect4 ? ComonColor.purple2 : ComonColor.grey)),
              ],
            )),
      ),
      body: IndexedStack(index: _screen, children: const [
        HomeScreen(),
        DiscoverScreen(),
        ActivityScreen(),
        ProfileScreen()
      ]),
    );
  }
}
