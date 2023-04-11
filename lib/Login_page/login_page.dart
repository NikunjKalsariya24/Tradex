import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_f/Signup_page/app_controller.dart';
import 'package:screen_f/Signup_page/app_textfield.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_colors.dart';
import '../utils/routes_all.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorBlackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 30.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageAssets.logInImagePath),
                    fit: BoxFit.fill),
              ),
            ),
            Container(
              height: 70.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.w),
                  topRight: Radius.circular(8.w),
                ),
                color: AppColor.colorSliderColor,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5.h),
                    child: Center(
                      child: CustomText(
                        name: AppString.appLogin,
                        color: AppColor.colorWhiteText,
                        fontSize: 30.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h, width: double.infinity),
                  CustomTextField(
                      name: AppString.appEmail,
                      controller: AppController.textFieldEmail),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomTextField(
                      name: AppString.appPassword,
                      controller: AppController.textFieldPassword),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(right: 5.w),
                    child: const CustomText(
                      name: AppString.appForgetPassword,
                      color: AppColor.colorWhiteText,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.homePagePage);
                    },
                    child: Container(
                      height: 5.h,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 10.w, right: 10.w),
                      decoration: BoxDecoration(
                        color: AppColor.colorToggleColor,
                        borderRadius: BorderRadius.circular(5.w),
                      ),
                      child: Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(fontSize: 20.sp),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      CustomText(
                        name: AppString.appNewUser,
                        color: AppColor.colorWhiteText,
                        fontSize: 12.sp,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.signUpPage);
                        },
                        child: CustomText(
                          name: AppString.appSignUPUser,
                          color: AppColor.colorToggleColor,
                          fontSize: 12.sp,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
