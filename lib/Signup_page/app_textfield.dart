import 'package:flutter/material.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/Signup_page/app_controller.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {


  final String ?name;
  final double ?fontSize;
  final TextEditingController? controller;


  const CustomTextField({Key? key,this.name,this.fontSize,this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 5.w),
            child: CustomText(
              name: name,
              color: AppColor.colorYellowFull,
              textAlign: TextAlign.right,
              fontSize: fontSize??15.sp,
            )),
        Container(margin: EdgeInsets.only(left: 5.w,right: 5.w),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.h),color: AppColor.colorBlackGradiant),
          child: TextField(
            controller: controller??AppController.textFieldName,
            textAlign: TextAlign.left,


          ),
        ),
      ],
    );
  }
}
