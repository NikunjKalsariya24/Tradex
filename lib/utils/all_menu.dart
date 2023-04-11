import 'package:flutter/material.dart';

import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';

import 'package:screen_f/utils/custom_text.dart';

import 'package:sizer/sizer.dart';

class AllMenu extends StatelessWidget {


  String? imageName;
  String? name;

  final void Function()? onTap;

  AllMenu({this.imageName, this.name, this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.h, left: 6.w),
            child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(imageName ?? "")),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.h, left: 3.w),
            child: CustomText(
              name: name,
              fontSize: 22.sp,
              color: AppColor.colorWhiteText,
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 6.w, top: 3.h),
            child: Image.asset(ImageAssets.arrowRight),
          ),
        ],
      ),
    );
  }
}
