import 'package:flutter/material.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';

import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

class AllSettings extends StatelessWidget {


  String? settingName;
  String? language;
  final void Function()? onTap;


AllSettings({this.settingName,this.language,this.onTap,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w,top: 3.h),
          child: GestureDetector(onTap: onTap,
            child: CustomText(
              name: settingName,
              color: AppColor.colorWhiteText,
              fontSize: 16.sp,
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 3.h),
          child: CustomText(
            name: language,
            fontSize: 10.sp,
            color: AppColor.colorWhiteText,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 3.h,right: 5.w),
          child: SizedBox(height: 3.h,width: 3.w,child: Image.asset(ImageAssets.arrowRight)),
        ),
      ],
    );
  }
}
