import 'package:flutter/material.dart';
import 'package:screen_f/utils/app_colors.dart';

class CustomText extends StatelessWidget {
  final String? name;
  final Color? color;
  final double? fontSize;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final TextStyle? style;
  final String? fontFamily;

  const CustomText(
      {this.name,
      this.color,
      this.fontSize,
      this.textAlign,
      this.fontStyle,
      this.fontFamily,
      this.style,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign ?? TextAlign.start,
      name ?? "",
      style: TextStyle(

          color: color ?? AppColor.colorBlackColor,
          fontSize: fontSize,
          fontStyle: fontStyle,
          fontFamily: fontFamily),
    );
  }
}
