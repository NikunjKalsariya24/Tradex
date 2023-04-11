import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_slider.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils/routes_all.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late PageController myPage;
    myPage = PageController(initialPage: 0);
    return Scaffold(
      backgroundColor: AppColor.colorBlackColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Expanded(
                child: PageView(
                  controller: myPage,
                  physics: const NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    _splashScreenFirst(myPage),
                    _splashScreenActive(myPage),
                    _splashScreenEnd(myPage),
                  ],
                ),
              ),
            ],
          ),
          SmoothPageIndicator(
            controller: myPage,
            count: 3,
            axisDirection: Axis.horizontal,
            effect: const SlideEffect(
                spacing: 8.0,
                radius: 4.0,
                dotWidth: 8.0,
                dotHeight: 8.0,
                paintStyle: PaintingStyle.fill,
                strokeWidth: 1,
                dotColor: AppColor.colorIndicationColor,
                activeDotColor: AppColor.colorToggleColor),
          )
        ],
      ),
    );
  }
}

Widget _splashScreenFirst(PageController myPage) {
  return Column(children: [
    Container(
      height: 40.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(ImageAssets.splashScreenBGImagePath),
            fit: BoxFit.fill),
      ),
    ),

    SizedBox(
      height: 10.h,
      width: double.infinity,
    ),

    SizedBox(
        height: 20.h,
        width: double.infinity,
        child: Column(
          children: [
            CustomText(
              name: AppString.welcomeTonIndia,
              color: AppColor.colorYellowFull,
              fontSize: 20.sp,
            ),
            SizedBox(
              height: 3.h,
              width: double.infinity,
            ),
            Center(
                child: CustomText(
              name: AppString.appTradeX,
              color: AppColor.colorToggleColor,
              fontSize: 30.sp,
            ))
          ],
        )),

    SizedBox(
      height: 10.h,
      width: double.infinity,
    ),
    SliderButton(
      action: (controller) {
        controller.success();
        myPage.animateToPage(1,
            duration: const Duration(
              milliseconds: 300,
            ),
            curve: Curves.easeIn);

      },
    ),

    // SizedBox(height: 10.h),
  ]);
}

Widget _splashScreenActive(PageController myPage) {
  return Column(
    children: [
      Container(
        height: 40.h,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageAssets.splashScreenActiveBGImagePath),
              fit: BoxFit.fill),
        ),
      ),
      SizedBox(
        height: 10.h,
        width: double.infinity,
      ),
      SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Center(
              child: CustomText(
                name: AppString.appIndiaPlateForm,
                color: AppColor.colorWhiteText,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 3.h,
              width: double.infinity,
            ),
            Center(
              child: CustomText(

                name: AppString.appTradeType,
                fontSize: 20.sp,
                color: AppColor.colorToggleColor,
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 10.h,
        width: double.infinity,
      ),
      SliderButton(
        action: (controller) {
          controller.success();
          myPage.animateToPage(2,
              duration: const Duration(
                milliseconds: 300,
              ),
              curve: Curves.easeIn);
        },
      ),
    ],
  );
}

Widget _splashScreenEnd(PageController myPage) {
  return Column(
    children: [
      Container(
        height: 50.h,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageAssets.splashScreenEndBGImagePath),
              fit: BoxFit.fill),
        ),
      ),
      SizedBox(
        height: 5.h,
        width: double.infinity,
      ),
      SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Center(
              child: CustomText(
                  name: AppString.appHelper,
                  color: AppColor.colorWhiteText,
                  fontSize: 20.sp),
            ),
            SizedBox(
              height: 2.h,
              width: double.infinity,
            ),
            CustomText(
              name: AppString.appUpTo,
              color: AppColor.colorToggleColor,
              fontSize: 30.sp,
            )
          ],
        ),
      ),
      SizedBox(
        height: 5.h,
        width: double.infinity,
      ),
      SliderButton(
        name: AppString.appSignup,
        action: (controller) async {
          controller.success();

          await Future.delayed(
            const Duration(seconds: 3),
          );

          Get.toNamed(Routes.signInPage);
        },
      ),
    ],
  );
}
