import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_f/utils/all_menu.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:screen_f/utils/routes_all.dart';
import 'package:sizer/sizer.dart';

class TradeGridScreen extends StatelessWidget {
  const TradeGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorBlackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.w, top: 3.h),
                  child: Image.asset(ImageAssets.arrowLeft),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.w, top: 3.h),
                  child: CustomText(
                      name: AppString.menu,
                      fontSize: 25.sp,
                      color: AppColor.colorWhiteText,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),


            AllMenu(
              imageName: ImageAssets.taskCenter,
              name: AppString.taskCenter,
            ),
            AllMenu(
              imageName: ImageAssets.reward,
              name: AppString.reward,
            ),
            AllMenu(
              imageName: ImageAssets.referral,
              name: AppString.referralId,
            ),
            AllMenu(
              imageName: ImageAssets.giftCard,
              name: AppString.giftCard,
            ),
            AllMenu(
              imageName: ImageAssets.myGift,
              name: AppString.myGift,
            ),
            AllMenu(
              imageName: ImageAssets.notification,
              name: AppString.notifications,
            ),
            AllMenu(
              imageName: ImageAssets.security,
              name: AppString.security,
            ),
            AllMenu(
              imageName: ImageAssets.privacySettings,
              name: AppString.privacySettings,
            ),
            AllMenu(
              onTap: () {
                Get.toNamed(Routes.settingPage);
              },
              imageName: ImageAssets.settings,
              name: AppString.setting,
            ),
            AllMenu(
              imageName: ImageAssets.help,
              name: AppString.help,
            ),
            AllMenu(
              imageName: ImageAssets.share,
              name: AppString.shareApp,
            ),

            //const Spacer(),
            Padding(
              padding: EdgeInsets.all(1.w),
              child: CustomText(
                  name: AppString.notificationApp,
                  fontSize: 8.sp,
                  color: AppColor.colorWhiteText,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
