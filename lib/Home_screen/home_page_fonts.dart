import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/routes_all.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_string.dart';
import '../utils/custom_text.dart';

class HomePageFonts extends StatelessWidget {
  const HomePageFonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorBlackColor,
      body: Column(
        children: [
          Container(
            height: 50.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageAssets.homePageImagePath),
                  fit: BoxFit.fill),
            ),
          ),
          SizedBox(height: 5.h, width: double.infinity),
          CustomText(
            name: AppString.appWelcomeTrade,
            color: AppColor.colorToggleColor,
            fontFamily: AppString.fontFamily,
            fontSize: 20.sp,
          ),
          SizedBox(height: 3.h, width: double.infinity),
          CustomText(
            name: AppString.appExchangeSteps,
            color: AppColor.colorWhiteText,
            fontFamily: AppString.fontFamily,
            fontSize: 20.sp,
          ),
          SizedBox(height: 3.h, width: double.infinity),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.tradePage);
            },
            child: Container(
              height: 6.h,
              width: 6.h,
              decoration: const BoxDecoration(
                  color: AppColor.colorToggleColor, shape: BoxShape.circle),
              child: const Center(child: Icon(Icons.arrow_forward_ios)),
            ),
          )
        ],
      ),
    );
  }
}
