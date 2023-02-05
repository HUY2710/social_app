import 'package:flutter/material.dart';
import 'package:social_app/comon/comon_color.dart';
import 'package:social_app/comon/comon_style.dart';

class BottomSheetSettings extends StatefulWidget {
  const BottomSheetSettings({super.key});

  @override
  State<BottomSheetSettings> createState() => _BottomSheetSettingsState();
}

class _BottomSheetSettingsState extends State<BottomSheetSettings> {
  bool isSwitched1 = true;
  bool isSwitched2 = false;
  bool isSwitched3 = true;
  bool isSwitched4 = false;
  bool isSwitched5 = true;

  void toggleSwitch1(bool value) {
    if (isSwitched1 == false) {
      setState(() {
        isSwitched1 = true;
      });
    } else {
      setState(() {
        isSwitched1 = false;
      });
    }
  }

  void toggleSwitch2(bool value) {
    if (isSwitched2 == false) {
      setState(() {
        isSwitched2 = true;
      });
    } else {
      setState(() {
        isSwitched2 = false;
      });
    }
  }

  void toggleSwitch3(bool value) {
    if (isSwitched3 == false) {
      setState(() {
        isSwitched3 = true;
      });
    } else {
      setState(() {
        isSwitched3 = false;
      });
    }
  }

  void toggleSwitch4(bool value) {
    if (isSwitched4 == false) {
      setState(() {
        isSwitched4 = true;
      });
    } else {
      setState(() {
        isSwitched4 = false;
      });
    }
  }

  void toggleSwitch5(bool value) {
    if (isSwitched5 == false) {
      setState(() {
        isSwitched5 = true;
      });
    } else {
      setState(() {
        isSwitched5 = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          "Activity Feed",
          style: ComonStyle.titleDiscover,
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          color: ComonColor.greyBackground,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Collections",
                  style: ComonStyle.styleHintText,
                ),
                Switch(
                  onChanged: toggleSwitch1,
                  value: isSwitched1,
                  activeColor: Colors.white,
                  activeTrackColor: ComonColor.purple2,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: ComonColor.grey,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          color: ComonColor.greyBackground,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Comment Likes",
                  style: ComonStyle.styleHintText,
                ),
                Switch(
                  onChanged: toggleSwitch2,
                  value: isSwitched2,
                  activeColor: Colors.white,
                  activeTrackColor: ComonColor.purple2,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: ComonColor.grey,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          color: ComonColor.greyBackground,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Followers",
                  style: ComonStyle.styleHintText,
                ),
                Switch(
                  onChanged: toggleSwitch3,
                  value: isSwitched3,
                  activeColor: Colors.white,
                  activeTrackColor: ComonColor.purple2,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: ComonColor.grey,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          color: ComonColor.greyBackground,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Likes",
                  style: ComonStyle.styleHintText,
                ),
                Switch(
                  onChanged: toggleSwitch4,
                  value: isSwitched4,
                  activeColor: Colors.white,
                  activeTrackColor: ComonColor.purple2,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: ComonColor.grey,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          color: ComonColor.greyBackground,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Donate",
                  style: ComonStyle.styleHintText,
                ),
                Switch(
                  onChanged: toggleSwitch5,
                  value: isSwitched5,
                  activeColor: Colors.white,
                  activeTrackColor: ComonColor.purple2,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: ComonColor.grey,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
