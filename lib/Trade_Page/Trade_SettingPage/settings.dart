import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_f/utils/allsetting.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:screen_f/utils/routes_all.dart';
import 'package:sizer/sizer.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.colorBlackColor,
        body: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 1.h),
            child: Container(
                alignment: Alignment.topLeft,
                child: Image.asset(ImageAssets.arrowLeft,
                    height: 5.h, width: 12.w, fit: BoxFit.fill)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 1.h),
            child: Container(
                alignment: Alignment.topLeft,
                child: CustomText(
                    name: AppString.setting,
                    fontSize: 25.sp,
                    color: AppColor.colorWhiteText,
                    style: const TextStyle(fontWeight: FontWeight.bold))),
          ),
          AllSettings(
              onTap: () {
                Get.toNamed(Routes.withdrawalPage);
              },
              settingName: AppString.cryptoWithDraWal),
          AllSettings(settingName: AppString.pushNotification),
          AllSettings(
              settingName: AppString.language, language: AppString.english),
          AllSettings(settingName: AppString.currency, language: AppString.usd),
          AllSettings(
              settingName: AppString.paymentCurrency, language: AppString.usd),
          AllSettings(settingName: AppString.certificate),
          AllSettings(settingName: AppString.terms),
          AllSettings(settingName: AppString.privacyPolicy),
          AllSettings(
            settingName: AppString.clear,
            language: AppString.version,
          ),
          AllSettings(settingName: AppString.colorPreference),
          AllSettings(settingName: AppString.aboutUs),
          AllSettings(settingName: AppString.styleSettings),
        ]),
      ),
    );
  }
}
