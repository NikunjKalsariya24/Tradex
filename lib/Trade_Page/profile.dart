import 'package:flutter/material.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 8.h,
                margin: EdgeInsets.only(left: 10.w, top: 2.h),
                child: CustomText(
                    name: AppString.appTrad,
                    fontFamily: AppString.fontFamily,
                    fontSize: 30.sp,
                    color: AppColor.colorWhiteText)),
            Container(
              margin: EdgeInsets.only(left: 30.w),
              child:
                  Icon(Icons.search, color: AppColor.colorWhiteText, size: 8.w),
            ),
            Icon(Icons.person, color: AppColor.colorWhiteText, size: 8.w)
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
        SizedBox(
            height: 15.h,
            width: double.infinity,
            child: Image.asset(
              ImageAssets.tradeHomeBgImagePath,
              fit: BoxFit.fill,
            ),
        ),
      ],
    );
  }
}
