import 'package:flutter/material.dart';
import 'package:social_app/constants/const_image.dart';

class BigAppbar extends StatelessWidget {
  const BigAppbar({super.key, this.body, this.title, this.isAvatar = false});

  final Widget? body;
  final Widget? title;
  final bool isAvatar;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 200,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Stack(
            children: [
              ClipPath(
                clipper: CustomShape(),
                child: Container(
                  alignment: Alignment.topCenter,
                  width: size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ConstImage.bigAppbar),
                          fit: BoxFit.fill)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: title,
                  ),
                ),
              ),
              isAvatar
                  ? Positioned(
                      right: 0,
                      left: 0,
                      bottom: 20,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          ConstImage.bruno,
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : const SizedBox()
            ],
          ),
        ),
        body: body,
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
