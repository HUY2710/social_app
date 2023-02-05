import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';
import 'package:social_app/models/activity/activity.dart';

class ActivityWidget extends StatefulWidget {
  const ActivityWidget({super.key, required this.activity});

  final Activity activity;

  @override
  State<ActivityWidget> createState() => _ActivityWidgetState();
}

class _ActivityWidgetState extends State<ActivityWidget> {
  bool _isClick = true;
  bool _isFollow = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width - 28;
    return GestureDetector(
      onTap: () {
        setState(() {
          _isClick = false;
        });
      },
      child: Container(
        width: width,
        color: _isClick ? ComonColor.primary : ComonColor.greyBackground,
        margin: const EdgeInsets.only(bottom: 16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Image.asset(
                        widget.activity.avatar,
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.activity.name,
                      style: ComonStyle.titleCategory
                          .copyWith(color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(widget.activity.title,
                        style: ComonStyle.styleBoarding
                            .copyWith(color: Colors.black, letterSpacing: 0)),
                    const SizedBox(
                      height: 11,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.activity.time,
                              style: ComonStyle.timeCmt,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: widget.activity.isFollow
                      ? GestureDetector(
                          onTap: () {
                            _isFollow = true;
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: ComonColor.purple2),
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Center(
                                  child: _isFollow
                                      ? Text(
                                          "Followed",
                                          style: ComonStyle.titlePost.copyWith(
                                              color: ComonColor.purple2),
                                          textAlign: TextAlign.center,
                                        )
                                      : Text(
                                          "Follow",
                                          style: ComonStyle.titlePost.copyWith(
                                              color: ComonColor.purple2),
                                          textAlign: TextAlign.center,
                                        )),
                            ),
                          ),
                        )
                      : Image.asset(
                          widget.activity.image,
                          width: 81,
                          height: 54,
                          fit: BoxFit.cover,
                        ))
            ],
          ),
        ),
      ),
    );
  }
}
