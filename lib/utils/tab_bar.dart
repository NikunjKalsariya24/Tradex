import 'package:flutter/material.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/custom_text.dart';

class CustomTabBar extends StatelessWidget {
  final String? name;
  final double? fontSize;

  const CustomTabBar({Key? key, this.fontSize, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: CustomText(
        name: name,
        fontSize: fontSize,
        color: AppColor.colorWhiteText,
      ),
    );
  }
}
