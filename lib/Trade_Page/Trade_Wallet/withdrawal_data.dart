import 'package:flutter/material.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

class WithdrawalData extends StatelessWidget {

  String? withdrawalImageName;
  String? withdrawalName;

  WithdrawalData({this.withdrawalImageName,this.withdrawalName,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: EdgeInsets.only(top: 3.h),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.w),
            child: Image.asset(
              withdrawalImageName??"" ,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.w),
            child: CustomText(
                name: withdrawalName??"",
                color: AppColor.colorWhiteText,
                fontSize: 12.sp),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 6.w),
            child: Image.asset(ImageAssets.arrowRight),
          ),
        ],
      ),
    );
  }
}
