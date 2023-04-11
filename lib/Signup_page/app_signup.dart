import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_f/Signup_page/app_controller.dart';
import 'package:screen_f/Signup_page/app_country_picker.dart';
import 'package:screen_f/Signup_page/app_textfield.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

import '../utils/routes_all.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.colorBlackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 20.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageAssets.signupImagePath),
                    fit: BoxFit.fill),
              ),
            ),
            Container(
              height: 80.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.colorSliderColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.w),
                  topRight: Radius.circular(8.w),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: Center(
                        child: CustomText(
                            name: AppString.appCreate,
                            color: AppColor.colorWhiteLogin,
                            fontSize: 20.sp),
                      ),
                    ),
                    CustomTextField(
                      name: AppString.appName,
                      controller: AppController.textFieldName,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    const CountryPicker(),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomTextField(
                      name: AppString.appContact,
                      controller: AppController.textFieldNumber,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomTextField(
                      name: AppString.appACard,
                      controller: AppController.textFieldADDarCardNumber,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomTextField(
                      name: AppString.appEmail,
                      controller: AppController.textFieldEmail,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomTextField(
                      name: AppString.appPassword,
                      controller: AppController.textFieldPassword,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomTextField(
                      name: AppString.appConformPassword,
                      controller: AppController.textFieldReEnterPassword,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.signInPage);
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
                            "Sign Up",
                            style: TextStyle(fontSize: 20.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        CustomText(
                          name: AppString.appAccount,
                          color: AppColor.colorWhiteText,
                          fontSize: 10.sp,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.signInPage);
                          },
                          child: CustomText(
                            name: AppString.appLogin,
                            color: AppColor.colorToggleColor,
                            fontSize: 10.sp,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
